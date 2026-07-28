--------------------------------------------------------------------------------
-- mlp_verify_tb.vhd
--
-- Kendi kendini kontrol eden dogrulama testbench'i.
--
-- Amac: donanimin altin modelden NEREDE saptigini yalitmak. Uc test,
-- birbirinden bagimsiz uc mekanizmayi zorluyor:
--
--   T1  Gecis zinciri     -> saf veri yolu (carpma, toplayici agaci, >>8)
--   T2  Bias zinciri      -> bias boru hattinin hizalanmasi (bias_pipe)
--   T3  Coklu noron       -> geri yazma indeksi (fsm_wb_base_idx)
--
-- Her test PASS/FAIL basar. Ilk FAIL veren test, hatanin hangi mekanizmada
-- oldugunu dogrudan soyler.
--
-- NOT: Simulasyonda weight_bram RAM'i (others => '0') ile baslar, bu yuzden
-- yalnizca sifir OLMAYAN girdileri yazmak yeterli.
--
-- Calistirma: Vivado > Simulation > Run Behavioral Simulation
--             (bu dosyayi simulation-only top olarak ayarlayin)
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity mlp_verify_tb is
end entity mlp_verify_tb;

architecture sim of mlp_verify_tb is

    constant CLK_PERIOD : time := 8 ns;          -- 125 MHz

    -- Katmanlarin BRAM satir taban adresleri: ceil(n_out/3) birikimli
    --   L1: 64 noron -> 22 satir   (taban  0)
    --   L2: 32 noron -> 11 satir   (taban 22)
    --   L3: 16 noron ->  6 satir   (taban 33)
    --   L4:  3 noron ->  1 satir   (taban 39)
    constant BASE_L1 : integer := 0;
    constant BASE_L2 : integer := 22;
    constant BASE_L3 : integer := 33;
    constant BASE_L4 : integer := 39;

    constant ONE_Q88 : integer := 256;           -- 1.0 in Q8.8

    signal clk      : std_logic := '0';
    signal aresetn  : std_logic := '0';
    signal sim_done : boolean := false;

    -- AXI-Lite
    signal awaddr  : std_logic_vector(19 downto 0) := (others => '0');
    signal awprot  : std_logic_vector(2 downto 0)  := (others => '0');
    signal awvalid : std_logic := '0';
    signal awready : std_logic;
    signal wdata   : std_logic_vector(31 downto 0) := (others => '0');
    signal wstrb   : std_logic_vector(3 downto 0)  := "1111";
    signal wvalid  : std_logic := '0';
    signal wready  : std_logic;
    signal bresp   : std_logic_vector(1 downto 0);
    signal bvalid  : std_logic;
    signal bready  : std_logic := '1';
    signal araddr  : std_logic_vector(19 downto 0) := (others => '0');
    signal arprot  : std_logic_vector(2 downto 0)  := (others => '0');
    signal arvalid : std_logic := '0';
    signal arready : std_logic;
    signal rdata   : std_logic_vector(31 downto 0);
    signal rresp   : std_logic_vector(1 downto 0);
    signal rvalid  : std_logic;
    signal rready  : std_logic := '1';

    -- AXI-Stream
    signal axis_tdata  : std_logic_vector(31 downto 0) := (others => '0');
    signal axis_tvalid : std_logic := '0';
    signal axis_tready : std_logic;
    signal axis_tlast  : std_logic := '0';

    -- debug
    signal o_led : std_logic_vector(7 downto 0);
    signal d1, d2, d3, d4, d5, d6 : std_logic;

    type vec64_t is array(0 to 63) of integer;

    -- test sonuclari
    signal n_pass : integer := 0;
    signal n_fail : integer := 0;

