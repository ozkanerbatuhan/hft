--------------------------------------------------------------------------------
-- mlp_engine.vhd
-- SIMD Fully Unrolled Pipelined MAC Engine (192 DSPs, Pipelined Adder Tree)
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.framework_pkg.all;

entity mlp_engine is
    port (
        clk             : in  std_logic;
        rst             : in  std_logic;
        
        -- Control
        start           : in  std_logic;
        done            : out std_logic;
        busy            : out std_logic;
        
        -- Configuration
        cfg_layer1_out  : in  integer range 0 to 64;
        cfg_layer2_out  : in  integer range 0 to 64;
        cfg_layer3_out  : in  integer range 0 to 64;
        cfg_layer4_out  : in  integer range 0 to 64;
        
        -- Input Data (from Stream wrapper)
        input_wr_en     : in  std_logic;
        input_wr_addr   : in  unsigned(5 downto 0);
        input_wr_data   : in  signed(15 downto 0);
        
        -- Output Data (to AXI-Lite wrapper)
        output_rd_addr  : in  unsigned(5 downto 0);
        output_rd_data  : out signed(15 downto 0);
        
        -- BRAM Write Ports (from AXI-Lite wrapper)
        w_wr_en         : in  std_logic;
        w_wr_bram       : in  integer range 0 to 191;
        w_wr_addr       : in  std_logic_vector(6 downto 0);
        w_wr_data       : in  std_logic_vector(15 downto 0);
        
        b_wr_en         : in  std_logic;
        b_wr_bram       : in  integer range 0 to 2;
        b_wr_addr       : in  std_logic_vector(6 downto 0);
        b_wr_data       : in  std_logic_vector(15 downto 0);
        
        -- DEBUG_BEGIN (Makale icin osiloskop debug cikislari - sonra kaldirilacak)
        dbg_data_in_pulse  : out std_logic;  -- Veri PL'e girdi (1-clk pulse)
        dbg_layer1_done    : out std_logic;  -- Layer 1 bitti (1-clk pulse)
        dbg_layer2_done    : out std_logic;  -- Layer 2 bitti (1-clk pulse)
        dbg_layer3_done    : out std_logic;  -- Layer 3 bitti (1-clk pulse)
        dbg_layer4_done    : out std_logic   -- Layer 4 bitti = tum MLP bitti (1-clk pulse)
        -- DEBUG_END
    );
end entity mlp_engine;

