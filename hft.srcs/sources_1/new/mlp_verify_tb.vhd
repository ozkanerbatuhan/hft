--------------------------------------------------------------------------------
-- mlp_verify_tb.vhd
--
-- Self-checking verification testbench.
--
-- Purpose: isolate WHERE the hardware diverges from the golden model.
-- Three tests stress three independent mechanisms:
--
-- T1  pass-through chain -> the datapath alone (multiply, adder tree, >>8)
-- T2  bias chain         -> bias pipeline alignment (bias_pipe)
-- T3  multiple neurons   -> write-back indexing (fsm_wb_base_idx)
--
-- Each test reports PASS or FAIL. The first failing test names the
-- mechanism that is broken.
--
-- Note: in simulation the weight_bram RAM initialises to all zeros, so
-- only the non-zero entries need to be written.
--
-- To run: Vivado > Simulation > Run Behavioral Simulation
-- (set this file as the simulation-only top)
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity mlp_verify_tb is
end entity mlp_verify_tb;

architecture sim of mlp_verify_tb is

    constant CLK_PERIOD : time := 8 ns;          -- 125 MHz

    -- Per-layer BRAM row base addresses: cumulative ceil(n_out/3)
    -- L1: 64 neurons -> 22 rows   (base  0)
    -- L2: 32 neurons -> 11 rows   (base 22)
    -- L3: 16 neurons ->  6 rows   (base 33)
    -- L4:  3 neurons ->  1 row    (base 39)
    constant BASE_L1 : integer := 0;
    constant BASE_L2 : integer := 22;
    constant BASE_L3 : integer := 33;
    constant BASE_L4 : integer := 39;

    constant ONE_Q88 : integer := 256;           -- 1.0 in Q8.8

    signal clk      : std_logic := '0';
    signal aresetn  : std_logic := '0';
    signal sim_done : boolean := false;

    -- AXI-Lite
    signal awaddr  : std_logic_vector(19 downto 0) := (others => '0');
    signal awprot  : std_logic_vector(2 downto 0)  := (others => '0');
    signal awvalid : std_logic := '0';
    signal awready : std_logic;
    signal wdata   : std_logic_vector(31 downto 0) := (others => '0');
    signal wstrb   : std_logic_vector(3 downto 0)  := "1111";
    signal wvalid  : std_logic := '0';
    signal wready  : std_logic;
    signal bresp   : std_logic_vector(1 downto 0);
    signal bvalid  : std_logic;
    signal bready  : std_logic := '1';
    signal araddr  : std_logic_vector(19 downto 0) := (others => '0');
    signal arprot  : std_logic_vector(2 downto 0)  := (others => '0');
    signal arvalid : std_logic := '0';
    signal arready : std_logic;
    signal rdata   : std_logic_vector(31 downto 0);
    signal rresp   : std_logic_vector(1 downto 0);
    signal rvalid  : std_logic;
    signal rready  : std_logic := '1';

    -- AXI-Stream
    signal axis_tdata  : std_logic_vector(31 downto 0) := (others => '0');
    signal axis_tvalid : std_logic := '0';
    signal axis_tready : std_logic;
    signal axis_tlast  : std_logic := '0';

    -- debug
    signal o_led : std_logic_vector(7 downto 0);
    signal d1, d2, d3, d4, d5, d6 : std_logic;

    type vec64_t is array(0 to 63) of integer;

    -- test results
    signal n_pass : integer := 0;
    signal n_fail : integer := 0;

