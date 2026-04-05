--------------------------------------------------------------------------------
-- pkg_layer3.vhd
-- Layer 3 weights placeholder - ISE compatible version
-- Actual weights should be stored in weight_rom.vhd
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package pkg_layer3 is
    constant IN_DIM    : integer := 32;
    constant OUT_DIM   : integer := 16;
    
    -- Weight and bias types (ISE compatible - no nested arrays)
    type row_32 is array(0 to 31) of integer;
    type matrix_16x32 is array(0 to 15) of row_32;
    type vector_16 is array(0 to 15) of integer;
    
    -- Placeholder weights (zeros) - actual values in weight_rom.vhd
    constant W3 : matrix_16x32 := (others => (others => 0));
    constant b3 : vector_16 := (others => 0);

end package pkg_layer3;
