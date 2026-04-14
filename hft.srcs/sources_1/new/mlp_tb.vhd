--------------------------------------------------------------------------------
-- mlp_tb.vhd
-- AXI-Stream + AXI-Lite Wrapper Testbench for MLP Neural Network
--
-- Test 1-3: AXI-Stream üzerinden 3 farklı sınıf testi
--   - DMA'nın göndereceği gibi 32-bit kelimeler (2 feature/word) gönderir
--   - TLAST ile MLP otomatik başlar
--   - STATUS ve RESULT register'ları AXI-Lite ile okunur
--
-- Test 4: Soft reset testi
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mlp_tb is
end entity mlp_tb;

architecture sim of mlp_tb is

    constant CLK_PERIOD : time := 10 ns;
    constant C_S_AXI_DATA_WIDTH : integer := 32;
    constant C_S_AXI_ADDR_WIDTH : integer := 4;

    -- Clock/Reset
    signal clk       : std_logic := '0';
    signal aresetn   : std_logic := '0';
    signal sim_done  : boolean := false;
    signal test_case : integer := 0;

    -- AXI-Lite Write Address
    signal awaddr  : std_logic_vector(3 downto 0) := (others => '0');
    signal awprot  : std_logic_vector(2 downto 0) := (others => '0');
    signal awvalid : std_logic := '0';
    signal awready : std_logic;

    -- AXI-Lite Write Data
    signal wdata   : std_logic_vector(31 downto 0) := (others => '0');
    signal wstrb   : std_logic_vector(3 downto 0) := "1111";
    signal wvalid  : std_logic := '0';
    signal wready  : std_logic;

    -- AXI-Lite Write Response
    signal bresp   : std_logic_vector(1 downto 0);
    signal bvalid  : std_logic;
    signal bready  : std_logic := '1';

    -- AXI-Lite Read Address
    signal araddr  : std_logic_vector(3 downto 0) := (others => '0');
    signal arprot  : std_logic_vector(2 downto 0) := (others => '0');
    signal arvalid : std_logic := '0';
    signal arready : std_logic;

    -- AXI-Lite Read Data
    signal rdata   : std_logic_vector(31 downto 0);
    signal rresp   : std_logic_vector(1 downto 0);
    signal rvalid  : std_logic;
    signal rready  : std_logic := '1';

    -- AXI-Stream
    signal axis_tdata  : std_logic_vector(31 downto 0) := (others => '0');
    signal axis_tvalid : std_logic := '0';
    signal axis_tready : std_logic;
    signal axis_tlast  : std_logic := '0';

    -- LED
    signal led : std_logic_vector(2 downto 0);

    -- Test input arrays (40 features as Q8.8 signed 16-bit)
    type input_array_t is array(0 to 39) of integer;

