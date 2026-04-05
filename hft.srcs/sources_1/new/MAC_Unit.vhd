--------------------------------------------------------------------------------
-- MAC_Unit.vhd
-- Multiply-Accumulate Unit for MLP Neural Network
-- Features: 40-bit accumulator, saturation, scaling (shift right 8)
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MAC_Unit is
    port (
        i_clk       : in  std_logic;
        i_reset     : in  std_logic;
        
        -- Control signals
        i_enable    : in  std_logic;
        i_clear_acc : in  std_logic;
        i_add_bias  : in  std_logic;
        
        -- Data inputs (16-bit signed)
        i_data      : in  signed(15 downto 0);
        i_weight    : in  signed(15 downto 0);
        i_bias      : in  signed(15 downto 0);
        
        -- Outputs
        o_result    : out signed(15 downto 0);
        o_valid     : out std_logic
    );
end entity MAC_Unit;

architecture Behavioral of MAC_Unit is
    
    -- Constants
    constant ACC_WIDTH : integer := 40;
    constant FRAC_BITS : integer := 8;
    
    -- Accumulator register (40-bit)
    signal accumulator : signed(ACC_WIDTH-1 downto 0) := (others => '0');
    
    -- Scaled result
    signal scaled_acc  : signed(ACC_WIDTH-1 downto 0);
    
    -- Valid output register
    signal valid_reg   : std_logic := '0';
    
begin

    -- Main MAC process
    process(i_clk)
        variable mult_result : signed(31 downto 0);
        variable extended_product : signed(ACC_WIDTH-1 downto 0);
        variable bias_extended : signed(ACC_WIDTH-1 downto 0);
    begin
        if rising_edge(i_clk) then
            if i_reset = '1' then
                accumulator <= (others => '0');
                valid_reg <= '0';
            else
                valid_reg <= '0';
                
                if i_clear_acc = '1' then
                    accumulator <= (others => '0');
                end if;
                
                if i_enable = '1' then
                    mult_result := i_data * i_weight;
                    extended_product := resize(mult_result, ACC_WIDTH);
                    accumulator <= accumulator + extended_product;
                end if;
                
                if i_add_bias = '1' then
                    bias_extended := resize(shift_left(resize(i_bias, 24), FRAC_BITS), ACC_WIDTH);
                    accumulator <= accumulator + bias_extended;
                    valid_reg <= '1';
                end if;
            end if;
        end if;
    end process;
    
    -- Scaling
    scaled_acc <= shift_right(accumulator, FRAC_BITS);
    
    -- Saturation logic
    process(scaled_acc)
    begin
        if scaled_acc > to_signed(32767, ACC_WIDTH) then
            o_result <= to_signed(32767, 16);
        elsif scaled_acc < to_signed(-32768, ACC_WIDTH) then
            o_result <= to_signed(-32768, 16);
        else
            o_result <= resize(scaled_acc, 16);
        end if;
    end process;
    
    o_valid <= valid_reg;

end architecture Behavioral;
