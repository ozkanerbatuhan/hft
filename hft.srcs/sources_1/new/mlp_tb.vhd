--------------------------------------------------------------------------------
-- mlp_tb.vhd
-- Testbench for Dynamic MLP Framework (AXI-Stream + AXI-Lite)
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mlp_tb is
end entity mlp_tb;

architecture sim of mlp_tb is

    constant CLK_PERIOD : time := 10 ns;
    
    signal clk       : std_logic := '0';
    signal aresetn   : std_logic := '0';
    signal sim_done  : boolean := false;
    
    -- AXI-Lite signals
    signal awaddr  : std_logic_vector(19 downto 0) := (others => '0');
    signal awprot  : std_logic_vector(2 downto 0) := (others => '0');
    signal awvalid : std_logic := '0';
    signal awready : std_logic;
    signal wdata   : std_logic_vector(31 downto 0) := (others => '0');
    signal wstrb   : std_logic_vector(3 downto 0) := "1111";
    signal wvalid  : std_logic := '0';
    signal wready  : std_logic;
    signal bresp   : std_logic_vector(1 downto 0);
    signal bvalid  : std_logic;
    signal bready  : std_logic := '1';
    signal araddr  : std_logic_vector(19 downto 0) := (others => '0');
    signal arprot  : std_logic_vector(2 downto 0) := (others => '0');
    signal arvalid : std_logic := '0';
    signal arready : std_logic;
    signal rdata   : std_logic_vector(31 downto 0);
    signal rresp   : std_logic_vector(1 downto 0);
    signal rvalid  : std_logic;
    signal rready  : std_logic := '1';
    
    -- AXI-Stream signals
    signal axis_tdata  : std_logic_vector(31 downto 0) := (others => '0');
    signal axis_tvalid : std_logic := '0';
    signal axis_tready : std_logic;
    signal axis_tlast  : std_logic := '0';

begin

    clk_proc: process
    begin
        while not sim_done loop
            clk <= '0'; wait for CLK_PERIOD/2;
            clk <= '1'; wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;

    DUT: entity work.mlp_axi_wrapper
        generic map ( C_S_AXI_DATA_WIDTH => 32, C_S_AXI_ADDR_WIDTH => 20 )
        port map (
            S_AXI_ACLK => clk, S_AXI_ARESETN => aresetn,
            S_AXI_AWADDR => awaddr, S_AXI_AWPROT => awprot, S_AXI_AWVALID => awvalid, S_AXI_AWREADY => awready,
            S_AXI_WDATA => wdata, S_AXI_WSTRB => wstrb, S_AXI_WVALID => wvalid, S_AXI_WREADY => wready,
            S_AXI_BRESP => bresp, S_AXI_BVALID => bvalid, S_AXI_BREADY => bready,
            S_AXI_ARADDR => araddr, S_AXI_ARPROT => arprot, S_AXI_ARVALID => arvalid, S_AXI_ARREADY => arready,
            S_AXI_RDATA => rdata, S_AXI_RRESP => rresp, S_AXI_RVALID => rvalid, S_AXI_RREADY => rready,
            S_AXIS_ACLK => clk, S_AXIS_ARESETN => aresetn,
            S_AXIS_TDATA => axis_tdata, S_AXIS_TVALID => axis_tvalid, S_AXIS_TREADY => axis_tready, S_AXIS_TLAST => axis_tlast
        );

    stim_proc: process
    
        procedure axi_lite_write(addr: std_logic_vector(19 downto 0); data: std_logic_vector(31 downto 0)) is
        begin
            wait until rising_edge(clk);
            awaddr <= addr; awvalid <= '1';
            wdata <= data; wvalid <= '1';
            wait until rising_edge(clk) and awready = '1' and wready = '1';
            awvalid <= '0'; wvalid <= '0';
            wait until rising_edge(clk) and bvalid = '1';
        end procedure;
        
        procedure axi_lite_read(addr: std_logic_vector(19 downto 0); data: out std_logic_vector(31 downto 0)) is
        begin
            wait until rising_edge(clk);
            araddr <= addr; arvalid <= '1';
            wait until rising_edge(clk) and arready = '1';
            arvalid <= '0';
            wait until rising_edge(clk) and rvalid = '1';
            data := rdata;
        end procedure;
        
        variable status_reg : std_logic_vector(31 downto 0);
        variable result_val : std_logic_vector(31 downto 0);

    begin
        aresetn <= '0';
        wait for CLK_PERIOD * 10;
        aresetn <= '1';
        wait for CLK_PERIOD * 5;
        
        report "Setting UPDATE_FLAG=1 (Blocking Stream)";
        axi_lite_write(x"00008", x"00000001");
        
        report "Writing Dummy Weights to BRAM L1 (Addr: 0x10000)";
        -- We write 0x0100 (1.0 in Q8.8) to weight [0,0] (addr=0)
        axi_lite_write(x"10000", x"00000100"); 
        
        report "Writing Config (though default is ok)";
        axi_lite_write(x"0000C", x"00000028"); -- 40
        axi_lite_write(x"00010", x"00000040"); -- 64
        axi_lite_write(x"00014", x"00000020"); -- 32
        axi_lite_write(x"00018", x"00000010"); -- 16
        axi_lite_write(x"0001C", x"00000003"); -- 3
        
        report "Clearing UPDATE_FLAG=0 (Enabling Stream)";
        axi_lite_write(x"00008", x"00000000");
        
        wait for CLK_PERIOD * 10;
        
        report "Sending 40 features over AXI-Stream";
        for i in 0 to 19 loop
            axis_tdata <= x"01000100"; -- Input = 1.0 (Q8.8) for even and odd
            axis_tvalid <= '1';
            if i = 19 then axis_tlast <= '1'; else axis_tlast <= '0'; end if;
            wait until rising_edge(clk) and axis_tready = '1';
        end loop;
        
        wait until rising_edge(clk);
        axis_tvalid <= '0';
        axis_tlast <= '0';
        
        report "Waiting for MLP to finish (polling status reg)...";
        loop
            axi_lite_read(x"00004", status_reg);
            exit when status_reg(0) = '1'; -- Done bit
        end loop;
        
        report "MLP Finished! Reading Results...";
        axi_lite_read(x"00100", result_val);
        report "Result[0] = " & integer'image(to_integer(signed(result_val(15 downto 0))));
        
        wait for CLK_PERIOD * 20;
        sim_done <= true;
        wait;
    end process;
    
end architecture sim;
