--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Fri May  1 19:41:46 2026
--Host        : Batu running 64-bit major release  (build 9200)
--Command     : generate_target mlp_system_wrapper.bd
--Design      : mlp_system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mlp_system_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    dbg_mlp_busy_0 : out STD_LOGIC;
    dbg_mlp_busy_jb_0 : out STD_LOGIC;
    dbg_mlp_busy_jc_0 : out STD_LOGIC;
    dbg_mlp_busy_jd_0 : out STD_LOGIC;
    dbg_mlp_done_0 : out STD_LOGIC;
    dbg_mlp_done_jb_0 : out STD_LOGIC;
    dbg_mlp_done_jc_0 : out STD_LOGIC;
    dbg_mlp_done_jd_0 : out STD_LOGIC;
    dbg_stream_active_0 : out STD_LOGIC;
    dbg_stream_active_jb_0 : out STD_LOGIC;
    dbg_stream_active_jc_0 : out STD_LOGIC;
    dbg_stream_active_jd_0 : out STD_LOGIC;
    dbg_tlast_seen_0 : out STD_LOGIC;
    dbg_tlast_seen_jb_0 : out STD_LOGIC;
    dbg_tlast_seen_jc_0 : out STD_LOGIC;
    dbg_tlast_seen_jd_0 : out STD_LOGIC;
    o_led_0 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end mlp_system_wrapper;

architecture STRUCTURE of mlp_system_wrapper is
  component mlp_system is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    dbg_stream_active_0 : out STD_LOGIC;
    dbg_mlp_busy_0 : out STD_LOGIC;
    dbg_mlp_done_0 : out STD_LOGIC;
    dbg_tlast_seen_0 : out STD_LOGIC;
    dbg_stream_active_jb_0 : out STD_LOGIC;
    dbg_mlp_busy_jb_0 : out STD_LOGIC;
    dbg_mlp_done_jb_0 : out STD_LOGIC;
    dbg_tlast_seen_jb_0 : out STD_LOGIC;
    dbg_stream_active_jc_0 : out STD_LOGIC;
    dbg_mlp_busy_jc_0 : out STD_LOGIC;
    dbg_mlp_done_jc_0 : out STD_LOGIC;
    dbg_tlast_seen_jc_0 : out STD_LOGIC;
    dbg_stream_active_jd_0 : out STD_LOGIC;
    dbg_mlp_busy_jd_0 : out STD_LOGIC;
    dbg_mlp_done_jd_0 : out STD_LOGIC;
    dbg_tlast_seen_jd_0 : out STD_LOGIC;
    o_led_0 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component mlp_system;
begin
mlp_system_i: component mlp_system
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      dbg_mlp_busy_0 => dbg_mlp_busy_0,
      dbg_mlp_busy_jb_0 => dbg_mlp_busy_jb_0,
      dbg_mlp_busy_jc_0 => dbg_mlp_busy_jc_0,
      dbg_mlp_busy_jd_0 => dbg_mlp_busy_jd_0,
      dbg_mlp_done_0 => dbg_mlp_done_0,
      dbg_mlp_done_jb_0 => dbg_mlp_done_jb_0,
      dbg_mlp_done_jc_0 => dbg_mlp_done_jc_0,
      dbg_mlp_done_jd_0 => dbg_mlp_done_jd_0,
      dbg_stream_active_0 => dbg_stream_active_0,
      dbg_stream_active_jb_0 => dbg_stream_active_jb_0,
      dbg_stream_active_jc_0 => dbg_stream_active_jc_0,
      dbg_stream_active_jd_0 => dbg_stream_active_jd_0,
      dbg_tlast_seen_0 => dbg_tlast_seen_0,
      dbg_tlast_seen_jb_0 => dbg_tlast_seen_jb_0,
      dbg_tlast_seen_jc_0 => dbg_tlast_seen_jc_0,
      dbg_tlast_seen_jd_0 => dbg_tlast_seen_jd_0,
      o_led_0(7 downto 0) => o_led_0(7 downto 0)
    );
end STRUCTURE;
