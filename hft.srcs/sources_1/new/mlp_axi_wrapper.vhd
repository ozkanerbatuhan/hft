--------------------------------------------------------------------------------
-- mlp_axi_wrapper.vhd
-- AXI4-Lite Slave + AXI4-Stream Slave Wrapper for MLP Neural Network
--
-- Veri girişi DMA üzerinden AXI4-Stream ile yapılır (yüksek hız).
-- Kontrol ve sonuç okuma AXI4-Lite üzerinden yapılır.
--
-- AXI-Lite Register Haritası:
-- Base Address + Offset  |  R/W  |  Açıklama
-- ─────────────────────────────────────────────────────
--  0x00  CTRL_REG         W      bit 0 = soft_reset (pulse)
--  0x04  STATUS_REG       R      bit 0 = done, bit 1 = busy,
--                                bit 2 = stream_ready (veri kabul edebilir)
--  0x08  (reserved)
--  0x0C  RESULT_REG       R      bits [1:0] = class result (0=SELL,1=HOLD,2=BUY)
--
-- AXI4-Stream Slave:
--   DMA'dan gelen 32-bit veri (her kelimede 2 adet Q8.8 feature):
--     TDATA[15:0]  = feature[2*n]     (çift indeks)
--     TDATA[31:16] = feature[2*n + 1] (tek indeks)
--   20 clock cycle'da 40 feature alınır.
--   TLAST geldiğinde MLP hesaplaması otomatik başlar.
--
-- Kullanım (DMA ile):
--   1) PS tarafı DMA ile 80 byte (40 × Q8.8) gönderir
--   2) TLAST ile MLP otomatik başlar
--   3) STATUS_REG'den done=1 olana kadar poll et
--   4) RESULT_REG'den sınıflandırma sonucunu oku
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mlp_axi_wrapper is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 4
    );
    port (
        -- AXI4-Lite Slave Interface (Kontrol/Durum/Sonuç)
        S_AXI_ACLK     : in  std_logic;
        S_AXI_ARESETN   : in  std_logic;

        -- AXI-Lite Write Address Channel
        S_AXI_AWADDR    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT    : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID   : in  std_logic;
        S_AXI_AWREADY   : out std_logic;

        -- AXI-Lite Write Data Channel
        S_AXI_WDATA     : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB     : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID    : in  std_logic;
        S_AXI_WREADY    : out std_logic;

        -- AXI-Lite Write Response Channel
        S_AXI_BRESP     : out std_logic_vector(1 downto 0);
        S_AXI_BVALID    : out std_logic;
        S_AXI_BREADY    : in  std_logic;

        -- AXI-Lite Read Address Channel
        S_AXI_ARADDR    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT    : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID   : in  std_logic;
        S_AXI_ARREADY   : out std_logic;

        -- AXI-Lite Read Data Channel
        S_AXI_RDATA     : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP     : out std_logic_vector(1 downto 0);
        S_AXI_RVALID    : out std_logic;
        S_AXI_RREADY    : in  std_logic;

        -- ★ AXI4-Stream Slave Interface (DMA'dan gelen veri)
        S_AXIS_ACLK     : in  std_logic;
        S_AXIS_ARESETN  : in  std_logic;
        S_AXIS_TDATA    : in  std_logic_vector(31 downto 0);
        S_AXIS_TVALID   : in  std_logic;
        S_AXIS_TREADY   : out std_logic;
        S_AXIS_TLAST    : in  std_logic;

        -- LED outputs (directly from MLP)
        o_led           : out std_logic_vector(7 downto 0);

        -- ★ Debug outputs for oscilloscope probing
        -- PMOD JA pinlerine bağlanacak
        dbg_stream_active : out std_logic;  -- JA1: DMA'dan veri akışı var
        dbg_mlp_busy      : out std_logic;  -- JA2: MLP hesaplama devam ediyor
        dbg_mlp_done      : out std_logic;  -- JA3: MLP hesaplama bitti (pulse)
        dbg_tlast_seen    : out std_logic;  -- JA4: TLAST geldi (pulse)

        -- =====================================================================
        -- DEBUG STRETCHERS (SILINEBILIR)
        -- =====================================================================
        dbg_stream_active_jb : out std_logic;
        dbg_mlp_busy_jb      : out std_logic;
        dbg_mlp_done_jb      : out std_logic;
        dbg_tlast_seen_jb    : out std_logic;

        dbg_stream_active_jc : out std_logic;
        dbg_mlp_busy_jc      : out std_logic;
        dbg_mlp_done_jc      : out std_logic;
        dbg_tlast_seen_jc    : out std_logic;

        dbg_stream_active_jd : out std_logic;
        dbg_mlp_busy_jd      : out std_logic;
        dbg_mlp_done_jd      : out std_logic;
        dbg_tlast_seen_jd    : out std_logic
    );
end entity mlp_axi_wrapper;

architecture Behavioral of mlp_axi_wrapper is

    -- ──────────────────────────────────────────
    -- MLP component declaration
    -- ──────────────────────────────────────────
    component mlp is
        port (
            i_clk           : in  std_logic;
            i_reset         : in  std_logic;
            i_start         : in  std_logic;
            o_done          : out std_logic;
            o_busy          : out std_logic;
            i_input_wr_en   : in  std_logic;
            i_input_addr    : in  unsigned(5 downto 0);
            i_input_data    : in  signed(15 downto 0);
            o_class_result  : out unsigned(1 downto 0);
            o_led           : out std_logic_vector(2 downto 0)
        );
    end component;

    -- ──────────────────────────────────────────
    -- Internal register addresses (word-aligned)
    -- ──────────────────────────────────────────
    constant ADDR_CTRL   : std_logic_vector(3 downto 0) := x"0";  -- 0x00
    constant ADDR_STATUS : std_logic_vector(3 downto 0) := x"4";  -- 0x04
    constant ADDR_RESULT : std_logic_vector(3 downto 0) := x"C";  -- 0x0C

    -- ──────────────────────────────────────────
    -- AXI-Lite handshake signals
    -- ──────────────────────────────────────────
    signal axi_awready  : std_logic := '0';
    signal axi_wready   : std_logic := '0';
    signal axi_bvalid   : std_logic := '0';
    signal axi_arready  : std_logic := '0';
    signal axi_rvalid   : std_logic := '0';
    signal axi_rdata    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');

    signal aw_en        : std_logic := '1';
    signal awaddr_reg   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal araddr_reg   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');

    -- ──────────────────────────────────────────
    -- MLP control / status signals
    -- ──────────────────────────────────────────
    signal mlp_reset     : std_logic;
    signal mlp_start     : std_logic := '0';
    signal mlp_done      : std_logic;
    signal mlp_busy      : std_logic;
    signal mlp_class     : unsigned(1 downto 0);
    signal mlp_led       : std_logic_vector(2 downto 0);

    -- MLP input write signals (muxed between even and odd feature)
    signal mlp_wr_en_mux   : std_logic := '0';
    signal mlp_wr_addr_mux : unsigned(5 downto 0)  := (others => '0');
    signal mlp_wr_data_mux : signed(15 downto 0)   := (others => '0');

    -- Even feature write (from FSM — same clock as handshake)
    signal even_wr_en    : std_logic := '0';
    signal even_wr_addr  : unsigned(5 downto 0)  := (others => '0');
    signal even_wr_data  : signed(15 downto 0)   := (others => '0');

    -- Odd feature write (1 clock delayed — high 16-bit of TDATA)
    signal odd_wr_pending : std_logic := '0';
    signal odd_wr_addr    : unsigned(5 downto 0)  := (others => '0');
    signal odd_wr_data    : signed(15 downto 0)   := (others => '0');

    -- Write register from AXI-Lite
    signal reg_ctrl      : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');

    -- ──────────────────────────────────────────
    -- AXI-Stream receive FSM
    -- ──────────────────────────────────────────
    type stream_state_type is (
        ST_IDLE,        -- Veri bekleniyor, TREADY = '1'
        ST_RECEIVING,   -- Veri alınıyor (20 clock cycle)
        ST_ODD_LAST,    -- Son kelimenin tek feature'ını yaz
        ST_START_MLP,   -- MLP start pulse gönder (1 clock)
        ST_WAIT_DONE    -- MLP bitmesini bekle
    );
    signal stream_state     : stream_state_type := ST_IDLE;
    signal stream_idx       : integer range 0 to 19 := 0;
    signal s_axis_tready_i  : std_logic := '1';

    -- Soft reset from CTRL register
    signal soft_reset_r     : std_logic := '0';
    signal soft_reset_pulse : std_logic := '0';

    -- Debug signals
    signal dbg_tlast_pulse  : std_logic := '0';

    -- =========================================================================
    -- DEBUG SIGNALS
    -- =========================================================================
    signal dbg_stream_active_i : std_logic;
    signal dbg_mlp_busy_i      : std_logic;
    signal dbg_mlp_done_i      : std_logic;
    signal dbg_tlast_seen_i    : std_logic;

    -- Latch for AXI-Lite Status Register (Clear on Read)
    signal mlp_done_latched    : std_logic := '0';

begin

    -- ──────────────────────────────────────────
    -- AXI-Lite output wiring
    -- ──────────────────────────────────────────
    S_AXI_AWREADY <= axi_awready;
    S_AXI_WREADY  <= axi_wready;
    S_AXI_BRESP   <= "00";  -- OKAY
    S_AXI_BVALID  <= axi_bvalid;
    S_AXI_ARREADY <= axi_arready;
    S_AXI_RDATA   <= axi_rdata;
    S_AXI_RRESP   <= "00";  -- OKAY
    S_AXI_RVALID  <= axi_rvalid;

    -- AXI-Stream output
    S_AXIS_TREADY <= s_axis_tready_i;

    -- =========================================================================
    -- ALL DEBUG SIGNALS TO LEDs (LD0 - LD7)
    -- =========================================================================
    o_led(0) <= dbg_stream_active_i;  -- LD0 (Raw)
    o_led(1) <= dbg_mlp_busy_i;       -- LD1 (Raw)
    o_led(2) <= dbg_mlp_done_i;       -- LD2 (Raw)
    o_led(3) <= dbg_tlast_seen_i;     -- LD3 (Raw)
    
    o_led(4) <= mlp_led(0);           -- LD4 (MLP Result SELL)
    o_led(5) <= mlp_led(1);           -- LD5 (MLP Result HOLD)
    o_led(6) <= mlp_led(2);           -- LD6 (MLP Result BUY)
    o_led(7) <= '0';                  -- LD7 (Clock kapatildi)

    -- Debug pin assignments (Raw signals mapped to internal variables)
    dbg_stream_active_i <= '1' when (stream_state = ST_RECEIVING or stream_state = ST_ODD_LAST) else '0';
    dbg_mlp_busy_i      <= mlp_busy;
    dbg_mlp_done_i      <= mlp_done;
    dbg_tlast_seen_i    <= dbg_tlast_pulse;

    -- PMOD JA (Original Raw Output)
    dbg_stream_active <= dbg_stream_active_i;
    dbg_mlp_busy      <= dbg_mlp_busy_i;
    dbg_mlp_done      <= dbg_mlp_done_i;
    dbg_tlast_seen    <= dbg_tlast_seen_i;

    -- =========================================================================
    -- DEBUG STRETCHERS REMOVED
    -- Portlar '0' a baglandi (Block Design bozulmamasi icin)
    -- =========================================================================
    dbg_stream_active_jb <= '0';
    dbg_mlp_busy_jb      <= '0';
    dbg_mlp_done_jb      <= '0';
    dbg_tlast_seen_jb    <= '0';

    dbg_stream_active_jc <= '0';
    dbg_mlp_busy_jc      <= '0';
    dbg_mlp_done_jc      <= '0';
    dbg_tlast_seen_jc    <= '0';

    dbg_stream_active_jd <= '0'; 
    dbg_mlp_busy_jd      <= '0';
    dbg_mlp_done_jd      <= '0';
    dbg_tlast_seen_jd    <= '0';

    -- Active-high reset for MLP (AXI uses active-low)
    mlp_reset <= (not S_AXI_ARESETN) or soft_reset_pulse;

    -- ──────────────────────────────────────────
    -- MLP input write mux: odd feature has priority (1-clk delayed)
    -- Odd ve even aynı clock'ta çakışmaz çünkü:
    --   Clock N: TVALID handshake → even feature yazılır, odd latched
    --   Clock N+1: odd feature yazılır, handshake yok (TREADY düşmez)
    -- Ama güvenlik için odd'a öncelik veriyoruz.
    -- ──────────────────────────────────────────
    mlp_wr_en_mux   <= odd_wr_pending or even_wr_en;
    mlp_wr_addr_mux <= odd_wr_addr when odd_wr_pending = '1' else even_wr_addr;
    mlp_wr_data_mux <= odd_wr_data when odd_wr_pending = '1' else even_wr_data;

    -- ──────────────────────────────────────────
    -- AXI-Lite Write Address Handshake
    -- ──────────────────────────────────────────
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_awready <= '0';
                aw_en       <= '1';
                awaddr_reg  <= (others => '0');
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

    -- ──────────────────────────────────────────
    -- AXI-Lite Write Data Handshake
    -- ──────────────────────────────────────────
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

    -- ──────────────────────────────────────────
    -- AXI-Lite Register Write Logic
    -- Sadece CTRL register yazılabilir (INPUT kaldırıldı)
    -- ──────────────────────────────────────────
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                reg_ctrl <= (others => '0');
            else
                if axi_awready = '1' and axi_wready = '1' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' then
                    case awaddr_reg is
                        when ADDR_CTRL =>
                            reg_ctrl <= S_AXI_WDATA;
                        when others =>
                            null;
                    end case;
                end if;
            end if;
        end if;
    end process;

    -- ──────────────────────────────────────────
    -- AXI-Lite Write Response
    -- ──────────────────────────────────────────
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_bvalid <= '0';
            else
                if axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0' then
                    axi_bvalid <= '1';
                elsif S_AXI_BREADY = '1' and axi_bvalid = '1' then
                    axi_bvalid <= '0';
                end if;
            end if;
        end if;
    end process;

    -- ──────────────────────────────────────────
    -- AXI-Lite Read Address Handshake
    -- ──────────────────────────────────────────
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_arready <= '0';
                araddr_reg  <= (others => '0');
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

    -- ──────────────────────────────────────────
    -- AXI-Lite Read Data Logic
    -- ──────────────────────────────────────────
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_rvalid <= '0';
                axi_rdata  <= (others => '0');
            else
                if axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0' then
                    axi_rvalid <= '1';

                    -- Register read mux
                    case araddr_reg is
                        when ADDR_CTRL =>
                            axi_rdata <= reg_ctrl;

                        when ADDR_STATUS =>
                            axi_rdata <= (others => '0');
                            axi_rdata(0) <= mlp_done_latched;
                            axi_rdata(1) <= mlp_busy;
                            axi_rdata(2) <= s_axis_tready_i;  -- stream ready flag

                        when ADDR_RESULT =>
                            axi_rdata <= (others => '0');
                            axi_rdata(1 downto 0) <= std_logic_vector(mlp_class);

                        when others =>
                            axi_rdata <= (others => '0');
                    end case;

                elsif S_AXI_RREADY = '1' and axi_rvalid = '1' then
                    axi_rvalid <= '0';
                end if;
            end if;
        end if;
    end process;

    -- ──────────────────────────────────────────
    -- Soft Reset pulse generation (CTRL register bit 0)
    -- Tek darbe üretir — hata durumlarında MLP'yi sıfırlamak için
    -- ──────────────────────────────────────────
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                soft_reset_r     <= '0';
                soft_reset_pulse <= '0';
            else
                soft_reset_r     <= reg_ctrl(0);
                soft_reset_pulse <= reg_ctrl(0) and (not soft_reset_r);  -- rising edge detect
            end if;
        end if;
    end process;

    -- ══════════════════════════════════════════
    -- ★ AXI4-Stream Receive FSM
    --
    -- DMA'dan gelen 32-bit verileri alır.
    -- Her 32-bit kelime 2 adet Q8.8 feature içerir:
    --   TDATA[15:0]  = feature[2*idx]     (çift, even)
    --   TDATA[31:16] = feature[2*idx + 1] (tek, odd)
    --
    -- Yazma Stratejisi (tek portlu input_ram ile uyumlu):
    --   Clock N   : handshake olur → even feature (low 16-bit) yazılır
    --   Clock N+1 : odd feature (high 16-bit) yazılır (1-clk gecikme)
    --   Clock N+1 : aynı anda bir sonraki kelime alınmaz (tready='0'
    --               olduğu için veya DMA beklediği için)
    --
    -- Gerçek akış:
    --   TREADY her 2 clock'ta 1 clock aktif olur → efektif:
    --     2 clk/kelime × 20 kelime = 40 clk → 40 feature
    --   Bu hâlâ AXI-Lite'tan (~80+ clk) çok daha hızlı.
    --
    -- TLAST geldiğinde MLP otomatik başlatılır.
    -- ══════════════════════════════════════════
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' or soft_reset_pulse = '1' then
                stream_state    <= ST_IDLE;
                stream_idx      <= 0;
                s_axis_tready_i <= '1';
                even_wr_en      <= '0';
                even_wr_addr    <= (others => '0');
                even_wr_data    <= (others => '0');
                mlp_start       <= '0';
            else
                -- Defaults per cycle
                even_wr_en <= '0';
                mlp_start  <= '0';

                case stream_state is

                    -- ────────────────────────────
                    -- IDLE: Veri bekleniyor
                    -- ────────────────────────────
                    when ST_IDLE =>
                        s_axis_tready_i <= '1';
                        stream_idx      <= 0;

                        if S_AXIS_TVALID = '1' and s_axis_tready_i = '1' then
                            -- İlk kelime geldi — çift feature yaz
                            even_wr_en   <= '1';
                            even_wr_addr <= to_unsigned(0, 6);
                            even_wr_data <= signed(S_AXIS_TDATA(15 downto 0));
                            -- Odd feature bir sonraki clock'ta yazılacak (odd process)
                            s_axis_tready_i <= '0';  -- odd yazılacak, bekle

                            if S_AXIS_TLAST = '1' then
                                -- Tek kelimelik transfer (edge case)
                                stream_state <= ST_ODD_LAST;
                            else
                                stream_state <= ST_RECEIVING;
                            end if;
                        end if;

                    -- ────────────────────────────
                    -- RECEIVING: Veri alımı devam ediyor
                    -- Her 2 clock: 1 clk even yaz, 1 clk odd yaz
                    -- ────────────────────────────
                    when ST_RECEIVING =>
                        -- odd_wr_pending aktifse, bu clock odd yazılıyor
                        -- odd bittikten sonra tready tekrar kalkacak
                        if odd_wr_pending = '0' then
                            -- Odd bitti, yeni kelime almaya hazır
                            s_axis_tready_i <= '1';

                            if S_AXIS_TVALID = '1' then
                                stream_idx <= stream_idx + 1;

                                -- Çift feature yaz
                                even_wr_en   <= '1';
                                even_wr_addr <= to_unsigned((stream_idx + 1) * 2, 6);
                                even_wr_data <= signed(S_AXIS_TDATA(15 downto 0));
                                s_axis_tready_i <= '0';  -- odd yazılacak, bekle

                                if S_AXIS_TLAST = '1' or stream_idx = 18 then
                                    -- Son kelime (idx 19 olacak sonraki cycle'da)
                                    stream_state <= ST_ODD_LAST;
                                end if;
                            end if;
                        else
                            -- Odd yazılıyor, tready düşük tut
                            s_axis_tready_i <= '0';
                        end if;

                    -- ────────────────────────────
                    -- ODD_LAST: Son kelimenin odd feature'ını yaz, sonra MLP başlat
                    -- ────────────────────────────
                    when ST_ODD_LAST =>
                        s_axis_tready_i <= '0';
                        -- odd_wr_pending bu clock aktif olacak (önceki handshake'ten)
                        -- Bir clock bekle, odd yazılsın
                        if odd_wr_pending = '0' then
                            stream_state <= ST_START_MLP;
                        end if;

                    -- ────────────────────────────
                    -- START_MLP: MLP hesaplamasını başlat
                    -- ────────────────────────────
                    when ST_START_MLP =>
                        mlp_start       <= '1';  -- tek clock start pulse
                        s_axis_tready_i <= '0';
                        stream_state    <= ST_WAIT_DONE;

                    -- ────────────────────────────
                    -- WAIT_DONE: MLP bitmesini bekle
                    -- ────────────────────────────
                    when ST_WAIT_DONE =>
                        s_axis_tready_i <= '0';
                        if mlp_done = '1' then
                            -- MLP bitti — yeni veri kabul etmeye hazır
                            stream_state    <= ST_IDLE;
                            s_axis_tready_i <= '1';
                            stream_idx      <= 0;
                        end if;

                    when others =>
                        stream_state <= ST_IDLE;

                end case;
            end if;
        end if;
    end process;

    -- ══════════════════════════════════════════
    -- Odd Feature Delayed Write Process
    -- Handshake clock'ında TDATA[31:16]'yı yakala,
    -- sonraki clock'ta input_ram'e yaz.
    -- ══════════════════════════════════════════
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' or soft_reset_pulse = '1' then
                odd_wr_pending <= '0';
                odd_wr_addr    <= (others => '0');
                odd_wr_data    <= (others => '0');
            else
                if even_wr_en = '1' then
                    -- Even feature yazıldığı clock'ta odd'u latchle
                    -- Sonraki clock'ta odd_wr_pending aktif olacak
                    odd_wr_pending <= '1';
                    odd_wr_addr    <= even_wr_addr + 1;  -- even addr + 1 = odd addr
                    odd_wr_data    <= signed(S_AXIS_TDATA(31 downto 16));
                else
                    odd_wr_pending <= '0';
                end if;
            end if;
        end if;
    end process;

    -- TLAST pulse capture (1-clock pulse when TLAST detected)
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                dbg_tlast_pulse <= '0';
            else
                if S_AXIS_TVALID = '1' and s_axis_tready_i = '1' and S_AXIS_TLAST = '1' then
                    dbg_tlast_pulse <= '1';
                else
                    dbg_tlast_pulse <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Latch mlp_done for AXI-Lite read (Clear on Read)
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                mlp_done_latched <= '0';
            else
                if mlp_done = '1' then
                    mlp_done_latched <= '1';
                elsif axi_arready = '1' and S_AXI_ARVALID = '1' and araddr_reg = ADDR_STATUS then
                    mlp_done_latched <= '0';
                end if;
            end if;
        end if;
    end process;

    -- ──────────────────────────────────────────
    -- MLP Core Instance
    -- ──────────────────────────────────────────
    mlp_inst : mlp
        port map (
            i_clk          => S_AXI_ACLK,
            i_reset        => mlp_reset,
            i_start        => mlp_start,
            o_done         => mlp_done,
            o_busy         => mlp_busy,
            i_input_wr_en  => mlp_wr_en_mux,
            i_input_addr   => mlp_wr_addr_mux,
            i_input_data   => mlp_wr_data_mux,
            o_class_result => mlp_class,
            o_led          => mlp_led
        );

end architecture Behavioral;
