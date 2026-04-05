--------------------------------------------------------------------------------
-- PingPong_RAM.vhd
-- Dual-port Ping-Pong RAM for intermediate layer results
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PingPong_RAM is
    generic (
        DEPTH : integer := 64;
        WIDTH : integer := 16
    );
    port (
        i_clk       : in  std_logic;
        i_swap      : in  std_logic;
        i_wr_en     : in  std_logic;
        i_wr_addr   : in  unsigned(5 downto 0);
        i_wr_data   : in  signed(15 downto 0);
        i_rd_addr   : in  unsigned(5 downto 0);
        o_rd_data   : out signed(15 downto 0)
    );
end entity PingPong_RAM;

architecture Behavioral of PingPong_RAM is

    type ram_array is array(0 to DEPTH-1) of std_logic_vector(WIDTH-1 downto 0);
    
    signal ram_a : ram_array := (others => (others => '0'));
    signal ram_b : ram_array := (others => (others => '0'));
    signal select_reg : std_logic := '0';
    signal rd_data_a : std_logic_vector(WIDTH-1 downto 0);
    signal rd_data_b : std_logic_vector(WIDTH-1 downto 0);

begin

    -- Swap control
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_swap = '1' then
                select_reg <= not select_reg;
            end if;
        end if;
    end process;
    
    -- RAM A
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_wr_en = '1' and select_reg = '1' then
                ram_a(to_integer(i_wr_addr)) <= std_logic_vector(i_wr_data);
            end if;
            rd_data_a <= ram_a(to_integer(i_rd_addr));
        end if;
    end process;
    
    -- RAM B
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_wr_en = '1' and select_reg = '0' then
                ram_b(to_integer(i_wr_addr)) <= std_logic_vector(i_wr_data);
            end if;
            rd_data_b <= ram_b(to_integer(i_rd_addr));
        end if;
    end process;
    
    -- Output mux
    o_rd_data <= signed(rd_data_a) when select_reg = '0' else signed(rd_data_b);

end architecture Behavioral;
