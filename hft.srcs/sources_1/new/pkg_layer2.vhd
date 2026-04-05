--------------------------------------------------------------------------------
-- pkg_layer2.vhd
-- Layer 2 weights placeholder - ISE compatible version
-- Actual weights should be stored in weight_rom.vhd
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package pkg_layer2 is
    constant IN_DIM    : integer := 64;
    constant OUT_DIM   : integer := 32;
    
    -- Weight and bias types (ISE compatible - no nested arrays)
    type row_64 is array(0 to 63) of integer;
    type matrix_32x64 is array(0 to 31) of row_64;
    type vector_32 is array(0 to 31) of integer;
    
    -- Placeholder weights (zeros) - actual values in weight_rom.vhd
    constant W2 : matrix_32x64 := (others => (others => 0));
    constant b2 : vector_32 := (others => 0);

end package pkg_layer2;
