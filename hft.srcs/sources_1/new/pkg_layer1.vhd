--------------------------------------------------------------------------------
-- pkg_layer1.vhd
-- Layer 1 weights placeholder - ISE compatible version
-- Actual weights should be stored in weight_rom.vhd
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package pkg_layer1 is
    constant IN_DIM    : integer := 40;
    constant OUT_DIM   : integer := 64;
    
    -- Weight and bias types (ISE compatible - no nested arrays)
    type row_40 is array(0 to 39) of integer;
    type matrix_64x40 is array(0 to 63) of row_40;
    type vector_64 is array(0 to 63) of integer;
    
    -- Placeholder weights (zeros) - actual values in weight_rom.vhd
    constant W1 : matrix_64x40 := (others => (others => 0));
    constant b1 : vector_64 := (others => 0);

end package pkg_layer1;