begin

    clk_proc : process
    begin
        while not sim_done loop
            clk <= '0'; wait for CLK_PERIOD/2;
            clk <= '1'; wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;

    DUT : entity work.mlp_axi_wrapper
        generic map (C_S_AXI_DATA_WIDTH => 32, C_S_AXI_ADDR_WIDTH => 20)
        port map (
            S_AXI_ACLK => clk, S_AXI_ARESETN => aresetn,
            S_AXI_AWADDR => awaddr, S_AXI_AWPROT => awprot,
            S_AXI_AWVALID => awvalid, S_AXI_AWREADY => awready,
            S_AXI_WDATA => wdata, S_AXI_WSTRB => wstrb,
            S_AXI_WVALID => wvalid, S_AXI_WREADY => wready,
            S_AXI_BRESP => bresp, S_AXI_BVALID => bvalid, S_AXI_BREADY => bready,
            S_AXI_ARADDR => araddr, S_AXI_ARPROT => arprot,
            S_AXI_ARVALID => arvalid, S_AXI_ARREADY => arready,
            S_AXI_RDATA => rdata, S_AXI_RRESP => rresp,
            S_AXI_RVALID => rvalid, S_AXI_RREADY => rready,
            S_AXIS_ACLK => clk, S_AXIS_ARESETN => aresetn,
            S_AXIS_TDATA => axis_tdata, S_AXIS_TVALID => axis_tvalid,
            S_AXIS_TREADY => axis_tready, S_AXIS_TLAST => axis_tlast,
            o_led => o_led,
            dbg_data_in_pulse => d1, dbg_layer1_done => d2, dbg_layer2_done => d3,
            dbg_layer3_done => d4, dbg_layer4_done => d5, dbg_mlp_busy => d6
        );

    stim : process

        ----------------------------------------------------------------
        -- AXI-Lite primitives
        ----------------------------------------------------------------
        procedure axi_write(addr : integer; val : integer) is
        begin
            wait until rising_edge(clk);
            awaddr  <= std_logic_vector(to_unsigned(addr, 20));
            wdata   <= std_logic_vector(to_signed(val, 32));
            awvalid <= '1'; wvalid <= '1';
            wait until rising_edge(clk) and awready = '1' and wready = '1';
            awvalid <= '0'; wvalid <= '0';
            wait until rising_edge(clk) and bvalid = '1';
        end procedure;

        procedure axi_read(addr : integer; val : out integer) is
        begin
            wait until rising_edge(clk);
            araddr <= std_logic_vector(to_unsigned(addr, 20));
            arvalid <= '1';
            wait until rising_edge(clk) and arready = '1';
            arvalid <= '0';
            wait until rising_edge(clk) and rvalid = '1';
            val := to_integer(signed(rdata(15 downto 0)));
        end procedure;

        ----------------------------------------------------------------
        -- Weight and bias writes, same address scheme as mlp_weight_loader.h
        -- weight : 0x20000 + (n*64 + i)*512 + (base+k)*4
        -- bias   : 0x20000 + (192 + n)*512  + (base+k)*4
        ----------------------------------------------------------------
        procedure wr_w(neuron, inp, base, val : integer) is
            variable k, n, bram, addr : integer;
        begin
            k := neuron / 3;  n := neuron mod 3;
            bram := n * 64 + inp;
            addr := 16#20000# + bram * 512 + (base + k) * 4;
            axi_write(addr, val);
        end procedure;

        procedure wr_b(neuron, base, val : integer) is
            variable k, n, bram, addr : integer;
        begin
            k := neuron / 3;  n := neuron mod 3;
            bram := 192 + n;
            addr := 16#20000# + bram * 512 + (base + k) * 4;
            axi_write(addr, val);
        end procedure;

        ----------------------------------------------------------------
        -- Send a 64-element vector as 32 AXI-Stream words
        ----------------------------------------------------------------
        procedure send_vec(v : vec64_t) is
        begin
            for w in 0 to 31 loop
                axis_tdata <= std_logic_vector(to_signed(v(2*w+1), 16)) &
                              std_logic_vector(to_signed(v(2*w),   16));
                axis_tvalid <= '1';
                if w = 31 then axis_tlast <= '1'; else axis_tlast <= '0'; end if;
                wait until rising_edge(clk) and axis_tready = '1';
            end loop;
            wait until rising_edge(clk);
            axis_tvalid <= '0';
            axis_tlast  <= '0';
        end procedure;

        ----------------------------------------------------------------
        -- Run one inference and read the three outputs
        ----------------------------------------------------------------
        procedure run_infer(v : vec64_t; o0, o1, o2 : out integer) is
            variable st : integer;
            variable guard : integer := 0;
        begin
            send_vec(v);
            loop
                axi_read(16#00004#, st);
                exit when (st mod 2) = 1;          -- done bit
                guard := guard + 1;
                assert guard < 2000
                    report "TIMEOUT: done was never asserted" severity failure;
            end loop;
            axi_read(16#00100#, o0);
            axi_read(16#00104#, o1);
            axi_read(16#00108#, o2);
        end procedure;

        procedure check(name : string; g0, g1, g2, e0, e1, e2 : integer) is
        begin
            if g0 = e0 and g1 = e1 and g2 = e2 then
                report name & " : PASS   output = [" &
                    integer'image(g0) & ", " & integer'image(g1) & ", " &
                    integer'image(g2) & "]" severity note;
                n_pass <= n_pass + 1;
            else
                report name & " : *** FAIL ***" severity warning;
                report "        expected = [" & integer'image(e0) & ", " &
                       integer'image(e1) & ", " & integer'image(e2) & "]"
                       severity warning;
                report "        got      = [" & integer'image(g0) & ", " &
                       integer'image(g1) & ", " & integer'image(g2) & "]"
                       severity warning;
                n_fail <= n_fail + 1;
            end if;
        end procedure;

        ----------------------------------------------------------------
        -- Read the whole of buf_A (0x100 + i*4 -> index i, i = 0..63)
        -- Contents of buf_A after layer 4:
        -- [0..2]   layer 4 output
        -- [3..32]  layer 2 output, not overwritten by layer 4
        -- [33..63] the original input, untouched
        -- So the intermediate results are visible too.
        ----------------------------------------------------------------
        procedure dump_bufA(tag : string) is
            variable val : integer;
            variable l   : line;
        begin
            report "  --- buf_A dump: " & tag & " ---" severity note;
            for r in 0 to 7 loop
                write(l, string'("    ["));
                write(l, r*8);
                write(l, string'(".."));
                write(l, r*8+7);
                write(l, string'("] "));
                for c in 0 to 7 loop
                    axi_read(16#00100# + (r*8 + c)*4, val);
                    write(l, val);
                    write(l, string'(" "));
                end loop;
                writeline(output, l);
            end loop;
        end procedure;

        variable v  : vec64_t := (others => 0);
        variable a0, a1, a2 : integer;

    begin
        -------------------------------------------------- reset
        aresetn <= '0';
        wait for CLK_PERIOD * 20;
        aresetn <= '1';
        wait for CLK_PERIOD * 10;

        -- configuration, same as the defaults but written explicitly
        axi_write(16#00010#, 64);
        axi_write(16#00014#, 32);
        axi_write(16#00018#, 16);
        axi_write(16#0001C#, 3);
        wait for CLK_PERIOD * 5;

        report "=================================================" severity note;
        report " T1 - pass-through chain (datapath only)" severity note;
        report "=================================================" severity note;
        -- Only [0][0] = 1.0 in each layer, no bias.
        -- input[0] should pass through all four layers unchanged.
        axi_write(16#00008#, 1);                  -- UPDATE_FLAG = 1 (stream locked)
        wr_w(0, 0, BASE_L1, 2 * ONE_Q88);         -- 2.0 so the output differs from the input
        wr_w(0, 0, BASE_L2, ONE_Q88);
        wr_w(0, 0, BASE_L3, ONE_Q88);
        wr_w(0, 0, BASE_L4, ONE_Q88);
        axi_write(16#00008#, 0);                  -- UPDATE_FLAG = 0
        wait for CLK_PERIOD * 10;

        -- POISON: buf_A holds both the input and the result, and the result is
        -- read from there. Distinctive values are placed in input[0..2] so that
        -- if the write-back never happens we read those back and cannot mistake
        -- it for a pass. The L1 weight of 2.0 makes the expected output differ.
        v := (others => 0);
        v(0) := 5 * ONE_Q88;                      -- 5.0
        v(1) := -1000;                            -- poison
        v(2) := -2000;                            -- poison
        run_infer(v, a0, a1, a2);
        check("T1 gecis zinciri", a0, a1, a2, 10 * ONE_Q88, 0, 0);

        report "=================================================" severity note;
        report " T2 - bias chain (bias_pipe alignment)" severity note;
        report "=================================================" severity note;
        -- W1 = 0, B1[j] = j+1 (ham Q8.8 LSB).
        -- L2/L3/L4 are identity, so B1[0..2] should reach the output unchanged.
        -- Expected [1, 2, 3]. A misaligned bias pipeline corrupts this.
        axi_write(16#00008#, 1);
        wr_w(0, 0, BASE_L1, 0);                   -- clear T1's weight of 2.0
        for j in 0 to 63 loop
            wr_b(j, BASE_L1, j + 1);
        end loop;
        for i in 0 to 31 loop
            wr_w(i, i, BASE_L2, ONE_Q88);
        end loop;
        for i in 0 to 15 loop
            wr_w(i, i, BASE_L3, ONE_Q88);
        end loop;
        for i in 0 to 2 loop
            wr_w(i, i, BASE_L4, ONE_Q88);
        end loop;
        wr_w(0, 0, BASE_L2, ONE_Q88);             -- (i=0 already written, harmless)
        axi_write(16#00008#, 0);
        wait for CLK_PERIOD * 10;

        v := (others => 0);
        v(0) := 4444;                             -- poison; W1=0 so it cannot affect the result
        v(1) := -1000;
        v(2) := -2000;
        run_infer(v, a0, a1, a2);
        check("T2 bias zinciri", a0, a1, a2, 1, 2, 3);

        report "=================================================" severity note;
        report " T3 - multiple neurons (write-back indexing)" severity note;
        report "=================================================" severity note;
        -- B1 = 0, W1[j][0] = (j+1) raw LSB, input[0] = 1.0
        --   -> a1[j] = ((j+1) * 256) >> 8 = j+1
        -- L2/L3/L4 identity, so the output is [1, 2, 3].
        -- A shifted write-back index permutes a1 and changes the output.
        axi_write(16#00008#, 1);
        for j in 0 to 63 loop
            wr_b(j, BASE_L1, 0);
            wr_w(j, 0, BASE_L1, j + 1);
        end loop;
        axi_write(16#00008#, 0);
        wait for CLK_PERIOD * 10;

        v := (others => 0);
        v(0) := ONE_Q88;
        v(1) := -1000;                            -- poison
        v(2) := -2000;                            -- poison
        run_infer(v, a0, a1, a2);
        check("T3 multiple neurons", a0, a1, a2, 1, 2, 3);

        wait for CLK_PERIOD * 20;
        report "=================================================" severity note;
        report " RESULT: " & integer'image(n_pass) & " PASS / " &
               integer'image(n_fail) & " FAIL" severity note;
        report "=================================================" severity note;

        sim_done <= true;
        wait;
    end process;

end architecture sim;
