library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package sigmoid_functions is
    
    -- This is a Q17.16 fixed-point format (1 sign, 16 integer, 16 fractional)
    subtype fix_t is SIGNED(32 downto 0);
    
    -- Helper function for constant conversion
    function to_fixed(val : real; fract_bits : integer; width : integer) return fix_t;

    function sigmoid(x : SIGNED) return fix_t;
    
end package sigmoid_functions;

package body sigmoid_functions is

    -- This is a Q17.16 fixed-point format (1 sign, 16 integer, 16 fractional)
    constant FRACT_BITS : integer := 16;

    function to_fixed(val : real; fract_bits : integer; width : integer) return fix_t is
    begin
        return to_signed(integer(val * (2.0**fract_bits)), width);
    end function;

    function sigmoid(x : SIGNED) return fix_t is
        -- All constants are in Q17.16 format
        constant UPPER_BOUND : fix_t := to_fixed(+2.0675, FRACT_BITS, 33);
        constant LOWER_BOUND : fix_t := to_fixed(-2.0675, FRACT_BITS, 33);
        constant LINEAR_M    : fix_t := to_fixed(0.125, FRACT_BITS, 33);
        constant LINEAR_C    : fix_t := to_fixed(0.5, FRACT_BITS, 33);
        constant ZERO        : fix_t := to_fixed(0.0625, FRACT_BITS, 33);
        constant ONE         : fix_t := to_fixed(0.9375, FRACT_BITS, 33);
        
        variable product     : SIGNED(x'length + LINEAR_M'length - 1 downto 0);
        variable product_shifted : fix_t;
        variable result      : fix_t;
    begin
        if x < LOWER_BOUND then
            result := ZERO;
        elsif x > UPPER_BOUND then
            result := ONE;
        else
            product := x * LINEAR_M;
            product_shifted := resize(shift_right(product, FRACT_BITS), result'length);
            result := product_shifted + LINEAR_C;
        end if;
        return result;
    end function sigmoid;

end package body sigmoid_functions;