begin

    -- Clock generation
    clk_proc: process
    begin
        while not sim_done loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;

    -- ──────────────────────────────────────────
    -- DUT: mlp_axi_wrapper (AXI-Stream + AXI-Lite)
    -- ──────────────────────────────────────────
    DUT: entity work.mlp_axi_wrapper
        generic map (
            C_S_AXI_DATA_WIDTH => C_S_AXI_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH => C_S_AXI_ADDR_WIDTH
        )
        port map (
            S_AXI_ACLK    => clk,
            S_AXI_ARESETN  => aresetn,

            S_AXI_AWADDR   => awaddr,
            S_AXI_AWPROT   => awprot,
            S_AXI_AWVALID  => awvalid,
            S_AXI_AWREADY  => awready,

            S_AXI_WDATA    => wdata,
            S_AXI_WSTRB    => wstrb,
            S_AXI_WVALID   => wvalid,
            S_AXI_WREADY   => wready,

            S_AXI_BRESP    => bresp,
            S_AXI_BVALID   => bvalid,
            S_AXI_BREADY   => bready,

            S_AXI_ARADDR   => araddr,
            S_AXI_ARPROT   => arprot,
            S_AXI_ARVALID  => arvalid,
            S_AXI_ARREADY  => arready,

            S_AXI_RDATA    => rdata,
            S_AXI_RRESP    => rresp,
            S_AXI_RVALID   => rvalid,
            S_AXI_RREADY   => rready,

            S_AXIS_TDATA   => axis_tdata,
            S_AXIS_TVALID  => axis_tvalid,
            S_AXIS_TREADY  => axis_tready,
            S_AXIS_TLAST   => axis_tlast,

            o_led          => led
        );

    -- ──────────────────────────────────────────
    -- Main stimulus process
    -- ──────────────────────────────────────────
    stim_proc: process

        -- AXI-Lite okuma prosedürü
        procedure axi_lite_read(
            addr : in std_logic_vector(3 downto 0);
            data : out std_logic_vector(31 downto 0)
        ) is
        begin
            wait until rising_edge(clk);
            araddr  <= addr;
            arvalid <= '1';
            wait until rising_edge(clk) and arready = '1';
            arvalid <= '0';
            wait until rising_edge(clk) and rvalid = '1';
            data := rdata;
        end procedure;

        -- AXI-Lite yazma prosedürü
        procedure axi_lite_write(
            addr : in std_logic_vector(3 downto 0);
            data : in std_logic_vector(31 downto 0)
        ) is
        begin
            wait until rising_edge(clk);
            awaddr  <= addr;
            awvalid <= '1';
            wdata   <= data;
            wvalid  <= '1';
            wait until rising_edge(clk) and awready = '1' and wready = '1';
            awvalid <= '0';
            wvalid  <= '0';
            wait until rising_edge(clk) and bvalid = '1';
        end procedure;

        -- AXI-Stream ile 40 feature gönder (20 kelime)
        procedure send_features_stream(
            inputs : in input_array_t
        ) is
            variable word : std_logic_vector(31 downto 0);
        begin
            for i in 0 to 19 loop
                -- Her kelimede 2 feature: low=even, high=odd
                word(15 downto 0)  := std_logic_vector(to_signed(inputs(i*2), 16));
                word(31 downto 16) := std_logic_vector(to_signed(inputs(i*2 + 1), 16));

                -- TVALID kaldır ve TREADY bekle
                axis_tdata  <= word;
                axis_tvalid <= '1';
                if i = 19 then
                    axis_tlast <= '1';  -- Son kelime
                else
                    axis_tlast <= '0';
                end if;

                -- Handshake bekle
                wait until rising_edge(clk) and axis_tready = '1';
            end loop;

            -- TVALID düşür
            wait until rising_edge(clk);
            axis_tvalid <= '0';
            axis_tlast  <= '0';
        end procedure;

        -- MLP done bekle (polling)
        procedure wait_mlp_done is
            variable status_data : std_logic_vector(31 downto 0);
            variable timeout : integer := 0;
        begin
            loop
                axi_lite_read(x"4", status_data);  -- STATUS register
                if status_data(0) = '1' then
                    exit;  -- done = 1
                end if;
                timeout := timeout + 1;
                assert timeout < 20000
                    report "TIMEOUT: MLP islemi tamamlanmadi!"
                    severity failure;
            end loop;
        end procedure;

        -- Sonuç oku
        procedure read_result(
            result : out integer
        ) is
            variable result_data : std_logic_vector(31 downto 0);
        begin
            axi_lite_read(x"C", result_data);  -- RESULT register
            result := to_integer(unsigned(result_data(1 downto 0)));
        end procedure;

        variable result_class : integer;
        variable status_data  : std_logic_vector(31 downto 0);

        -- Test giriş verileri
        constant TEST1_SELL : input_array_t := (
            -32000, -32000, -32000, -32000, -32000,
            -32000, -32000, -32000, -32000, -32000,
            -32000, -32000, -32000, -32000, -32000,
            -32000, -32000, -32000, -32000, -32000,
            -32000, -32000, -32000, -32000, -32000,
            -32000, -32000, -32000, -32000, -32000,
            -32000, -32000, -32000, -32000, -32000,
            -32000, -32000, -32000, -32000, -32000
        );

        constant TEST2_HOLD : input_array_t := (
            10, 10, 10, 10, 10,
            10, 10, 10, 10, 10,
            10, 10, 10, 10, 10,
            10, 10, 10, 10, 10,
            10, 10, 10, 10, 10,
            10, 10, 10, 10, 10,
            10, 10, 10, 10, 10,
            10, 10, 10, 10, 10
        );

        constant TEST3_BUY : input_array_t := (
            32000, 32000, 32000, 32000, 32000,
            32000, 32000, 32000, 32000, 32000,
            32000, 32000, 32000, 32000, 32000,
            32000, 32000, 32000, 32000, 32000,
            32000, 32000, 32000, 32000, 32000,
            32000, 32000, 32000, 32000, 32000,
            32000, 32000, 32000, 32000, 32000,
            32000, 32000, 32000, 32000, 32000
        );

    begin
        report "=============================================";
        report "MLP AXI-STREAM WRAPPER TESTBENCH";
        report "=============================================";

        -- Reset
        aresetn <= '0';
        wait for CLK_PERIOD * 10;
        aresetn <= '1';
        wait for CLK_PERIOD * 5;

        -- ═══════════════════════════════════════
        -- TEST 1: SELL — Çok yüksek negatif değerler
        -- ═══════════════════════════════════════
        test_case <= 1;
        report "TEST 1: SELL icin AXI-Stream ile veri gonderme...";

        send_features_stream(TEST1_SELL);
        report "  -> Veri gonderildi, MLP otomatik basladi (TLAST)";

        wait_mlp_done;
        read_result(result_class);

        report "TEST 1 Sonuc: Class=" & integer'image(result_class);
        if result_class = 0 then
            report "  -> SELL (beklenen) ✓";
        else
            report "  -> Beklenenden farkli!";
        end if;
        wait for CLK_PERIOD * 20;

        -- ═══════════════════════════════════════
        -- TEST 2: HOLD — Sıfıra yakın değerler
        -- ═══════════════════════════════════════
        test_case <= 2;
        report "TEST 2: HOLD icin AXI-Stream ile veri gonderme...";

        send_features_stream(TEST2_HOLD);
        report "  -> Veri gonderildi, MLP otomatik basladi (TLAST)";

        wait_mlp_done;
        read_result(result_class);

        report "TEST 2 Sonuc: Class=" & integer'image(result_class);
        if result_class = 1 then
            report "  -> HOLD (beklenen) ✓";
        else
            report "  -> Beklenenden farkli!";
        end if;
        wait for CLK_PERIOD * 20;

        -- ═══════════════════════════════════════
        -- TEST 3: BUY — Çok yüksek pozitif değerler
        -- ═══════════════════════════════════════
        test_case <= 3;
        report "TEST 3: BUY icin AXI-Stream ile veri gonderme...";

        send_features_stream(TEST3_BUY);
        report "  -> Veri gonderildi, MLP otomatik basladi (TLAST)";

        wait_mlp_done;
        read_result(result_class);

        report "TEST 3 Sonuc: Class=" & integer'image(result_class);
        if result_class = 2 then
            report "  -> BUY (beklenen) ✓";
        else
            report "  -> Beklenenden farkli!";
        end if;
        wait for CLK_PERIOD * 20;

        -- ═══════════════════════════════════════
        -- TEST 4: Stream Ready flag kontrolü
        -- ═══════════════════════════════════════
        test_case <= 4;
        report "TEST 4: Stream ready flag kontrol...";

        axi_lite_read(x"4", status_data);
        if status_data(2) = '1' then
            report "  -> stream_ready = 1 (beklenen) ✓";
        else
            report "  -> stream_ready = 0, beklenmiyor!";
        end if;

        -- ═══════════════════════════════════════
        report "=============================================";
        report "TAMAMLANDI — Tum testler bitti.";
        report "=============================================";

        wait for CLK_PERIOD * 100;
        sim_done <= true;
        wait;
    end process;

end architecture sim;
