--------------------------------------------------------------------------------
-- MLP Testbench - Farkli siniflar icin optimize edilmis
-- 3 farkli sinif (SELL/HOLD/BUY) gosterir
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mlp_tb is
end entity mlp_tb;

architecture sim of mlp_tb is

    constant CLK_PERIOD : time := 10 ns;
    
    -- DUT signals
    signal clk          : std_logic := '0';
    signal reset        : std_logic := '1';
    signal start        : std_logic := '0';
    signal done         : std_logic;
    signal busy         : std_logic;
    signal input_wr_en  : std_logic := '0';
    signal input_addr   : unsigned(5 downto 0) := (others => '0');
    signal input_data   : signed(15 downto 0) := (others => '0');
    signal class_result : unsigned(1 downto 0);
    signal led          : std_logic_vector(2 downto 0);
    
    signal sim_done     : boolean := false;
    signal test_case    : integer := 0;

begin

    -- Clock generation
    clk_proc: process
    begin
        while not sim_done loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;
    
    -- Instantiate DUT
    DUT: entity work.mlp
        port map (
            i_clk           => clk,
            i_reset         => reset,
            i_start         => start,
            o_done          => done,
            o_busy          => busy,
            i_input_wr_en   => input_wr_en,
            i_input_addr    => input_addr,
            i_input_data    => input_data,
            o_class_result  => class_result,
            o_led           => led
        );
    
    -- Test process
    stim_proc: process
        variable timeout_cnt : integer := 0;
        variable input_val : integer := 0;
    begin
        report "=====================================";
        report "MLP TESTBENCH - 3 Farkli Sinif Testi";
        report "=====================================";
        
        -- Reset
        reset <= '1';
        start <= '0';
        input_wr_en <= '0';
        wait for CLK_PERIOD * 10;
        reset <= '0';
        wait for CLK_PERIOD * 5;
        
        ---------------------------------------------------------------
        -- TEST 1: SELL sinyali icin - Cok yuksek negatif degerler
        -- Layer 4 Bias 0 = -51 (en dusuk), bu yuzden guclu negatif input gerekli
        ---------------------------------------------------------------
        test_case <= 1;
        report "TEST 1: SELL icin cok yuksek negatif input";
        
        for i in 0 to 39 loop
            wait until rising_edge(clk);
            input_wr_en <= '1';
            input_addr <= to_unsigned(i, 6);
            -- Cok yuksek negatif degerler: -127 (Q8.8 formatinda -127/256 = -0.5)
            -- Saturation icin maksimum negatif
            input_data <= to_signed(-32000, 16);  
        end loop;
        wait until rising_edge(clk);
        input_wr_en <= '0';
        wait for CLK_PERIOD * 2;
        
        wait until rising_edge(clk);
        start <= '1';
        wait until rising_edge(clk);
        start <= '0';
        
        timeout_cnt := 0;
        while done /= '1' and timeout_cnt < 100000 loop
            wait until rising_edge(clk);
            timeout_cnt := timeout_cnt + 1;
        end loop;
        
        report "TEST 1 Sonuc: Class=" & integer'image(to_integer(class_result));
        wait for CLK_PERIOD * 50;
        
        ---------------------------------------------------------------
        -- TEST 2: HOLD sinyali icin - Kucuk degerler (sifira yakin)
        -- Layer 4 Bias 1 = 19 (pozitif), varsayilan olarak HOLD cikar
        ---------------------------------------------------------------
        test_case <= 2;
        report "TEST 2: HOLD icin sifira yakin input";
        
        for i in 0 to 39 loop
            wait until rising_edge(clk);
            input_wr_en <= '1';
            input_addr <= to_unsigned(i, 6);
            -- Sifira yakin kucuk degerler
            input_data <= to_signed(10, 16);  
        end loop;
        wait until rising_edge(clk);
        input_wr_en <= '0';
        wait for CLK_PERIOD * 2;
        
        wait until rising_edge(clk);
        start <= '1';
        wait until rising_edge(clk);
        start <= '0';
        
        timeout_cnt := 0;
        while done /= '1' and timeout_cnt < 100000 loop
            wait until rising_edge(clk);
            timeout_cnt := timeout_cnt + 1;
        end loop;
        
        report "TEST 2 Sonuc: Class=" & integer'image(to_integer(class_result));
        wait for CLK_PERIOD * 50;
        
        ---------------------------------------------------------------
        -- TEST 3: BUY sinyali icin - Cok yuksek pozitif degerler
        -- Layer 4 Bias 2 = 37 (en yuksek pozitif)
        ---------------------------------------------------------------
        test_case <= 3;
        report "TEST 3: BUY icin cok yuksek pozitif input";
        
        for i in 0 to 39 loop
            wait until rising_edge(clk);
            input_wr_en <= '1';
            input_addr <= to_unsigned(i, 6);
            -- Cok yuksek pozitif degerler
            input_data <= to_signed(32000, 16);  
        end loop;
        wait until rising_edge(clk);
        input_wr_en <= '0';
        wait for CLK_PERIOD * 2;
        
        wait until rising_edge(clk);
        start <= '1';
        wait until rising_edge(clk);
        start <= '0';
        
        timeout_cnt := 0;
        while done /= '1' and timeout_cnt < 100000 loop
            wait until rising_edge(clk);
            timeout_cnt := timeout_cnt + 1;
        end loop;
        
        report "TEST 3 Sonuc: Class=" & integer'image(to_integer(class_result));
        wait for CLK_PERIOD * 50;
        
        ---------------------------------------------------------------
        -- TEST 4-6: Tekrar farkli pattern'ler
        ---------------------------------------------------------------
        test_case <= 4;
        report "TEST 4: Alternatif pattern (tek/cift)";
        
        for i in 0 to 39 loop
            wait until rising_edge(clk);
            input_wr_en <= '1';
            input_addr <= to_unsigned(i, 6);
            if (i mod 2) = 0 then
                input_data <= to_signed(20000, 16);
            else
                input_data <= to_signed(-20000, 16);
            end if;
        end loop;
        wait until rising_edge(clk);
        input_wr_en <= '0';
        wait for CLK_PERIOD * 2;
        
        wait until rising_edge(clk);
        start <= '1';
        wait until rising_edge(clk);
        start <= '0';
        
        timeout_cnt := 0;
        while done /= '1' and timeout_cnt < 100000 loop
            wait until rising_edge(clk);
            timeout_cnt := timeout_cnt + 1;
        end loop;
        
        report "TEST 4 Sonuc: Class=" & integer'image(to_integer(class_result));
        wait for CLK_PERIOD * 50;
        
        -- TEST 5: Rampa (artan)
        test_case <= 5;
        report "TEST 5: Artan rampa";
        
        for i in 0 to 39 loop
            wait until rising_edge(clk);
            input_wr_en <= '1';
            input_addr <= to_unsigned(i, 6);
            input_data <= to_signed((i - 20) * 1000, 16);
        end loop;
        wait until rising_edge(clk);
        input_wr_en <= '0';
        wait for CLK_PERIOD * 2;
        
        wait until rising_edge(clk);
        start <= '1';
        wait until rising_edge(clk);
        start <= '0';
        
        timeout_cnt := 0;
        while done /= '1' and timeout_cnt < 100000 loop
            wait until rising_edge(clk);
            timeout_cnt := timeout_cnt + 1;
        end loop;
        
        report "TEST 5 Sonuc: Class=" & integer'image(to_integer(class_result));
        wait for CLK_PERIOD * 50;
        
        -- TEST 6: Ust yarisi pozitif, alt yarisi negatif
        test_case <= 6;
        report "TEST 6: Yarisi pozitif yarisi negatif";
        
        for i in 0 to 39 loop
            wait until rising_edge(clk);
            input_wr_en <= '1';
            input_addr <= to_unsigned(i, 6);
            if i < 20 then
                input_data <= to_signed(-15000, 16);
            else
                input_data <= to_signed(15000, 16);
            end if;
        end loop;
        wait until rising_edge(clk);
        input_wr_en <= '0';
        wait for CLK_PERIOD * 2;
        
        wait until rising_edge(clk);
        start <= '1';
        wait until rising_edge(clk);
        start <= '0';
        
        timeout_cnt := 0;
        while done /= '1' and timeout_cnt < 100000 loop
            wait until rising_edge(clk);
            timeout_cnt := timeout_cnt + 1;
        end loop;
        
        report "TEST 6 Sonuc: Class=" & integer'image(to_integer(class_result));
        
        ---------------------------------------------------------------
        report "=====================================";
        report "TAMAMLANDI - LED degisimlerini kontrol edin";
        report "=====================================";
        
        wait for CLK_PERIOD * 100;
        sim_done <= true;
        wait;
    end process;

end architecture sim;
