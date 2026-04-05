--------------------------------------------------------------------------------
-- MLP Top Module
-- Multi-Layer Perceptron Neural Network
-- Architecture: 40 -> 64 -> 32 -> 16 -> 3 (with ReLU activation)
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mlp is
    port (
        i_clk           : in  std_logic;
        i_reset         : in  std_logic;
        
        -- Control interface
        i_start         : in  std_logic;
        o_done          : out std_logic;
        o_busy          : out std_logic;
        
        -- Input data interface (40 inputs, written sequentially)
        i_input_wr_en   : in  std_logic;
        i_input_addr    : in  unsigned(5 downto 0);
        i_input_data    : in  signed(15 downto 0);
        
        -- Output interface
        o_class_result  : out unsigned(1 downto 0);
        
        -- LED outputs (active high for classification)
        o_led           : out std_logic_vector(2 downto 0)
    );
end entity mlp;

architecture Behavioral of mlp is

    -- Constants
    constant DATA_WIDTH : integer := 16;
    
    -- Component declarations
    component MAC_Unit is
        port (
            i_clk       : in  std_logic;
            i_reset     : in  std_logic;
            i_enable    : in  std_logic;
            i_clear_acc : in  std_logic;
            i_add_bias  : in  std_logic;
            i_data      : in  signed(15 downto 0);
            i_weight    : in  signed(15 downto 0);
            i_bias      : in  signed(15 downto 0);
            o_result    : out signed(15 downto 0);
            o_valid     : out std_logic
        );
    end component;
    
    component PingPong_RAM is
        generic (
            DEPTH : integer := 64;
            WIDTH : integer := 16
        );
        port (
            i_clk       : in  std_logic;
            i_swap      : in  std_logic;
            i_wr_en     : in  std_logic;
            i_wr_addr   : in  unsigned(5 downto 0);
            i_wr_data   : in  signed(15 downto 0);
            i_rd_addr   : in  unsigned(5 downto 0);
            o_rd_data   : out signed(15 downto 0)
        );
    end component;
    
    component Controller_FSM is
        port (
            i_clk           : in  std_logic;
            i_reset         : in  std_logic;
            i_start         : in  std_logic;
            i_ram_data      : in  signed(15 downto 0);
            o_done          : out std_logic;
            o_busy          : out std_logic;
            o_layer_idx     : out unsigned(2 downto 0);
            o_weight_addr   : out unsigned(11 downto 0);
            o_bias_addr     : out unsigned(5 downto 0);
            o_input_addr    : out unsigned(5 downto 0);
            o_output_addr   : out unsigned(5 downto 0);
            o_output_wr_en  : out std_logic;
            o_mac_enable    : out std_logic;
            o_mac_clear     : out std_logic;
            o_mac_add_bias  : out std_logic;
            o_ram_swap      : out std_logic;
            o_apply_relu    : out std_logic;
            o_class_result  : out unsigned(1 downto 0)
        );
    end component;
    
    component weight_rom is
        generic (
            DATA_WIDTH : integer := 16
        );
        port (
            i_clk           : in  std_logic;
            i_layer         : in  unsigned(2 downto 0);
            i_weight_neuron : in  unsigned(5 downto 0);
            i_weight_input  : in  unsigned(5 downto 0);
            o_weight        : out signed(DATA_WIDTH-1 downto 0);
            i_bias_neuron   : in  unsigned(5 downto 0);
            o_bias          : out signed(DATA_WIDTH-1 downto 0)
        );
    end component;
    
    -- FSM control signals
    signal fsm_done         : std_logic;
    signal fsm_busy         : std_logic;
    signal layer_idx        : unsigned(2 downto 0);
    signal weight_addr      : unsigned(11 downto 0);
    signal bias_addr        : unsigned(5 downto 0);
    signal fsm_input_addr   : unsigned(5 downto 0);
    signal output_addr      : unsigned(5 downto 0);
    signal output_wr_en     : std_logic;
    signal mac_enable       : std_logic;
    signal mac_clear        : std_logic;
    signal mac_add_bias     : std_logic;
    signal ram_swap         : std_logic;
    signal apply_relu       : std_logic;
    signal class_result     : unsigned(1 downto 0);
    
    -- MAC unit signals
    signal mac_input        : signed(15 downto 0);
    signal mac_weight       : signed(15 downto 0);
    signal mac_bias         : signed(15 downto 0);
    signal mac_result       : signed(15 downto 0);
    signal mac_valid        : std_logic;
    
    -- Activated result (after ReLU)
    signal activated_result : signed(15 downto 0);
    
    -- Ping-Pong RAM signals
    signal pp_wr_en         : std_logic;
    signal pp_wr_addr       : unsigned(5 downto 0);
    signal pp_wr_data       : signed(15 downto 0);
    signal pp_rd_addr       : unsigned(5 downto 0);
    signal pp_rd_data       : signed(15 downto 0);
    
    -- Input RAM (for first layer inputs)
    type input_ram_type is array(0 to 63) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal input_ram        : input_ram_type := (others => (others => '0'));
    signal input_rd_data    : signed(15 downto 0);
    
    -- Weight/bias from ROM
    signal rom_weight       : signed(15 downto 0);
    signal rom_bias         : signed(15 downto 0);
    
