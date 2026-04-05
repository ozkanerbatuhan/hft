--------------------------------------------------------------------------------
-- pkg_layer4.vhd
-- Layer 4 weights placeholder - ISE compatible version
-- Actual weights should be stored in weight_rom.vhd
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package pkg_layer4 is
    constant IN_DIM    : integer := 16;
    constant OUT_DIM   : integer := 3;
    
    -- Weight and bias types (ISE compatible - no nested arrays)
    type row_16 is array(0 to 15) of integer;
    type matrix_3x16 is array(0 to 2) of row_16;
    type vector_3 is array(0 to 2) of integer;
    
    -- Placeholder weights (zeros) - actual values in weight_rom.vhd
    constant W4 : matrix_3x16 := (others => (others => 0));
    constant b4 : vector_3 := (others => 0);

end package pkg_layer4;
