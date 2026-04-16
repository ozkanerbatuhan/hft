--------------------------------------------------------------------------------
-- mlp.vhd
-- Fully Parallel MAC Architecture with Pipeline
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.weights_pkg.all;

entity mlp is
    port (
        i_clk           : in  std_logic;
        i_reset         : in  std_logic;
        
        -- Control interface
        i_start         : in  std_logic;
        o_done          : out std_logic;
        o_busy          : out std_logic;
        
        -- Input data interface
        i_input_wr_en   : in  std_logic;
        i_input_addr    : in  unsigned(5 downto 0);
        i_input_data    : in  signed(15 downto 0);
        
        -- Output interface
        o_class_result  : out unsigned(1 downto 0);
        o_led           : out std_logic_vector(2 downto 0)
    );
end entity mlp;

architecture Behavioral of mlp is

    type l0_arr is array(0 to 39) of signed(15 downto 0);
    type l1_arr is array(0 to 63) of signed(15 downto 0);
    type l2_arr is array(0 to 31) of signed(15 downto 0);
    type l3_arr is array(0 to 15) of signed(15 downto 0);
    type l4_arr is array(0 to 2) of signed(15 downto 0);

    signal reg_L0 : l0_arr := (others => (others => '0'));
    signal reg_L1 : l1_arr := (others => (others => '0'));
    signal reg_L2 : l2_arr := (others => (others => '0'));
    signal reg_L3 : l3_arr := (others => (others => '0'));
    signal reg_L4 : l4_arr := (others => (others => '0'));

    type state_t is (IDLE, L1_RUN, L2_RUN, L3_RUN, L4_RUN, ARGMAX_RUN, DONE);
    signal state : state_t := IDLE;

    signal s_cnt : integer range 0 to 63 := 0;
    signal st0_valid, st1_valid : std_logic := '0';
    signal st0_idx, st1_idx : integer range 0 to 63 := 0;

    type m_arr_40 is array(0 to 39) of signed(31 downto 0);
    type m_arr_64 is array(0 to 63) of signed(31 downto 0);
    type m_arr_32 is array(0 to 31) of signed(31 downto 0);
    type m_arr_16 is array(0 to 15) of signed(31 downto 0);

    signal l1_mult : m_arr_40 := (others => (others => '0'));
    signal l2_mult : m_arr_64 := (others => (others => '0'));
    signal l3_mult : m_arr_32 := (others => (others => '0'));
    signal l4_mult : m_arr_16 := (others => (others => '0'));

    signal l1_bias, l2_bias, l3_bias, l4_bias : signed(15 downto 0) := (others => '0');
    signal l1_sum, l2_sum, l3_sum, l4_sum : signed(39 downto 0) := (others => '0');

    signal class_result : unsigned(1 downto 0) := "00";

