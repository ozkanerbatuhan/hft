--------------------------------------------------------------------------------
-- weight_bram.vhd
-- Generic True Dual-Port BRAM for Weights and Biases
-- Infers BRAM36K primitive in Vivado
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity weight_bram is
    generic (
        ADDR_WIDTH : integer := 12;   -- Default: 4096 addresses
        DATA_WIDTH : integer := 16    -- Default: 16-bit Q8.8
    );
    port (
        -- Port A: PS write access (via AXI-Lite)
        clk_a    : in  std_logic;
        we_a     : in  std_logic;
        addr_a   : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        din_a    : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        dout_a   : out std_logic_vector(DATA_WIDTH-1 downto 0);
        
        -- Port B: PL read access (via MLP engine)
        clk_b    : in  std_logic;
        addr_b   : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        dout_b   : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity weight_bram;

architecture rtl of weight_bram is

    type ram_type is array (0 to (2**ADDR_WIDTH)-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    shared variable RAM : ram_type := (others => (others => '0'));
    
    attribute ram_style : string;
    attribute ram_style of RAM : variable is "block";

begin

    -- Port A: Write and Read
    process(clk_a)
    begin
        if rising_edge(clk_a) then
            if we_a = '1' then
                RAM(to_integer(unsigned(addr_a))) := din_a;
            end if;
            dout_a <= RAM(to_integer(unsigned(addr_a)));
        end if;
    end process;

    -- Port B: Read-only for MLP (could also be R/W if needed, but MLP only reads)
    process(clk_b)
    begin
        if rising_edge(clk_b) then
            dout_b <= RAM(to_integer(unsigned(addr_b)));
        end if;
    end process;

end architecture rtl;
