--------------------------------------------------------------------------------
-- mlp_axi_wrapper.vhd
-- AXI4-Lite Slave Wrapper for MLP Neural Network
--
-- PS (Zynq ARM) tarafından MLP bloğuna veri yazılır ve sonuç okunur.
-- Base Address + Offset  |  R/W  |  Açıklama
-- ─────────────────────────────────────────────────────
--  0x00  CTRL_REG         W      bit 0 = start
--  0x04  STATUS_REG       R      bit 0 = done, bit 1 = busy
--  0x08  INPUT_DATA_REG   W      bits [15:0] = input data
--                                bits [21:16] = input addr (0..39)
--                                bit  [31]    = write enable (auto-set)
--  0x0C  RESULT_REG       R      bits [1:0] = class result (0=SELL,1=HOLD,2=BUY)
--
-- Kullanım:
--   1) INPUT_DATA_REG'e 40 adet Q8.8 giriş değeri yaz (addr 0..39)
--   2) CTRL_REG'e 0x1 yaz → MLP başlar
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
        -- AXI4-Lite Slave Interface
        S_AXI_ACLK     : in  std_logic;
        S_AXI_ARESETN   : in  std_logic;

        -- Write Address Channel
        S_AXI_AWADDR    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT    : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID   : in  std_logic;
        S_AXI_AWREADY   : out std_logic;

        -- Write Data Channel
        S_AXI_WDATA     : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB     : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID    : in  std_logic;
        S_AXI_WREADY    : out std_logic;

        -- Write Response Channel
        S_AXI_BRESP     : out std_logic_vector(1 downto 0);
        S_AXI_BVALID    : out std_logic;
        S_AXI_BREADY    : in  std_logic;

        -- Read Address Channel
        S_AXI_ARADDR    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT    : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID   : in  std_logic;
        S_AXI_ARREADY   : out std_logic;

        -- Read Data Channel
        S_AXI_RDATA     : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP     : out std_logic_vector(1 downto 0);
        S_AXI_RVALID    : out std_logic;
        S_AXI_RREADY    : in  std_logic;

        -- LED outputs (directly from MLP)
        o_led           : out std_logic_vector(2 downto 0)
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
    constant ADDR_INPUT  : std_logic_vector(3 downto 0) := x"8";  -- 0x08
    constant ADDR_RESULT : std_logic_vector(3 downto 0) := x"C";  -- 0x0C

    -- ──────────────────────────────────────────
    -- AXI handshake signals
    -- ──────────────────────────────────────────
    signal axi_awready  : std_logic := '0';
    signal axi_wready   : std_logic := '0';
    signal axi_bvalid   : std_logic := '0';
    signal axi_arready  : std_logic := '0';
    signal axi_rvalid   : std_logic := '0';
    signal axi_rdata    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');

    signal aw_en        : std_logic := '1';  -- write address enable
    signal awaddr_reg   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal araddr_reg   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');

    -- ──────────────────────────────────────────
    -- MLP control / status signals
    -- ──────────────────────────────────────────
    signal mlp_reset     : std_logic;
    signal mlp_start     : std_logic := '0';
    signal mlp_start_r   : std_logic := '0';  -- one-shot pulse
    signal mlp_done      : std_logic;
    signal mlp_busy      : std_logic;
    signal mlp_wr_en     : std_logic := '0';
    signal mlp_wr_addr   : unsigned(5 downto 0)  := (others => '0');
    signal mlp_wr_data   : signed(15 downto 0)   := (others => '0');
    signal mlp_class     : unsigned(1 downto 0);
    signal mlp_led       : std_logic_vector(2 downto 0);

    -- Write register from AXI
    signal reg_ctrl      : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    signal reg_input     : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');

    -- Write pulse for input register
    signal input_wr_pulse : std_logic := '0';

begin

    -- ──────────────────────────────────────────
    -- AXI output wiring
    -- ──────────────────────────────────────────
    S_AXI_AWREADY <= axi_awready;
    S_AXI_WREADY  <= axi_wready;
    S_AXI_BRESP   <= "00";  -- OKAY
    S_AXI_BVALID  <= axi_bvalid;
    S_AXI_ARREADY <= axi_arready;
    S_AXI_RDATA   <= axi_rdata;
    S_AXI_RRESP   <= "00";  -- OKAY
    S_AXI_RVALID  <= axi_rvalid;

    o_led <= mlp_led;

    -- Active-high reset for MLP (AXI uses active-low)
    mlp_reset <= not S_AXI_ARESETN;

    -- ──────────────────────────────────────────
    -- AXI Write Address Handshake
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
    -- AXI Write Data Handshake
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
    -- AXI Register Write Logic
    -- ──────────────────────────────────────────
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                reg_ctrl       <= (others => '0');
                reg_input      <= (others => '0');
                input_wr_pulse <= '0';
            else
                input_wr_pulse <= '0';  -- default: clear pulse

                if axi_awready = '1' and axi_wready = '1' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' then
                    case awaddr_reg is
                        when ADDR_CTRL =>
                            reg_ctrl <= S_AXI_WDATA;
                        when ADDR_INPUT =>
                            reg_input      <= S_AXI_WDATA;
                            input_wr_pulse <= '1';
                        when others =>
                            null;
                    end case;
                end if;
            end if;
        end if;
    end process;

    -- ──────────────────────────────────────────
    -- AXI Write Response
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
    -- AXI Read Address Handshake
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
    -- AXI Read Data Logic
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
                            axi_rdata(0) <= mlp_done;
                            axi_rdata(1) <= mlp_busy;

                        when ADDR_INPUT =>
                            axi_rdata <= reg_input;

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
    -- Start pulse generation (one-shot from CTRL register bit 0)
    -- ──────────────────────────────────────────
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                mlp_start_r <= '0';
                mlp_start   <= '0';
            else
                mlp_start_r <= reg_ctrl(0);
                mlp_start   <= reg_ctrl(0) and (not mlp_start_r);  -- rising edge detect
            end if;
        end if;
    end process;

    -- ──────────────────────────────────────────
    -- Input data decoding from INPUT_DATA_REG
    -- ──────────────────────────────────────────
    mlp_wr_en   <= input_wr_pulse;
    mlp_wr_addr <= unsigned(reg_input(21 downto 16));
    mlp_wr_data <= signed(reg_input(15 downto 0));

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
            i_input_wr_en  => mlp_wr_en,
            i_input_addr   => mlp_wr_addr,
            i_input_data   => mlp_wr_data,
            o_class_result => mlp_class,
            o_led          => mlp_led
        );

end architecture Behavioral;
