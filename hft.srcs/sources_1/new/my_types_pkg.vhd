--------------------------------------------------------------------------------
-- my_types_pkg.vhd
-- Global types and constants for the MLP neural network
-- Uses Q8.8 fixed-point format (1 sign + 7 integer + 8 fractional = 16 bits)
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package my_types_pkg is

    constant DATA_WIDTH     : integer := 16;
    constant FRAC_BITS      : integer := 8;
    
    subtype data_t is signed(DATA_WIDTH-1 downto 0);
    
    constant ACC_WIDTH      : integer := 40;
    subtype acc_t is signed(ACC_WIDTH-1 downto 0);
    
    constant LAYER1_IN      : integer := 40;
    constant LAYER1_OUT     : integer := 64;
    constant LAYER2_IN      : integer := 64;
    constant LAYER2_OUT     : integer := 32;
    constant LAYER3_IN      : integer := 32;
    constant LAYER3_OUT     : integer := 16;
    constant LAYER4_IN      : integer := 16;
    constant LAYER4_OUT     : integer := 3;
    
    constant MAX_NEURONS    : integer := 64;
    
    constant NUM_LAYERS     : integer := 4;
    
    type layer_size_array is array(0 to NUM_LAYERS) of integer;
    constant LAYER_SIZES : layer_size_array := (40, 64, 32, 16, 3);
    
    constant MAX_VALUE      : data_t := to_signed(32767, DATA_WIDTH);
    constant MIN_VALUE      : data_t := to_signed(-32768, DATA_WIDTH);
    
    function to_fixed16(val : real) return data_t;
    
    function saturate(val : signed) return data_t;
    
end package my_types_pkg;

package body my_types_pkg is

    function to_fixed16(val : real) return data_t is
        variable scaled : real;
        variable result : integer;
    begin
        scaled := val * real(2**FRAC_BITS);
        
        if scaled > 32767.0 then
            result := 32767;
        elsif scaled < -32768.0 then
            result := -32768;
        else
            result := integer(scaled);
        end if;
        
        return to_signed(result, DATA_WIDTH);
    end function to_fixed16;
    
    function saturate(val : signed) return data_t is
        variable extended : signed(val'length-1 downto 0);
    begin
        extended := val;
        
        if extended > to_signed(32767, extended'length) then
            return MAX_VALUE;
        elsif extended < to_signed(-32768, extended'length) then
            return MIN_VALUE;
        else
            return resize(extended, DATA_WIDTH);
        end if;
    end function saturate;

end package body my_types_pkg;
