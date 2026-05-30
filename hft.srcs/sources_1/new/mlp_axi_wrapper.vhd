--------------------------------------------------------------------------------
-- mlp_axi_wrapper.vhd
-- AXI4-Lite + AXI4-Stream Wrapper for SIMD AI Framework
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mlp_axi_wrapper is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 20  -- 1MB address space
    );
    port (
        -- AXI-Lite Slave Interface
        S_AXI_ACLK      : in  std_logic;
        S_AXI_ARESETN   : in  std_logic;
        S_AXI_AWADDR    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT    : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID   : in  std_logic;
        S_AXI_AWREADY   : out std_logic;
        S_AXI_WDATA     : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB     : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID    : in  std_logic;
        S_AXI_WREADY    : out std_logic;
        S_AXI_BRESP     : out std_logic_vector(1 downto 0);
        S_AXI_BVALID    : out std_logic;
        S_AXI_BREADY    : in  std_logic;
        S_AXI_ARADDR    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT    : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID   : in  std_logic;
        S_AXI_ARREADY   : out std_logic;
        S_AXI_RDATA     : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP     : out std_logic_vector(1 downto 0);
        S_AXI_RVALID    : out std_logic;
        S_AXI_RREADY    : in  std_logic;

        -- AXI-Stream Slave Interface
        S_AXIS_ACLK     : in  std_logic;
        S_AXIS_ARESETN  : in  std_logic;
        S_AXIS_TDATA    : in  std_logic_vector(31 downto 0);
        S_AXIS_TVALID   : in  std_logic;
        S_AXIS_TREADY   : out std_logic;
        S_AXIS_TLAST    : in  std_logic;

        -- DEBUG_BEGIN (LED ve Osiloskop cikislari - sonra kaldirilacak)
        o_led              : out std_logic_vector(7 downto 0);
        dbg_data_in_pulse  : out std_logic;  -- PMOD JA1: Veri PL'e girdi
        dbg_layer1_done    : out std_logic;  -- PMOD JA2: Layer 1 bitti
        dbg_layer2_done    : out std_logic;  -- PMOD JA3: Layer 2 bitti
        dbg_layer3_done    : out std_logic;  -- PMOD JA4: Layer 3 bitti
        dbg_layer4_done    : out std_logic;  -- PMOD JA7: Layer 4 / tum MLP bitti
        dbg_mlp_busy       : out std_logic   -- PMOD JA8: MLP mesgul
        -- DEBUG_END
    );
end entity mlp_axi_wrapper;