begin

    clk_proc : process
    begin
        while not sim_done loop
            clk <= '0'; wait for CLK_PERIOD/2;
            clk <= '1'; wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;

    DUT : entity work.mlp_axi_wrapper
        generic map (C_S_AXI_DATA_WIDTH => 32, C_S_AXI_ADDR_WIDTH => 20)
        port map (
            S_AXI_ACLK => clk, S_AXI_ARESETN => aresetn,
            S_AXI_AWADDR => awaddr, S_AXI_AWPROT => awprot,
            S_AXI_AWVALID => awvalid, S_AXI_AWREADY => awready,
            S_AXI_WDATA => wdata, S_AXI_WSTRB => wstrb,
            S_AXI_WVALID => wvalid, S_AXI_WREADY => wready,
            S_AXI_BRESP => bresp, S_AXI_BVALID => bvalid, S_AXI_BREADY => bready,
            S_AXI_ARADDR => araddr, S_AXI_ARPROT => arprot,
            S_AXI_ARVALID => arvalid, S_AXI_ARREADY => arready,
            S_AXI_RDATA => rdata, S_AXI_RRESP => rresp,
            S_AXI_RVALID => rvalid, S_AXI_RREADY => rready,
            S_AXIS_ACLK => clk, S_AXIS_ARESETN => aresetn,
            S_AXIS_TDATA => axis_tdata, S_AXIS_TVALID => axis_tvalid,
            S_AXIS_TREADY => axis_tready, S_AXIS_TLAST => axis_tlast,
            o_led => o_led,
            dbg_data_in_pulse => d1, dbg_layer1_done => d2, dbg_layer2_done => d3,
            dbg_layer3_done => d4, dbg_layer4_done => d5, dbg_mlp_busy => d6
        );

    stim : process

        ----------------------------------------------------------------
        -- AXI-Lite temel islemler
        ----------------------------------------------------------------
        procedure axi_write(addr : integer; val : integer) is
        begin
            wait until rising_edge(clk);
            awaddr  <= std_logic_vector(to_unsigned(addr, 20));
            wdata   <= std_logic_vector(to_signed(val, 32));
            awvalid <= '1'; wvalid <= '1';
            wait until rising_edge(clk) and awready = '1' and wready = '1';
            awvalid <= '0'; wvalid <= '0';
            wait until rising_edge(clk) and bvalid = '1';
        end procedure;

        procedure axi_read(addr : integer; val : out integer) is
        begin
            wait until rising_edge(clk);
            araddr <= std_logic_vector(to_unsigned(addr, 20));
            arvalid <= '1';
            wait until rising_edge(clk) and arready = '1';
            arvalid <= '0';
            wait until rising_edge(clk) and rvalid = '1';
            val := to_integer(signed(rdata(15 downto 0)));
        end procedure;

        ----------------------------------------------------------------
        -- Agirlik / bias yazma (mlp_weight_loader.h ile ayni adres semasi)
        --   agirlik : 0x20000 + (n*64 + i)*512 + (base+k)*4
        --   bias    : 0x20000 + (192 + n)*512  + (base+k)*4
        ----------------------------------------------------------------
        procedure wr_w(neuron, inp, base, val : integer) is
            variable k, n, bram, addr : integer;
        begin
            k := neuron / 3;  n := neuron mod 3;
            bram := n * 64 + inp;
            addr := 16#20000# + bram * 512 + (base + k) * 4;
            axi_write(addr, val);
        end procedure;

        procedure wr_b(neuron, base, val : integer) is
            variable k, n, bram, addr : integer;
        begin
            k := neuron / 3;  n := neuron mod 3;
            bram := 192 + n;
            addr := 16#20000# + bram * 512 + (base + k) * 4;
            axi_write(addr, val);
        end procedure;

        ----------------------------------------------------------------
        -- 64 elemanli vektoru 32 AXI-Stream kelimesi olarak gonder
        ----------------------------------------------------------------
        procedure send_vec(v : vec64_t) is
        begin
            for w in 0 to 31 loop
                axis_tdata <= std_logic_vector(to_signed(v(2*w+1), 16)) &
                              std_logic_vector(to_signed(v(2*w),   16));
                axis_tvalid <= '1';
                if w = 31 then axis_tlast <= '1'; else axis_tlast <= '0'; end if;
                wait until rising_edge(clk) and axis_tready = '1';
            end loop;
            wait until rising_edge(clk);
            axis_tvalid <= '0';
            axis_tlast  <= '0';
        end procedure;

        ----------------------------------------------------------------
        -- Cikarimi calistir, 3 cikisi oku
        ----------------------------------------------------------------
        procedure run_infer(v : vec64_t; o0, o1, o2 : out integer) is
            variable st : integer;
            variable guard : integer := 0;
        begin
            send_vec(v);
            loop
                axi_read(16#00004#, st);
                exit when (st mod 2) = 1;          -- done biti
                guard := guard + 1;
                assert guard < 2000
                    report "ZAMAN ASIMI: done sinyali gelmedi" severity failure;
            end loop;
            axi_read(16#00100#, o0);
            axi_read(16#00104#, o1);
            axi_read(16#00108#, o2);
        end procedure;

        procedure check(name : string; g0, g1, g2, e0, e1, e2 : integer) is
        begin
            if g0 = e0 and g1 = e1 and g2 = e2 then
                report name & " : PASS   cikis = [" &
                    integer'image(g0) & ", " & integer'image(g1) & ", " &
                    integer'image(g2) & "]" severity note;
                n_pass <= n_pass + 1;
            else
                report name & " : *** FAIL ***" severity warning;
                report "        beklenen = [" & integer'image(e0) & ", " &
                       integer'image(e1) & ", " & integer'image(e2) & "]"
                       severity warning;
                report "        alinan   = [" & integer'image(g0) & ", " &
                       integer'image(g1) & ", " & integer'image(g2) & "]"
                       severity warning;
                n_fail <= n_fail + 1;
            end if;
        end procedure;

        ----------------------------------------------------------------
        -- buf_A'nin TAMAMINI oku (0x100 + i*4 -> indis i, i = 0..63)
        -- Katman 4 sonrasi buf_A icerigi:
        --   [0..2]   katman 4 cikisi
        --   [3..32]  katman 2 cikisi (katman 4 uzerine yazmadi)
        --   [33..63] orijinal girdi (hic dokunulmadi)
        -- Yani ara katman sonuclari da gorunur.
        ----------------------------------------------------------------
        procedure dump_bufA(tag : string) is
            variable val : integer;
            variable l   : line;
        begin
            report "  --- buf_A dokumu: " & tag & " ---" severity note;
            for r in 0 to 7 loop
                write(l, string'("    ["));
                write(l, r*8);
                write(l, string'(".."));
                write(l, r*8+7);
                write(l, string'("] "));
                for c in 0 to 7 loop
                    axi_read(16#00100# + (r*8 + c)*4, val);
                    write(l, val);
                    write(l, string'(" "));
                end loop;
                writeline(output, l);
            end loop;
        end procedure;

        variable v  : vec64_t := (others => 0);
        variable a0, a1, a2 : integer;

    begin
        -------------------------------------------------- reset
        aresetn <= '0';
        wait for CLK_PERIOD * 20;
        aresetn <= '1';
        wait for CLK_PERIOD * 10;

        -- konfigurasyon (varsayilanlarla ayni, yine de acikca yaziyoruz)
        axi_write(16#00010#, 64);
        axi_write(16#00014#, 32);
        axi_write(16#00018#, 16);
        axi_write(16#0001C#, 3);
        wait for CLK_PERIOD * 5;

        report "=================================================" severity note;
        report " T1 - Gecis zinciri (saf veri yolu)" severity note;
        report "=================================================" severity note;
        -- Her katmanda yalnizca [0][0] = 1.0, bias yok.
        -- girdi[0] dort katmandan degismeden gecmeli.
        axi_write(16#00008#, 1);                  -- UPDATE_FLAG = 1 (stream kilitli)
        wr_w(0, 0, BASE_L1, 2 * ONE_Q88);         -- 2.0 -> cikis girdiden farkli olsun
        wr_w(0, 0, BASE_L2, ONE_Q88);
        wr_w(0, 0, BASE_L3, ONE_Q88);
        wr_w(0, 0, BASE_L4, ONE_Q88);
        axi_write(16#00008#, 0);                  -- UPDATE_FLAG = 0
        wait for CLK_PERIOD * 10;

        -- ZEHIR: buf_A hem girdiyi hem sonucu tutuyor ve sonuc oradan okunuyor.
        -- Girdi[0..2]'ye ayirt edici degerler koyuyoruz; geri yazma hic olmazsa
        -- bu degerleri geri okuruz ve "sahte PASS" almayiz.
        -- Ayrica L1 agirligi 2.0 -> beklenen cikis girdiden farkli.
        v := (others => 0);
        v(0) := 5 * ONE_Q88;                      -- 5.0
        v(1) := -1000;                            -- zehir
        v(2) := -2000;                            -- zehir
        run_infer(v, a0, a1, a2);
        check("T1 gecis zinciri", a0, a1, a2, 10 * ONE_Q88, 0, 0);

        report "=================================================" severity note;
        report " T2 - Bias zinciri (bias_pipe hizalamasi)" severity note;
        report "=================================================" severity note;
        -- W1 = 0, B1[j] = j+1 (ham Q8.8 LSB).
        -- L2/L3/L4 birim matris -> B1[0..2] degismeden cikisa ulasmali.
        -- Beklenen: [1, 2, 3].  Bias boru hatti kaymissa bozulur.
        axi_write(16#00008#, 1);
        wr_w(0, 0, BASE_L1, 0);                   -- T1'in agirligini (2.0) temizle
        for j in 0 to 63 loop
            wr_b(j, BASE_L1, j + 1);
        end loop;
        for i in 0 to 31 loop
            wr_w(i, i, BASE_L2, ONE_Q88);
        end loop;
        for i in 0 to 15 loop
            wr_w(i, i, BASE_L3, ONE_Q88);
        end loop;
        for i in 0 to 2 loop
            wr_w(i, i, BASE_L4, ONE_Q88);
        end loop;
        wr_w(0, 0, BASE_L2, ONE_Q88);             -- (i=0 zaten yazildi, zararsiz)
        axi_write(16#00008#, 0);
        wait for CLK_PERIOD * 10;

        v := (others => 0);
        v(0) := 4444;                             -- zehir (W1=0, sonuca etkisi yok)
        v(1) := -1000;
        v(2) := -2000;
        run_infer(v, a0, a1, a2);
        check("T2 bias zinciri", a0, a1, a2, 1, 2, 3);

        report "=================================================" severity note;
        report " T3 - Coklu noron (geri yazma indeksi)" severity note;
        report "=================================================" severity note;
        -- B1 = 0, W1[j][0] = (j+1) ham LSB, girdi[0] = 1.0
        --   -> a1[j] = ((j+1) * 256) >> 8 = j+1
        -- L2/L3/L4 birim -> cikis [1, 2, 3].
        -- Geri yazma indeksi kaymissa a1 permute olur ve cikis degisir.
        axi_write(16#00008#, 1);
        for j in 0 to 63 loop
            wr_b(j, BASE_L1, 0);
            wr_w(j, 0, BASE_L1, j + 1);
        end loop;
        axi_write(16#00008#, 0);
        wait for CLK_PERIOD * 10;

        v := (others => 0);
        v(0) := ONE_Q88;
        v(1) := -1000;                            -- zehir
        v(2) := -2000;                            -- zehir
        run_infer(v, a0, a1, a2);
        check("T3 coklu noron", a0, a1, a2, 1, 2, 3);

        wait for CLK_PERIOD * 20;
        report "=================================================" severity note;
        report " SONUC: " & integer'image(n_pass) & " PASS / " &
               integer'image(n_fail) & " FAIL" severity note;
        report "=================================================" severity note;

        sim_done <= true;
        wait;
    end process;

end architecture sim;