architecture rtl of mlp_engine is

    -- Component Declaration for Weight BRAM
    component weight_bram is
        generic ( ADDR_WIDTH : integer := 7; DATA_WIDTH : integer := 16 );
        port (
            clk_a  : in  std_logic; we_a   : in  std_logic;
            addr_a : in  std_logic_vector(ADDR_WIDTH-1 downto 0); din_a  : in  std_logic_vector(DATA_WIDTH-1 downto 0); dout_a : out std_logic_vector(DATA_WIDTH-1 downto 0);
            clk_b  : in  std_logic; addr_b : in  std_logic_vector(ADDR_WIDTH-1 downto 0); dout_b : out std_logic_vector(DATA_WIDTH-1 downto 0)
        );
    end component;

    -- Ping-pong buffers
    type act_arr_t is array(0 to MAX_NEURONS-1) of signed(15 downto 0);
    signal buf_A : act_arr_t := (others => (others => '0'));
    signal buf_B : act_arr_t := (others => (others => '0'));
    
    attribute ram_style : string;
    attribute ram_style of buf_A : signal is "registers";
    attribute ram_style of buf_B : signal is "registers";
    
    -- BRAM Read signals
    signal w_rd_addr : std_logic_vector(6 downto 0) := (others => '0');
    type w_rd_data_t is array(0 to PARALLEL_NEURONS*MAX_INPUTS - 1) of std_logic_vector(15 downto 0);
    signal w_rd_data : w_rd_data_t;
    
    type b_rd_data_t is array(0 to PARALLEL_NEURONS-1) of std_logic_vector(15 downto 0);
    signal b_rd_data : b_rd_data_t;
    
    -- FSM and Pipeline Tokens
    type state_t is (ST_IDLE, ST_ISSUE, ST_DRAIN_LAYER);
    signal state : state_t := ST_IDLE;
    
    signal base_addr : integer range 0 to 127 := 0;
    signal layer_idx : integer range 1 to 4 := 1;
    signal iter_k    : integer range 0 to 127 := 0;
    -- max_iters removed
    
    type pipe_valid_t is array(0 to 12) of std_logic;
    type pipe_layer_t is array(0 to 12) of integer range 1 to 4;
    type pipe_iter_t  is array(0 to 12) of integer range 0 to 127;
    type pipe_bias_t  is array(0 to 12) of b_rd_data_t;
    
    signal valid_pipe : pipe_valid_t := (others => '0');
    signal layer_pipe : pipe_layer_t := (others => 1);
    signal iter_pipe  : pipe_iter_t  := (others => 0);
    signal bias_pipe  : pipe_bias_t  := (others => (others => (others => '0')));
    
    signal pipeline_empty : std_logic;

    ----------------------------------------------------------------------
    -- Boru hatti hizalama sabitleri
    --
    -- BIAS_STAGE : bias'in toplayici agacina eklendigi kademe.
    --              9 = DOGRULANDI (simulasyon T2/T3 artik ayni sonucu
    --              veriyor; eskiden 11 idi ve bias 2 iterasyon geriden
    --              geliyordu).
    --
    -- WB_STAGE   : geri yazma icin kullanilan token kademesi
    --              (valid / iter / layer). Deneysel olarak ayarlanacak.
    --              Olculen: 12 -> T3 = [10,11,12] ;  9 -> T3 = [4,0,0]
    --              Hedef: T1 = [1280,0,0] ve T2 = T3 = [1,2,3]
    ----------------------------------------------------------------------
    -- MUX_STAGE  : giris ping-pong mux'inin baktigi token kademesi.
    --              1 = DOGRU (eskiden 2 idi -> her katman yanlis buffer'dan
    --              okuyordu). in_reg, w_reg ile ayni kenarda yakalanir ve o
    --              verinin token'i 1. kademededir.
    --
    -- Ucu birlikte cevrim-dogru Python modelinde dogrulandi (sim_model.py):
    -- 60 rastgele model x 4 rastgele girdi = 240 vaka, altin referansla
    -- 240/240 bit-birebir eslesme. Eski degerlerle (11, 12, 2): 0/240.
    constant BIAS_STAGE : integer := 9;
    constant WB_STAGE   : integer := 11;
    constant MUX_STAGE  : integer := 1;

    -- Current Inputs
    signal current_inputs : act_arr_t;
    
    -- Pipeline Stages Data Types
    type mult_res_t   is array(0 to PARALLEL_NEURONS-1, 0 to 63) of signed(31 downto 0);
    type acc_arr_32_t is array(0 to PARALLEL_NEURONS-1, 0 to 31) of acc_t;
    type acc_arr_16_t is array(0 to PARALLEL_NEURONS-1, 0 to 15) of acc_t;
    type acc_arr_8_t  is array(0 to PARALLEL_NEURONS-1, 0 to 7)  of acc_t;
    type acc_arr_4_t  is array(0 to PARALLEL_NEURONS-1, 0 to 3)  of acc_t;
    type acc_arr_2_t  is array(0 to PARALLEL_NEURONS-1, 0 to 1)  of acc_t;
    type acc_arr_1_t  is array(0 to PARALLEL_NEURONS-1) of acc_t;
    
    signal mult_res : mult_res_t := (others => (others => (others => '0')));
    signal sum_l1   : acc_arr_32_t := (others => (others => (others => '0')));
    signal sum_l2   : acc_arr_16_t := (others => (others => (others => '0')));
    signal sum_l3   : acc_arr_8_t  := (others => (others => (others => '0')));
    signal sum_l4   : acc_arr_4_t  := (others => (others => (others => '0')));
    signal sum_l5   : acc_arr_2_t  := (others => (others => (others => '0')));
    signal sum_l6   : acc_arr_1_t  := (others => (others => '0'));
    
    -- Deep Pipelining Registers
    signal in_reg    : act_arr_t := (others => (others => '0'));
    type w_reg_t is array(0 to PARALLEL_NEURONS-1, 0 to 63) of signed(15 downto 0);
    signal w_reg     : w_reg_t := (others => (others => (others => '0')));
    signal mult_mreg : mult_res_t := (others => (others => (others => '0')));
    signal mult_preg : mult_res_t := (others => (others => (others => '0')));
    signal final_sum_reg : acc_arr_1_t := (others => (others => '0'));
    
    -- Writeback signals
    signal fsm_wr_en       : std_logic := '0';
    signal fsm_wr_target_B : std_logic := '0';
    type wb_data_t is array(0 to PARALLEL_NEURONS-1) of signed(15 downto 0);
    signal fsm_wb_data : wb_data_t;
    signal fsm_wb_base_idx : integer range 0 to 127;

    -- DEBUG_BEGIN
    signal dbg_data_in_reg    : std_logic := '0';
    signal dbg_layer1_done_reg: std_logic := '0';
    signal dbg_layer2_done_reg: std_logic := '0';
    signal dbg_layer3_done_reg: std_logic := '0';
    signal dbg_layer4_done_reg: std_logic := '0';
    -- DEBUG_END