architecture Behavioral of mlp_axi_wrapper is

    component mlp_engine is
        port (
            clk             : in  std_logic;
            rst             : in  std_logic;
            start           : in  std_logic;
            done            : out std_logic;
            busy            : out std_logic;
            cfg_layer1_out  : in  integer range 0 to 64;
            cfg_layer2_out  : in  integer range 0 to 64;
            cfg_layer3_out  : in  integer range 0 to 64;
            cfg_layer4_out  : in  integer range 0 to 64;
            input_wr_en     : in  std_logic;
            input_wr_addr   : in  unsigned(5 downto 0);
            input_wr_data   : in  signed(15 downto 0);
            output_rd_addr  : in  unsigned(5 downto 0);
            output_rd_data  : out signed(15 downto 0);
            w_wr_en         : in  std_logic;
            w_wr_bram       : in  integer range 0 to 191;
            w_wr_addr       : in  std_logic_vector(6 downto 0);
            w_wr_data       : in  std_logic_vector(15 downto 0);
            b_wr_en         : in  std_logic;
            b_wr_bram       : in  integer range 0 to 2;
            b_wr_addr       : in  std_logic_vector(6 downto 0);
            b_wr_data       : in  std_logic_vector(15 downto 0);
            -- DEBUG_BEGIN
            dbg_data_in_pulse  : out std_logic;
            dbg_layer1_done    : out std_logic;
            dbg_layer2_done    : out std_logic;
            dbg_layer3_done    : out std_logic;
            dbg_layer4_done    : out std_logic
            -- DEBUG_END
        );
    end component;

    -- Handshake signals
    signal axi_awready : std_logic := '0';
    signal axi_wready  : std_logic := '0';
    signal axi_bvalid  : std_logic := '0';
    signal axi_arready : std_logic := '0';
    signal axi_rvalid  : std_logic := '0';
    signal axi_rdata   : std_logic_vector(31 downto 0) := (others => '0');

    signal aw_en       : std_logic := '1';
    signal awaddr_reg  : std_logic_vector(19 downto 0) := (others => '0');
    signal araddr_reg  : std_logic_vector(19 downto 0) := (others => '0');

    -- Registers
    signal reg_ctrl         : std_logic_vector(31 downto 0) := (others => '0');
    signal reg_update_flag  : std_logic_vector(31 downto 0) := (others => '0');
    signal cfg_layer1_out   : integer range 0 to 64 := 64;
    signal cfg_layer2_out   : integer range 0 to 64 := 32;
    signal cfg_layer3_out   : integer range 0 to 64 := 16;
    signal cfg_layer4_out   : integer range 0 to 64 := 3;

    -- Engine Signals
    signal mlp_reset       : std_logic;
    signal mlp_start       : std_logic := '0';
    signal mlp_done        : std_logic;
    signal mlp_busy        : std_logic;
    signal mlp_done_latched: std_logic := '0';


    signal mlp_out_addr    : unsigned(5 downto 0) := (others => '0');
    signal mlp_out_data    : signed(15 downto 0);

    -- BRAM Demux Signals
    signal w_wr_en         : std_logic := '0';
    signal w_wr_bram       : integer range 0 to 191 := 0;
    signal w_wr_addr       : std_logic_vector(6 downto 0) := (others => '0');
    signal w_wr_data       : std_logic_vector(15 downto 0) := (others => '0');
    
    signal b_wr_en         : std_logic := '0';
    signal b_wr_bram       : integer range 0 to 2 := 0;
    signal b_wr_addr       : std_logic_vector(6 downto 0) := (others => '0');
    signal b_wr_data       : std_logic_vector(15 downto 0) := (others => '0');

    -- Stream state
    type stream_state_t is (ST_IDLE, ST_RCV_EVEN, ST_RCV_ODD, ST_START, ST_WAIT);
    signal st_state : stream_state_t := ST_IDLE;
    signal st_idx   : integer range 0 to 63 := 0;
    signal st_tready: std_logic := '0';
    
    signal mlp_wr_en      : std_logic := '0';
    signal mlp_wr_addr    : unsigned(5 downto 0) := (others => '0');
    signal mlp_wr_data    : signed(15 downto 0) := (others => '0');
    signal latched_odd    : signed(15 downto 0) := (others => '0');
    signal latched_tlast  : std_logic := '0';

    -- DEBUG_BEGIN (Engine'den gelen debug sinyalleri)
    signal eng_dbg_data_in  : std_logic;
    signal eng_dbg_l1_done  : std_logic;
    signal eng_dbg_l2_done  : std_logic;
    signal eng_dbg_l3_done  : std_logic;
    signal eng_dbg_l4_done  : std_logic;
    signal led_reg          : std_logic_vector(7 downto 0) := (others => '0');
    -- DEBUG_END

begin

    S_AXI_AWREADY <= axi_awready;
    S_AXI_WREADY  <= axi_wready;
    S_AXI_BRESP   <= "00";
    S_AXI_BVALID  <= axi_bvalid;
    S_AXI_ARREADY <= axi_arready;
    S_AXI_RDATA   <= axi_rdata;
    S_AXI_RRESP   <= "00";
    S_AXI_RVALID  <= axi_rvalid;
    S_AXIS_TREADY <= st_tready;

    mlp_reset <= (not S_AXI_ARESETN) or reg_ctrl(0);

    -- DEBUG_BEGIN (LED ve Debug Port Atamalari)
    o_led             <= led_reg;
    dbg_data_in_pulse <= eng_dbg_data_in;
    dbg_layer1_done   <= eng_dbg_l1_done;
    dbg_layer2_done   <= eng_dbg_l2_done;
    dbg_layer3_done   <= eng_dbg_l3_done;
    dbg_layer4_done   <= eng_dbg_l4_done;
    dbg_mlp_busy      <= mlp_busy;
    -- DEBUG_END

    -- Address Handshake
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_awready <= '0';
                aw_en       <= '1';
            else
                if axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1' then
                    axi_awready <= '1';
                    aw_en       <= '0';
                    awaddr_reg  <= S_AXI_AWADDR;
                else
                    axi_awready <= '0';
                end if;
                if S_AXI_BREADY = '1' and axi_bvalid = '1' then
                    aw_en <= '1';
                end if;
            end if;
        end if;
    end process;

    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_wready <= '0';
            else
                if axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1' and aw_en = '1' then
                    axi_wready <= '1';
                else
                    axi_wready <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Demux logic for Array of BRAM writes
    process(axi_awready, axi_wready, S_AXI_AWVALID, S_AXI_WVALID, awaddr_reg, S_AXI_WDATA)
        variable write_en : std_logic;
        variable bram_idx : integer;
    begin
        w_wr_en <= '0';
        b_wr_en <= '0';
        w_wr_bram <= 0;
        b_wr_bram <= 0;
        w_wr_addr <= awaddr_reg(8 downto 2);
        b_wr_addr <= awaddr_reg(8 downto 2);
        w_wr_data <= S_AXI_WDATA(15 downto 0);
        b_wr_data <= S_AXI_WDATA(15 downto 0);
        
        write_en := '0';
        if axi_awready = '1' and axi_wready = '1' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' then
            write_en := '1';
        end if;
        
        if write_en = '1' then
            if awaddr_reg(17) = '1' then
                bram_idx := to_integer(unsigned(awaddr_reg(16 downto 9)));
                if bram_idx < 192 then
                    w_wr_en <= '1';
                    w_wr_bram <= bram_idx;
                elsif bram_idx >= 192 and bram_idx < 195 then
                    b_wr_en <= '1';
                    b_wr_bram <= bram_idx - 192;
                end if;
            end if;
        end if;
    end process;

    -- Register Writes
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                reg_ctrl <= (others => '0');
                reg_update_flag <= (others => '0');
                cfg_layer1_out <= 64;
                cfg_layer2_out <= 32;
                cfg_layer3_out <= 16;
                cfg_layer4_out <= 3;
            else
                -- Auto-clear reset bit
                if reg_ctrl(0) = '1' then reg_ctrl(0) <= '0'; end if;
                
                if axi_awready = '1' and axi_wready = '1' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' then
                    if awaddr_reg(17) = '0' then
                        case awaddr_reg(7 downto 0) is
                            when x"00" => reg_ctrl <= S_AXI_WDATA;
                            when x"08" => reg_update_flag <= S_AXI_WDATA;
                            when x"10" => cfg_layer1_out <= to_integer(unsigned(S_AXI_WDATA(7 downto 0)));
                            when x"14" => cfg_layer2_out <= to_integer(unsigned(S_AXI_WDATA(7 downto 0)));
                            when x"18" => cfg_layer3_out <= to_integer(unsigned(S_AXI_WDATA(7 downto 0)));
                            when x"1C" => cfg_layer4_out <= to_integer(unsigned(S_AXI_WDATA(7 downto 0)));
                            when others => null;
                        end case;
                    end if;
                end if;
            end if;
        end if;
    end process;

    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then axi_bvalid <= '0';
            else
                if axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0' then
                    axi_bvalid <= '1';
                elsif S_AXI_BREADY = '1' and axi_bvalid = '1' then
                    axi_bvalid <= '0';
                end if;
            end if;
        end if;
    end process;

    -- ARREADY
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then axi_arready <= '0';
            else
                if axi_arready = '0' and S_AXI_ARVALID = '1' then
                    axi_arready <= '1';
                    araddr_reg  <= S_AXI_ARADDR;
                else
                    axi_arready <= '0';
                end if;
            end if;
        end if;
    end process;

    -- RVALID & RDATA
    mlp_out_addr <= unsigned(araddr_reg(7 downto 2));
    
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_rvalid <= '0';
            else
                if axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0' then
                    axi_rvalid <= '1';
                    
                    if araddr_reg(19 downto 16) = x"0" then
                        -- Register read
                        if araddr_reg(11 downto 8) = x"1" then
                            -- 0x100 - 0x1FF: Result Array
                            axi_rdata <= std_logic_vector(resize(mlp_out_data, 32));
                        else
                            -- Config read
                            case araddr_reg(7 downto 0) is
                                when x"00" => axi_rdata <= reg_ctrl;
                                when x"04" => 
                                    axi_rdata <= (others => '0');
                                    axi_rdata(0) <= mlp_done_latched;
                                    axi_rdata(1) <= mlp_busy;
                                    axi_rdata(2) <= st_tready;
                                when x"08" => axi_rdata <= reg_update_flag;
                                when x"0C" =>
                                    axi_rdata <= (others => '0');
                                    axi_rdata(5 downto 0) <= std_logic_vector(to_unsigned(st_idx, 6));
                                    if st_state = ST_IDLE then axi_rdata(11 downto 8) <= x"0";
                                    elsif st_state = ST_RCV_EVEN then axi_rdata(11 downto 8) <= x"1";
                                    elsif st_state = ST_RCV_ODD then axi_rdata(11 downto 8) <= x"2";
                                    elsif st_state = ST_START then axi_rdata(11 downto 8) <= x"3";
                                    elsif st_state = ST_WAIT then axi_rdata(11 downto 8) <= x"4";
                                    end if;
                                when others => axi_rdata <= (others => '0');
                            end case;
                        end if;
                    else
                        axi_rdata <= (others => '0');
                    end if;
                elsif S_AXI_RREADY = '1' and axi_rvalid = '1' then
                    axi_rvalid <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Latch Done
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                mlp_done_latched <= '0';
            else
                if mlp_done = '1' then
                    mlp_done_latched <= '1';
                elsif axi_arready = '1' and S_AXI_ARVALID = '1' and araddr_reg(19 downto 0) = x"00004" then
                    mlp_done_latched <= '0';
                end if;
            end if;
        end if;
    end process;

    -- AXI Stream State Machine
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' or reg_ctrl(0) = '1' then
                st_state <= ST_IDLE;
                st_tready <= '0';
                mlp_wr_en <= '0';
                mlp_start <= '0';
                st_idx <= 0;
            else
                mlp_wr_en <= '0';
                mlp_start <= '0';
                
                -- Block stream if updating weights
                if reg_update_flag(0) = '1' then
                    st_tready <= '0';
                    st_state <= ST_IDLE;
                else
                    case st_state is
                        when ST_IDLE =>
                            st_tready <= '1';
                            st_idx <= 0;
                            if S_AXIS_TVALID = '1' and st_tready = '1' then
                                st_tready <= '0';
                                mlp_wr_en <= '1';
                                mlp_wr_addr <= to_unsigned(0, 6);
                                mlp_wr_data <= signed(S_AXIS_TDATA(15 downto 0));
                                latched_odd <= signed(S_AXIS_TDATA(31 downto 16));
                                latched_tlast <= S_AXIS_TLAST;
                                st_state <= ST_RCV_ODD;
                            end if;
                            
                        when ST_RCV_EVEN =>
                            st_tready <= '1';
                            if S_AXIS_TVALID = '1' and st_tready = '1' then
                                st_tready <= '0';
                                mlp_wr_en <= '1';
                                mlp_wr_addr <= to_unsigned(st_idx * 2, 6);
                                mlp_wr_data <= signed(S_AXIS_TDATA(15 downto 0));
                                latched_odd <= signed(S_AXIS_TDATA(31 downto 16));
                                latched_tlast <= S_AXIS_TLAST;
                                st_state <= ST_RCV_ODD;
                            end if;
                            
                        when ST_RCV_ODD =>
                            st_tready <= '0';
                            mlp_wr_en <= '1';
                            mlp_wr_addr <= to_unsigned(st_idx * 2 + 1, 6);
                            mlp_wr_data <= latched_odd;
                            st_idx <= st_idx + 1;
                            
                            if latched_tlast = '1' or st_idx = 31 then
                                st_state <= ST_START;
                            else
                                st_state <= ST_RCV_EVEN;
                            end if;
                            
                        when ST_START =>
                            mlp_start <= '1';
                            st_state <= ST_WAIT;
                            
                        when ST_WAIT =>
                            if mlp_done = '1' then
                                st_idx <= 0;
                                st_state <= ST_IDLE;
                            end if;
                    end case;
                end if;
            end if;
        end if;
    end process;

    -- Instances
    engine_inst : mlp_engine port map(
        clk => S_AXI_ACLK, rst => mlp_reset, start => mlp_start,
        done => mlp_done, busy => mlp_busy,
        cfg_layer1_out => cfg_layer1_out, cfg_layer2_out => cfg_layer2_out, 
        cfg_layer3_out => cfg_layer3_out, cfg_layer4_out => cfg_layer4_out,
        input_wr_en => mlp_wr_en, input_wr_addr => mlp_wr_addr, input_wr_data => mlp_wr_data,
        output_rd_addr => mlp_out_addr, output_rd_data => mlp_out_data,
        w_wr_en => w_wr_en, w_wr_bram => w_wr_bram, w_wr_addr => w_wr_addr, w_wr_data => w_wr_data,
        b_wr_en => b_wr_en, b_wr_bram => b_wr_bram, b_wr_addr => b_wr_addr, b_wr_data => b_wr_data,
        -- DEBUG_BEGIN
        dbg_data_in_pulse => eng_dbg_data_in,
        dbg_layer1_done   => eng_dbg_l1_done,
        dbg_layer2_done   => eng_dbg_l2_done,
        dbg_layer3_done   => eng_dbg_l3_done,
        dbg_layer4_done   => eng_dbg_l4_done
        -- DEBUG_END
    );

    -- DEBUG_BEGIN (LED Kontrol Mantigi)
    -- Model yuklenirken: 8 LED hepsi yanar
    -- Inference sirasinda: Cikis noronlarinin degerlerini goster
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                led_reg <= (others => '0');
            else
                if reg_update_flag(0) = '1' then
                    -- Model yukleniyor: TUM LED'ler YAN
                    led_reg <= (others => '1');
                elsif mlp_done = '1' then
                    -- Inference bitti: Cikislari LED'lere bas
                    -- LD0 = out[0] isareti (pozitif=1), LD1 = out[1], LD2 = out[2]
                    -- LD3-LD7 = layer tamamlanma gostergesi (sticky)
                    led_reg(0) <= not mlp_out_data(15); -- out[0] pozitifse YAN (SELL guclu)
                    -- Simdilik sadece argmax sonucu goster:
                    -- En basit: 3 cikisi da sign biti ile goster
                    led_reg(2 downto 1) <= (others => '0'); -- Sonraki read cycle'da dolar
                    led_reg(3) <= '1'; -- Layer 1 bitti (sticky)
                    led_reg(4) <= '1'; -- Layer 2 bitti (sticky)
                    led_reg(5) <= '1'; -- Layer 3 bitti (sticky)
                    led_reg(6) <= '1'; -- Layer 4 bitti (sticky)
                    led_reg(7) <= '1'; -- Inference tamamlandi
                elsif mlp_busy = '1' then
                    -- Hesaplama devam ediyor: Sirayla LED'leri yak
                    if eng_dbg_l1_done = '1' then led_reg(3) <= '1'; end if;
                    if eng_dbg_l2_done = '1' then led_reg(4) <= '1'; end if;
                    if eng_dbg_l3_done = '1' then led_reg(5) <= '1'; end if;
                    if eng_dbg_l4_done = '1' then led_reg(6) <= '1'; end if;
                elsif mlp_busy = '0' and reg_update_flag(0) = '0' then
                    -- Idle: LED'leri kapat (bir sonraki inference icin temizle)
                    led_reg(7 downto 3) <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    -- DEBUG_END

end architecture Behavioral;
