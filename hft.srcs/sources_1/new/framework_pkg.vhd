--------------------------------------------------------------------------------
-- framework_pkg.vhd
-- Constants, types, and generic parameters for SIMD AI Framework
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package framework_pkg is

    -- Fixed-point arithmetic parameters
    constant DATA_WIDTH     : integer := 16;
    constant FRAC_BITS      : integer := 8;
    
    -- Super-Network Dimensions
    constant MAX_INPUTS     : integer := 64;
    constant MAX_NEURONS    : integer := 64;
    constant MAX_OUTPUTS    : integer := 64;
    constant NUM_LAYERS     : integer := 4;
    
    -- SIMD Parallelism Parameters
    constant PARALLEL_NEURONS : integer := 3;
    
    -- Types
    subtype data_t is signed(DATA_WIDTH-1 downto 0);
    subtype acc_t  is signed(39 downto 0);
    
    -- Array types for runtime configuration
    type layer_size_array is array(0 to NUM_LAYERS-1) of integer range 0 to MAX_NEURONS;
    
    -- Limits
    constant MAX_VALUE      : data_t := to_signed(32767, DATA_WIDTH);
    constant MIN_VALUE      : data_t := to_signed(-32768, DATA_WIDTH);

    -- Helper functions
    function saturate(val : signed) return data_t;

end package framework_pkg;

package body framework_pkg is

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

end package body framework_pkg;