begin

    -- Input register writing
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_input_wr_en = '1' and to_integer(i_input_addr) < 40 then
                reg_L0(to_integer(i_input_addr)) <= i_input_data;
            end if;
        end if;
    end process;

    process(i_clk)
        variable v_sum    : signed(39 downto 0);
        variable v_scaled : signed(39 downto 0);
        variable v_sat    : signed(15 downto 0);
    begin
        if rising_edge(i_clk) then
            if i_reset = '1' then
                state <= IDLE;
                o_done <= '0';
                o_busy <= '0';
                st0_valid <= '0';
                st1_valid <= '0';
                o_led <= "000";
            else
                case state is
                    when IDLE =>
                        o_done <= '0';
                        o_busy <= '0';
                        st0_valid <= '0';
                        st1_valid <= '0';
                        if i_start = '1' then
                            o_busy <= '1';
                            s_cnt <= 0;
                            state <= L1_RUN;
                        end if;

                    when L1_RUN =>
                        if s_cnt <= 63 then
                            for i in 0 to 39 loop
                                l1_mult(i) <= reg_L0(i) * weights_l1(s_cnt, i);
                            end loop;
                            l1_bias <= biases_l1(s_cnt);
                            st0_valid <= '1';
                            st0_idx <= s_cnt;
                            s_cnt <= s_cnt + 1;
                        else
                            st0_valid <= '0';
                        end if;

                        if st0_valid = '1' then
                            v_sum := (others => '0');
                            for i in 0 to 39 loop
                                v_sum := v_sum + resize(l1_mult(i), 40);
                            end loop;
                            l1_sum <= v_sum + (resize(l1_bias, 40) sll 8);
                            st1_valid <= '1';
                            st1_idx <= st0_idx;
                        else
                            st1_valid <= '0';
                        end if;

                        if st1_valid = '1' then
                            v_scaled := shift_right(l1_sum, 8);
                            if v_scaled > 32767 then v_sat := to_signed(32767, 16);
                            elsif v_scaled < -32768 then v_sat := to_signed(-32768, 16);
                            else v_sat := resize(v_scaled, 16); end if;

                            if v_sat > 0 then reg_L1(st1_idx) <= v_sat;
                            else reg_L1(st1_idx) <= (others => '0'); end if;

                            if st1_idx = 63 then
                                state <= L2_RUN;
                                s_cnt <= 0;
                                st0_valid <= '0';
                                st1_valid <= '0';
                            end if;
                        end if;

                    when L2_RUN =>
                        if s_cnt <= 31 then
                            for i in 0 to 63 loop
                                l2_mult(i) <= reg_L1(i) * weights_l2(s_cnt, i);
                            end loop;
                            l2_bias <= biases_l2(s_cnt);
                            st0_valid <= '1';
                            st0_idx <= s_cnt;
                            s_cnt <= s_cnt + 1;
                        else
                            st0_valid <= '0';
                        end if;

                        if st0_valid = '1' then
                            v_sum := (others => '0');
                            for i in 0 to 63 loop
                                v_sum := v_sum + resize(l2_mult(i), 40);
                            end loop;
                            l2_sum <= v_sum + (resize(l2_bias, 40) sll 8);
                            st1_valid <= '1';
                            st1_idx <= st0_idx;
                        else
                            st1_valid <= '0';
                        end if;

                        if st1_valid = '1' then
                            v_scaled := shift_right(l2_sum, 8);
                            if v_scaled > 32767 then v_sat := to_signed(32767, 16);
                            elsif v_scaled < -32768 then v_sat := to_signed(-32768, 16);
                            else v_sat := resize(v_scaled, 16); end if;

                            if v_sat > 0 then reg_L2(st1_idx) <= v_sat;
                            else reg_L2(st1_idx) <= (others => '0'); end if;

                            if st1_idx = 31 then
                                state <= L3_RUN;
                                s_cnt <= 0;
                                st0_valid <= '0';
                                st1_valid <= '0';
                            end if;
                        end if;

                    when L3_RUN =>
                        if s_cnt <= 15 then
                            for i in 0 to 31 loop
                                l3_mult(i) <= reg_L2(i) * weights_l3(s_cnt, i);
                            end loop;
                            l3_bias <= biases_l3(s_cnt);
                            st0_valid <= '1';
                            st0_idx <= s_cnt;
                            s_cnt <= s_cnt + 1;
                        else
                            st0_valid <= '0';
                        end if;

                        if st0_valid = '1' then
                            v_sum := (others => '0');
                            for i in 0 to 31 loop
                                v_sum := v_sum + resize(l3_mult(i), 40);
                            end loop;
                            l3_sum <= v_sum + (resize(l3_bias, 40) sll 8);
                            st1_valid <= '1';
                            st1_idx <= st0_idx;
                        else
                            st1_valid <= '0';
                        end if;

                        if st1_valid = '1' then
                            v_scaled := shift_right(l3_sum, 8);
                            if v_scaled > 32767 then v_sat := to_signed(32767, 16);
                            elsif v_scaled < -32768 then v_sat := to_signed(-32768, 16);
                            else v_sat := resize(v_scaled, 16); end if;

                            if v_sat > 0 then reg_L3(st1_idx) <= v_sat;
                            else reg_L3(st1_idx) <= (others => '0'); end if;

                            if st1_idx = 15 then
                                state <= L4_RUN;
                                s_cnt <= 0;
                                st0_valid <= '0';
                                st1_valid <= '0';
                            end if;
                        end if;

                    when L4_RUN =>
                        if s_cnt <= 2 then
                            for i in 0 to 15 loop
                                l4_mult(i) <= reg_L3(i) * weights_l4(s_cnt, i);
                            end loop;
                            l4_bias <= biases_l4(s_cnt);
                            st0_valid <= '1';
                            st0_idx <= s_cnt;
                            s_cnt <= s_cnt + 1;
                        else
                            st0_valid <= '0';
                        end if;

                        if st0_valid = '1' then
                            v_sum := (others => '0');
                            for i in 0 to 15 loop
                                v_sum := v_sum + resize(l4_mult(i), 40);
                            end loop;
                            l4_sum <= v_sum + (resize(l4_bias, 40) sll 8);
                            st1_valid <= '1';
                            st1_idx <= st0_idx;
                        else
                            st1_valid <= '0';
                        end if;

                        if st1_valid = '1' then
                            v_scaled := shift_right(l4_sum, 8);
                            if v_scaled > 32767 then v_sat := to_signed(32767, 16);
                            elsif v_scaled < -32768 then v_sat := to_signed(-32768, 16);
                            else v_sat := resize(v_scaled, 16); end if;

                            -- NO RELU for L4 (output layer)
                            reg_L4(st1_idx) <= v_sat;

                            if st1_idx = 2 then
                                state <= ARGMAX_RUN;
                            end if;
                        end if;

                    when ARGMAX_RUN =>
                        if reg_L4(0) >= reg_L4(1) and reg_L4(0) >= reg_L4(2) then
                            class_result <= "00"; -- SELL
                            o_led <= "001";
                        elsif reg_L4(1) >= reg_L4(0) and reg_L4(1) >= reg_L4(2) then
                            class_result <= "01"; -- HOLD
                            o_led <= "010";
                        else
                            class_result <= "10"; -- BUY
                            o_led <= "100";
                        end if;
                        state <= DONE;

                    when DONE =>
                        o_done <= '1';
                        o_busy <= '0';
                        if i_start = '0' then
                            state <= IDLE;
                        end if;
                end case;
            end if;
        end if;
    end process;

    o_class_result <= class_result;

end architecture Behavioral;
