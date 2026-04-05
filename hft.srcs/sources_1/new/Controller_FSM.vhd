--------------------------------------------------------------------------------
-- Controller_FSM.vhd
-- Finite State Machine Controller for MLP Neural Network
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Controller_FSM is
    port (
        i_clk           : in  std_logic;
        i_reset         : in  std_logic;
        i_start         : in  std_logic;
        i_ram_data      : in  signed(15 downto 0);  -- RAM output for argmax comparison
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
end entity Controller_FSM;

architecture Behavioral of Controller_FSM is

    -- Layer constants
    constant LAYER1_IN  : integer := 40;
    constant LAYER1_OUT : integer := 64;
    constant LAYER2_IN  : integer := 64;
    constant LAYER2_OUT : integer := 32;
    constant LAYER3_IN  : integer := 32;
    constant LAYER3_OUT : integer := 16;
    constant LAYER4_IN  : integer := 16;
    constant LAYER4_OUT : integer := 3;

    type state_type is (
        IDLE, LOAD_BIAS, PROCESS_NEURON, APPLY_ACTIVATION,
        WRITE_RAM, NEXT_NEURON, NEXT_LAYER, FIND_MAX_INIT, FIND_MAX_READ, FIND_MAX_COMPARE, DONE_STATE
    );
    
    signal state            : state_type := IDLE;
    signal layer_counter    : unsigned(2 downto 0) := (others => '0');
    signal neuron_counter   : unsigned(5 downto 0) := (others => '0');
    signal input_counter    : unsigned(5 downto 0) := (others => '0');
    signal current_in_dim   : unsigned(6 downto 0);
    signal current_out_dim  : unsigned(6 downto 0);
    signal weight_offset    : unsigned(11 downto 0);
    signal max_index        : unsigned(1 downto 0) := (others => '0');
    signal compare_counter  : unsigned(1 downto 0) := (others => '0');
    
    -- Signals for argmax (finding maximum output)
    signal max_value        : signed(15 downto 0) := (others => '0');
    signal current_value    : signed(15 downto 0) := (others => '0');
    
begin

    -- Connect RAM output to current_value for comparison
    current_value <= i_ram_data;

    -- Layer dimensions
    process(layer_counter)
    begin
        case to_integer(layer_counter) is
            when 0 =>
                current_in_dim  <= to_unsigned(LAYER1_IN, 7);
                current_out_dim <= to_unsigned(LAYER1_OUT, 7);
            when 1 =>
                current_in_dim  <= to_unsigned(LAYER2_IN, 7);
                current_out_dim <= to_unsigned(LAYER2_OUT, 7);
            when 2 =>
                current_in_dim  <= to_unsigned(LAYER3_IN, 7);
                current_out_dim <= to_unsigned(LAYER3_OUT, 7);
            when 3 =>
                current_in_dim  <= to_unsigned(LAYER4_IN, 7);
                current_out_dim <= to_unsigned(LAYER4_OUT, 7);
            when others =>
                current_in_dim  <= to_unsigned(LAYER1_IN, 7);
                current_out_dim <= to_unsigned(LAYER1_OUT, 7);
        end case;
    end process;
    
    -- Weight offset
    process(layer_counter)
    begin
        case to_integer(layer_counter) is
            when 0 => weight_offset <= to_unsigned(0, 12);
            when 1 => weight_offset <= to_unsigned(2560, 12);
            when 2 => weight_offset <= to_unsigned(4608, 12);
            when 3 => weight_offset <= to_unsigned(5120, 12);
            when others => weight_offset <= to_unsigned(0, 12);
        end case;
    end process;
    
    -- Main FSM
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_reset = '1' then
                state <= IDLE;
                layer_counter <= (others => '0');
                neuron_counter <= (others => '0');
                input_counter <= (others => '0');
                max_index <= (others => '0');
                compare_counter <= (others => '0');
            else
                case state is
                    when IDLE =>
                        if i_start = '1' then
                            state <= LOAD_BIAS;
                            layer_counter <= (others => '0');
                            neuron_counter <= (others => '0');
                            input_counter <= (others => '0');
                        end if;
                    
                    when LOAD_BIAS =>
                        state <= PROCESS_NEURON;
                        input_counter <= (others => '0');
                    
                    when PROCESS_NEURON =>
                        if input_counter = resize(current_in_dim - 1, 6) then
                            state <= APPLY_ACTIVATION;
                        else
                            input_counter <= input_counter + 1;
                        end if;
                    
                    when APPLY_ACTIVATION =>
                        state <= WRITE_RAM;
                    
                    when WRITE_RAM =>
                        state <= NEXT_NEURON;
                    
                    when NEXT_NEURON =>
                        if neuron_counter = resize(current_out_dim - 1, 6) then
                            if layer_counter = 3 then
                                state <= FIND_MAX_INIT;
                                compare_counter <= (others => '0');
                                max_index <= (others => '0');
                                max_value <= (others => '0');
                            else
                                state <= NEXT_LAYER;
                            end if;
                        else
                            neuron_counter <= neuron_counter + 1;
                            state <= LOAD_BIAS;
                        end if;
                    
                    when NEXT_LAYER =>
                        layer_counter <= layer_counter + 1;
                        neuron_counter <= (others => '0');
                        input_counter <= (others => '0');
                        state <= LOAD_BIAS;
                    
                    when FIND_MAX_INIT =>
                        input_counter <= (others => '0');
                        compare_counter <= (others => '0');
                        max_value <= (others => '0');
                        max_index <= (others => '0');
                        state <= FIND_MAX_READ;
                    
                    when FIND_MAX_READ =>
                        state <= FIND_MAX_COMPARE;
                    
                    when FIND_MAX_COMPARE =>
                        if compare_counter = 0 then
                            max_value <= current_value;
                            max_index <= "00";
                        else
                            if current_value > max_value then
                                max_value <= current_value;
                                max_index <= compare_counter;
                            end if;
                        end if;
                        
                        if compare_counter = 2 then
                            state <= DONE_STATE;
                        else
                            compare_counter <= compare_counter + 1;
                            input_counter <= resize(compare_counter + 1, 6);
                            state <= FIND_MAX_READ;
                        end if;
                    
                    when DONE_STATE =>
                        if i_start = '1' then
                            state <= LOAD_BIAS;
                            layer_counter <= (others => '0');
                            neuron_counter <= (others => '0');
                            input_counter <= (others => '0');
                        end if;
                    
                    when others =>
                        state <= IDLE;
                end case;
            end if;
        end if;
    end process;
    
    -- Outputs
    o_layer_idx <= layer_counter;
    o_weight_addr <= weight_offset + resize(neuron_counter * resize(current_in_dim, neuron_counter'length), 12) + resize(input_counter, 12);
    o_bias_addr <= neuron_counter;
    o_input_addr <= input_counter;
    o_output_addr <= neuron_counter;
    
    o_mac_clear <= '1' when state = LOAD_BIAS else '0';
    o_mac_enable <= '1' when state = PROCESS_NEURON else '0';
    o_mac_add_bias <= '1' when state = APPLY_ACTIVATION else '0';
    o_output_wr_en <= '1' when state = WRITE_RAM else '0';
    o_ram_swap <= '1' when state = NEXT_LAYER else '0';
    o_apply_relu <= '1' when (state = APPLY_ACTIVATION or state = WRITE_RAM) and layer_counter /= 3 else '0';
    
    o_done <= '1' when state = DONE_STATE else '0';
    o_busy <= '0' when state = IDLE or state = DONE_STATE else '1';
    o_class_result <= max_index;

end architecture Behavioral;