begin

    -- DEBUG_BEGIN
    dbg_data_in_pulse <= dbg_data_in_reg;
    dbg_layer1_done   <= dbg_layer1_done_reg;
    dbg_layer2_done   <= dbg_layer2_done_reg;
    dbg_layer3_done   <= dbg_layer3_done_reg;
    dbg_layer4_done   <= dbg_layer4_done_reg;
    -- DEBUG_END

    -- Output to AXI-Lite
    output_rd_data <= buf_A(to_integer(output_rd_addr));

    -- Buffer Update Process
    process(clk)
    begin
        if rising_edge(clk) then
            -- Input stream
            if input_wr_en = '1' then
                buf_A(to_integer(input_wr_addr)) <= input_wr_data;
            end if;
            
            -- FSM Writeback
            if fsm_wr_en = '1' then
                for n in 0 to PARALLEL_NEURONS-1 loop
                    if (fsm_wb_base_idx + n) < MAX_NEURONS then
                        if fsm_wr_target_B = '1' then
                            buf_B(fsm_wb_base_idx + n) <= fsm_wb_data(n);
                        else
                            buf_A(fsm_wb_base_idx + n) <= fsm_wb_data(n);
                        end if;
                    end if;
                end loop;
            end if;
        end if;
    end process;

    -- BRAM Generation
    gen_w_brams: for i in 0 to (PARALLEL_NEURONS * MAX_INPUTS) - 1 generate
        signal we : std_logic;
    begin
        we <= '1' when (w_wr_en = '1' and w_wr_bram = i) else '0';
        w_bram_inst: weight_bram
            generic map ( ADDR_WIDTH => 7, DATA_WIDTH => 16 )
            port map (
                clk_a => clk, we_a => we, addr_a => w_wr_addr, din_a => w_wr_data, dout_a => open,
                clk_b => clk, addr_b => w_rd_addr, dout_b => w_rd_data(i)
            );
    end generate;

    gen_b_brams: for i in 0 to PARALLEL_NEURONS - 1 generate
        signal we : std_logic;
    begin
        we <= '1' when (b_wr_en = '1' and b_wr_bram = i) else '0';
        b_bram_inst: weight_bram
            generic map ( ADDR_WIDTH => 7, DATA_WIDTH => 16 )
            port map (
                clk_a => clk, we_a => we, addr_a => b_wr_addr, din_a => b_wr_data, dout_a => open,
                clk_b => clk, addr_b => w_rd_addr, dout_b => b_rd_data(i)
            );
    end generate;

    -- Pipeline Empty Checker
    pipeline_empty <= '1' when valid_pipe = "0000000000000" else '0';

    -- Issue FSM
    process(clk)
        variable iters : integer;
    begin
        if rising_edge(clk) then
            -- Token kaydirma (valid / layer / iter).
            -- Bu uc sinyal ONCEDEN hem bu proseste (indis 0) hem de veri yolu
            -- prosesinde (indis 1..12) suruluyordu. layer_pipe ve iter_pipe
            -- integer, yani cozumlenmemis tip -> coklu surucu yasak.
            -- XSIM 43-3249 hatasi buydu; simulasyon hic calismamisti.
            -- Kaydirma buraya tasindi, boylece tek surucu kaldi.
            -- Ayni saat kenari, ayni sira -> islevsel davranis degismedi.
            for i in 1 to 12 loop
                valid_pipe(i) <= valid_pipe(i-1);
                layer_pipe(i) <= layer_pipe(i-1);
                iter_pipe(i)  <= iter_pipe(i-1);
            end loop;

            if rst = '1' then
                state <= ST_IDLE;
                done <= '0';
                busy <= '0';
                valid_pipe(0) <= '0';
                -- DEBUG_BEGIN
                dbg_data_in_reg     <= '0';
                dbg_layer1_done_reg <= '0';
                dbg_layer2_done_reg <= '0';
                dbg_layer3_done_reg <= '0';
                dbg_layer4_done_reg <= '0';
                -- DEBUG_END
            else
                valid_pipe(0) <= '0'; -- default
                -- DEBUG_BEGIN (pulse defaults)
                dbg_data_in_reg     <= '0';
                dbg_layer1_done_reg <= '0';
                dbg_layer2_done_reg <= '0';
                dbg_layer3_done_reg <= '0';
                dbg_layer4_done_reg <= '0';
                -- DEBUG_END
                
                case layer_idx is
                    when 1 => iters := (cfg_layer1_out + 2) / 3;
                    when 2 => iters := (cfg_layer2_out + 2) / 3;
                    when 3 => iters := (cfg_layer3_out + 2) / 3;
                    when 4 => iters := (cfg_layer4_out + 2) / 3;
                    when others => iters := 0;
                end case;
                -- max_iters removed

                case state is
                    when ST_IDLE =>
                        done <= '0';
                        if start = '1' then
                            busy <= '1';
                            layer_idx <= 1;
                            iter_k <= 0;
                            base_addr <= 0;
                            state <= ST_ISSUE;
                            -- DEBUG_BEGIN
                            dbg_data_in_reg <= '1'; -- Veri geldi, hesaplama basliyor
                            -- DEBUG_END
                        end if;
                        
                    when ST_ISSUE =>
                        w_rd_addr <= std_logic_vector(to_unsigned(base_addr + iter_k, 7));
                        valid_pipe(0) <= '1';
                        layer_pipe(0) <= layer_idx;
                        iter_pipe(0)  <= iter_k;
                        
                        if iter_k = iters - 1 then
                            state <= ST_DRAIN_LAYER;
                        else
                            iter_k <= iter_k + 1;
                        end if;
                        
                    when ST_DRAIN_LAYER =>
                        -- Wait for pipeline to empty
                        if pipeline_empty = '1' then
                            if layer_idx = 4 then
                                done <= '1';
                                busy <= '0';
                                state <= ST_IDLE;
                                -- DEBUG_BEGIN
                                dbg_layer4_done_reg <= '1';
                                -- DEBUG_END
                            else
                                -- DEBUG_BEGIN (Layer tamamlandi pulse'i)
                                case layer_idx is
                                    when 1 => dbg_layer1_done_reg <= '1';
                                    when 2 => dbg_layer2_done_reg <= '1';
                                    when 3 => dbg_layer3_done_reg <= '1';
                                    when others => null;
                                end case;
                                -- DEBUG_END
                                base_addr <= base_addr + iters;
                                layer_idx <= layer_idx + 1;
                                iter_k <= 0;
                                state <= ST_ISSUE;
                            end if;
                        end if;
                end case;
            end if;
        end if;
    end process;

    -- Mux Current Inputs
    -- HATA DUZELTMESI: onceden layer_pipe(2) kullaniliyordu. in_reg ile w_reg
    -- ayni kenarda yakalaniyor ve o verinin token'i 1. kademede; mux bir
    -- kademe ileriye bakinca her katman yanlis ping-pong buffer'indan
    -- okuyordu (L2 buf_A'dan, L3 buf_B'den...). MUX_STAGE ile duzeltildi.
    process(layer_pipe(MUX_STAGE), buf_A, buf_B)
    begin
        if layer_pipe(MUX_STAGE) = 1 or layer_pipe(MUX_STAGE) = 3 then
            for i in 0 to 63 loop current_inputs(i) <= buf_A(i); end loop;
        else
            for i in 0 to 63 loop current_inputs(i) <= buf_B(i); end loop;
        end if;
    end process;

    -- Pipelined Data Path
    process(clk)
        variable v_scaled  : signed(39 downto 0);
        variable v_sat     : signed(15 downto 0);
    begin
        if rising_edge(clk) then
            -- Shift tracking tokens
            -- valid_pipe / layer_pipe / iter_pipe kaydirmasi Issue FSM
            -- prosesine tasindi (coklu surucu hatasi). Burada yalnizca
            -- bias_pipe kaliyor; onun tek surucusu bu proses.
            for i in 1 to 12 loop
                bias_pipe(i)  <= bias_pipe(i-1);
            end loop;
            
            -- Stage 1: BRAM Read Latency (Data available at end of cycle)
            bias_pipe(1) <= b_rd_data;
            
            -- Stage 2: Buffer Registers (Isolates BRAM clock-to-out)
            for i in 0 to 63 loop
                in_reg(i) <= current_inputs(i);
                for n in 0 to PARALLEL_NEURONS-1 loop
                    w_reg(n, i) <= signed(w_rd_data(n * 64 + i));
                end loop;
            end loop;
            
            -- Stage 3: Multiplier MREG (Internal DSP Register)
            for n in 0 to PARALLEL_NEURONS-1 loop
                for i in 0 to 63 loop
                    mult_mreg(n, i) <= in_reg(i) * w_reg(n, i);
                end loop;
            end loop;
            
            -- Stage 4: Multiplier PREG (DSP Output Register)
            for n in 0 to PARALLEL_NEURONS-1 loop
                for i in 0 to 63 loop
                    mult_preg(n, i) <= mult_mreg(n, i);
                end loop;
            end loop;
            
            -- Stage 5: Adder L1 (64 -> 32)
            for n in 0 to PARALLEL_NEURONS-1 loop
                for j in 0 to 31 loop
                    sum_l1(n, j) <= resize(mult_preg(n, 2*j), 40) + resize(mult_preg(n, 2*j+1), 40);
                end loop;
            end loop;
            
            -- Stage 6: Adder L2 (32 -> 16)
            for n in 0 to PARALLEL_NEURONS-1 loop
                for j in 0 to 15 loop
                    sum_l2(n, j) <= sum_l1(n, 2*j) + sum_l1(n, 2*j+1);
                end loop;
            end loop;

            -- Stage 7: Adder L3 (16 -> 8)
            for n in 0 to PARALLEL_NEURONS-1 loop
                for j in 0 to 7 loop
                    sum_l3(n, j) <= sum_l2(n, 2*j) + sum_l2(n, 2*j+1);
                end loop;
            end loop;

            -- Stage 8: Adder L4 (8 -> 4)
            for n in 0 to PARALLEL_NEURONS-1 loop
                for j in 0 to 3 loop
                    sum_l4(n, j) <= sum_l3(n, 2*j) + sum_l3(n, 2*j+1);
                end loop;
            end loop;

            -- Stage 9: Adder L5 (4 -> 2)
            for n in 0 to PARALLEL_NEURONS-1 loop
                for j in 0 to 1 loop
                    sum_l5(n, j) <= sum_l4(n, 2*j) + sum_l4(n, 2*j+1);
                end loop;
            end loop;

            -- Stage 10: Adder L6 (2 -> 1)
            for n in 0 to PARALLEL_NEURONS-1 loop
                sum_l6(n) <= sum_l5(n, 0) + sum_l5(n, 1);
            end loop;
            
            -- Stage 11: Bias Addition
            -- HATA DUZELTMESI (simulasyon T2 ile saptandi):
            -- Onceki kod bias_pipe(11) kullaniyordu. Agirlik yolu BRAM
            -- cikisindan sum_l6'ya 9 kayit gecerken, bias 11 kayit geciyordu
            -- -> bias, ait oldugu noronun 2 iterasyon (6 noron) gerisinden
            -- geliyordu. Iki kayit geri alindi.
            for n in 0 to PARALLEL_NEURONS-1 loop
                final_sum_reg(n) <= sum_l6(n) + shift_left(resize(signed(bias_pipe(BIAS_STAGE)(n)), 40), 8);
            end loop;
            
            -- Stage 12: Activate & Writeback
            -- HATA DUZELTMESI (simulasyon T1/T3 ile saptandi):
            -- Onceki kod valid/iter/layer icin indis 12 kullaniyordu. Veri bu
            -- noktaya token'indan 3 iterasyon ONCE variyordu -> her noronun
            -- sonucu 9 indis geriye yaziliyordu (noron 0..8 tamamen kayboluyordu).
            -- Indis 9'a cekildi; token artik veriyle ayni cevrimde.
            fsm_wr_en <= valid_pipe(WB_STAGE);
            fsm_wb_base_idx <= iter_pipe(WB_STAGE) * 3;
            if layer_pipe(WB_STAGE) = 1 or layer_pipe(WB_STAGE) = 3 then
                fsm_wr_target_B <= '1';
            else
                fsm_wr_target_B <= '0';
            end if;

            for n in 0 to PARALLEL_NEURONS-1 loop
                -- Scale down by 256 (shift right 8)
                v_scaled := shift_right(final_sum_reg(n), 8);
                v_sat := saturate(v_scaled);

                -- ReLU (except last layer)
                if layer_pipe(WB_STAGE) < 4 then
                    if v_sat < 0 then
                        v_sat := (others => '0');
                    end if;
                end if;
                
                fsm_wb_data(n) <= v_sat;
            end loop;
        end if;
    end process;

end architecture rtl;