begin

    -- Input RAM write process
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_input_wr_en = '1' then
                input_ram(to_integer(i_input_addr)) <= std_logic_vector(i_input_data);
            end if;
        end if;
    end process;
    
    -- Input RAM read (synchronous)
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            input_rd_data <= signed(input_ram(to_integer(fsm_input_addr)));
        end if;
    end process;
    
    -- Controller FSM instantiation
    fsm_inst : Controller_FSM
        port map (
            i_clk           => i_clk,
            i_reset         => i_reset,
            i_start         => i_start,
            i_ram_data      => pp_rd_data,
            o_done          => fsm_done,
            o_busy          => fsm_busy,
            o_layer_idx     => layer_idx,
            o_weight_addr   => weight_addr,
            o_bias_addr     => bias_addr,
            o_input_addr    => fsm_input_addr,
            o_output_addr   => output_addr,
            o_output_wr_en  => output_wr_en,
            o_mac_enable    => mac_enable,
            o_mac_clear     => mac_clear,
            o_mac_add_bias  => mac_add_bias,
            o_ram_swap      => ram_swap,
            o_apply_relu    => apply_relu,
            o_class_result  => class_result
        );
    
    -- Weight ROM instantiation
    weight_rom_inst : weight_rom
        generic map (
            DATA_WIDTH => 16
        )
        port map (
            i_clk           => i_clk,
            i_layer         => layer_idx,
            i_weight_neuron => output_addr,
            i_weight_input  => fsm_input_addr,
            o_weight        => rom_weight,
            i_bias_neuron   => output_addr,
            o_bias          => rom_bias
        );
    
    -- MAC input source selection
    mac_input <= input_rd_data when layer_idx = 0 else pp_rd_data;
    mac_weight <= rom_weight;
    mac_bias <= rom_bias;
    
    -- MAC Unit instantiation
    mac_inst : MAC_Unit
        port map (
            i_clk       => i_clk,
            i_reset     => i_reset,
            i_enable    => mac_enable,
            i_clear_acc => mac_clear,
            i_add_bias  => mac_add_bias,
            i_data      => mac_input,
            i_weight    => mac_weight,
            i_bias      => mac_bias,
            o_result    => mac_result,
            o_valid     => mac_valid
        );
    
    -- ReLU activation
    activated_result <= mac_result when mac_result >= 0 else (others => '0');
    
    -- Ping-Pong RAM connections
    pp_wr_data <= activated_result when apply_relu = '1' else mac_result;
    pp_wr_en <= output_wr_en;
    pp_wr_addr <= output_addr;
    pp_rd_addr <= fsm_input_addr;
    
    -- Ping-Pong RAM instantiation
    pp_ram_inst : PingPong_RAM
        generic map (
            DEPTH => 64,
            WIDTH => 16
        )
        port map (
            i_clk       => i_clk,
            i_swap      => ram_swap,
            i_wr_en     => pp_wr_en,
            i_wr_addr   => pp_wr_addr,
            i_wr_data   => pp_wr_data,
            i_rd_addr   => pp_rd_addr,
            o_rd_data   => pp_rd_data
        );
    
    -- Output assignments
    o_done <= fsm_done;
    o_busy <= fsm_busy;
    o_class_result <= class_result;
    
    -- LED outputs (latched - son sonucu tutar)
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_reset = '1' then
                o_led <= (others => '0');
            elsif fsm_done = '1' then
                case to_integer(class_result) is
                    when 0 => o_led <= "001";  -- SELL
                    when 1 => o_led <= "010";  -- HOLD
                    when 2 => o_led <= "100";  -- BUY
                    when others => o_led <= "000";
                end case;
            end if;
        end if;
    end process;

end architecture Behavioral;
