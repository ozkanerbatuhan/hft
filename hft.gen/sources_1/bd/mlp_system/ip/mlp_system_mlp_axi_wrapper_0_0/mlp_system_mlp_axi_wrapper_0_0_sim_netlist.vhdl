-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Mar 12 02:28:57 2026
-- Host        : Batu running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {d:/vivado
--               projects/hft/hft.gen/sources_1/bd/mlp_system/ip/mlp_system_mlp_axi_wrapper_0_0/mlp_system_mlp_axi_wrapper_0_0_sim_netlist.vhdl}
-- Design      : mlp_system_mlp_axi_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mlp_system_mlp_axi_wrapper_0_0_Controller_FSM is
  port (
    i_wr_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \neuron_counter_reg[5]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \input_counter_reg[5]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \layer_counter_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_rd_addr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_class_result : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \neuron_counter_reg[1]_rep__4_0\ : out STD_LOGIC;
    \neuron_counter_reg[2]_rep__0_0\ : out STD_LOGIC;
    \layer_counter_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[10]_0\ : out STD_LOGIC;
    i_wr_addr : out STD_LOGIC_VECTOR ( 0 to 0 );
    max_value : out STD_LOGIC_VECTOR ( 15 downto 0 );
    C : out STD_LOGIC_VECTOR ( 6 downto 0 );
    B : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \max_value[15]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \max_value[15]_i_4_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_a_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    mlp_start : in STD_LOGIC;
    \axi_rdata_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata_reg[1]_1\ : in STD_LOGIC;
    \axi_rdata_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    select_reg : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    \max_value_reg[15]_0\ : in STD_LOGIC;
    \max_value_reg[14]_0\ : in STD_LOGIC;
    \max_value_reg[13]_0\ : in STD_LOGIC;
    \max_value_reg[12]_0\ : in STD_LOGIC;
    \max_value_reg[11]_0\ : in STD_LOGIC;
    \max_value_reg[10]_0\ : in STD_LOGIC;
    \max_value_reg[9]_0\ : in STD_LOGIC;
    \max_value_reg[8]_0\ : in STD_LOGIC;
    \max_value_reg[7]_0\ : in STD_LOGIC;
    \max_value_reg[6]_0\ : in STD_LOGIC;
    \max_value_reg[5]_0\ : in STD_LOGIC;
    \max_value_reg[4]_0\ : in STD_LOGIC;
    \max_value_reg[3]_0\ : in STD_LOGIC;
    \max_value_reg[2]_0\ : in STD_LOGIC;
    \max_value_reg[1]_0\ : in STD_LOGIC;
    \max_value_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mlp_system_mlp_axi_wrapper_0_0_Controller_FSM : entity is "Controller_FSM";
end mlp_system_mlp_axi_wrapper_0_0_Controller_FSM;

architecture STRUCTURE of mlp_system_mlp_axi_wrapper_0_0_Controller_FSM is
  signal ARG_i_100_n_0 : STD_LOGIC;
  signal ARG_i_101_n_0 : STD_LOGIC;
  signal ARG_i_102_n_0 : STD_LOGIC;
  signal ARG_i_103_n_0 : STD_LOGIC;
  signal ARG_i_105_n_0 : STD_LOGIC;
  signal ARG_i_106_n_0 : STD_LOGIC;
  signal ARG_i_107_n_0 : STD_LOGIC;
  signal ARG_i_108_n_0 : STD_LOGIC;
  signal ARG_i_109_n_0 : STD_LOGIC;
  signal ARG_i_110_n_0 : STD_LOGIC;
  signal ARG_i_111_n_0 : STD_LOGIC;
  signal ARG_i_112_n_0 : STD_LOGIC;
  signal ARG_i_113_n_0 : STD_LOGIC;
  signal ARG_i_115_n_0 : STD_LOGIC;
  signal ARG_i_116_n_0 : STD_LOGIC;
  signal ARG_i_117_n_0 : STD_LOGIC;
  signal ARG_i_118_n_0 : STD_LOGIC;
  signal ARG_i_119_n_0 : STD_LOGIC;
  signal ARG_i_120_n_0 : STD_LOGIC;
  signal ARG_i_121_n_0 : STD_LOGIC;
  signal ARG_i_122_n_0 : STD_LOGIC;
  signal ARG_i_123_n_0 : STD_LOGIC;
  signal ARG_i_125_n_0 : STD_LOGIC;
  signal ARG_i_126_n_0 : STD_LOGIC;
  signal ARG_i_127_n_0 : STD_LOGIC;
  signal ARG_i_128_n_0 : STD_LOGIC;
  signal ARG_i_129_n_0 : STD_LOGIC;
  signal ARG_i_130_n_0 : STD_LOGIC;
  signal ARG_i_131_n_0 : STD_LOGIC;
  signal ARG_i_132_n_0 : STD_LOGIC;
  signal ARG_i_133_n_0 : STD_LOGIC;
  signal ARG_i_135_n_0 : STD_LOGIC;
  signal ARG_i_136_n_0 : STD_LOGIC;
  signal ARG_i_137_n_0 : STD_LOGIC;
  signal ARG_i_138_n_0 : STD_LOGIC;
  signal ARG_i_139_n_0 : STD_LOGIC;
  signal ARG_i_140_n_0 : STD_LOGIC;
  signal ARG_i_141_n_0 : STD_LOGIC;
  signal ARG_i_142_n_0 : STD_LOGIC;
  signal ARG_i_143_n_0 : STD_LOGIC;
  signal ARG_i_145_n_0 : STD_LOGIC;
  signal ARG_i_146_n_0 : STD_LOGIC;
  signal ARG_i_147_n_0 : STD_LOGIC;
  signal ARG_i_148_n_0 : STD_LOGIC;
  signal ARG_i_149_n_0 : STD_LOGIC;
  signal ARG_i_150_n_0 : STD_LOGIC;
  signal ARG_i_151_n_0 : STD_LOGIC;
  signal ARG_i_152_n_0 : STD_LOGIC;
  signal ARG_i_153_n_0 : STD_LOGIC;
  signal ARG_i_154_n_0 : STD_LOGIC;
  signal ARG_i_155_n_0 : STD_LOGIC;
  signal ARG_i_156_n_0 : STD_LOGIC;
  signal ARG_i_157_n_0 : STD_LOGIC;
  signal ARG_i_158_n_0 : STD_LOGIC;
  signal ARG_i_159_n_0 : STD_LOGIC;
  signal ARG_i_160_n_0 : STD_LOGIC;
  signal ARG_i_161_n_0 : STD_LOGIC;
  signal ARG_i_162_n_0 : STD_LOGIC;
  signal ARG_i_163_n_0 : STD_LOGIC;
  signal ARG_i_164_n_0 : STD_LOGIC;
  signal ARG_i_165_n_0 : STD_LOGIC;
  signal ARG_i_166_n_0 : STD_LOGIC;
  signal ARG_i_167_n_0 : STD_LOGIC;
  signal ARG_i_168_n_0 : STD_LOGIC;
  signal ARG_i_169_n_0 : STD_LOGIC;
  signal ARG_i_170_n_0 : STD_LOGIC;
  signal ARG_i_171_n_0 : STD_LOGIC;
  signal ARG_i_172_n_0 : STD_LOGIC;
  signal ARG_i_173_n_0 : STD_LOGIC;
  signal ARG_i_174_n_0 : STD_LOGIC;
  signal ARG_i_175_n_0 : STD_LOGIC;
  signal ARG_i_176_n_0 : STD_LOGIC;
  signal ARG_i_177_n_0 : STD_LOGIC;
  signal ARG_i_178_n_0 : STD_LOGIC;
  signal ARG_i_179_n_0 : STD_LOGIC;
  signal ARG_i_180_n_0 : STD_LOGIC;
  signal ARG_i_181_n_0 : STD_LOGIC;
  signal ARG_i_182_n_0 : STD_LOGIC;
  signal ARG_i_183_n_0 : STD_LOGIC;
  signal ARG_i_184_n_0 : STD_LOGIC;
  signal ARG_i_185_n_0 : STD_LOGIC;
  signal ARG_i_186_n_0 : STD_LOGIC;
  signal ARG_i_187_n_0 : STD_LOGIC;
  signal ARG_i_188_n_0 : STD_LOGIC;
  signal ARG_i_189_n_0 : STD_LOGIC;
  signal ARG_i_190_n_0 : STD_LOGIC;
  signal ARG_i_191_n_0 : STD_LOGIC;
  signal ARG_i_192_n_0 : STD_LOGIC;
  signal ARG_i_193_n_0 : STD_LOGIC;
  signal ARG_i_194_n_0 : STD_LOGIC;
  signal ARG_i_195_n_0 : STD_LOGIC;
  signal ARG_i_196_n_0 : STD_LOGIC;
  signal ARG_i_197_n_0 : STD_LOGIC;
  signal ARG_i_198_n_0 : STD_LOGIC;
  signal ARG_i_199_n_0 : STD_LOGIC;
  signal ARG_i_200_n_0 : STD_LOGIC;
  signal ARG_i_201_n_0 : STD_LOGIC;
  signal ARG_i_202_n_0 : STD_LOGIC;
  signal ARG_i_203_n_0 : STD_LOGIC;
  signal ARG_i_204_n_0 : STD_LOGIC;
  signal ARG_i_205_n_0 : STD_LOGIC;
  signal ARG_i_206_n_0 : STD_LOGIC;
  signal ARG_i_207_n_0 : STD_LOGIC;
  signal ARG_i_208_n_0 : STD_LOGIC;
  signal ARG_i_209_n_0 : STD_LOGIC;
  signal ARG_i_210_n_0 : STD_LOGIC;
  signal ARG_i_211_n_0 : STD_LOGIC;
  signal ARG_i_212_n_0 : STD_LOGIC;
  signal ARG_i_213_n_0 : STD_LOGIC;
  signal ARG_i_214_n_0 : STD_LOGIC;
  signal ARG_i_215_n_0 : STD_LOGIC;
  signal ARG_i_216_n_0 : STD_LOGIC;
  signal ARG_i_217_n_0 : STD_LOGIC;
  signal ARG_i_218_n_0 : STD_LOGIC;
  signal ARG_i_219_n_0 : STD_LOGIC;
  signal ARG_i_220_n_0 : STD_LOGIC;
  signal ARG_i_221_n_0 : STD_LOGIC;
  signal ARG_i_222_n_0 : STD_LOGIC;
  signal ARG_i_223_n_0 : STD_LOGIC;
  signal ARG_i_224_n_0 : STD_LOGIC;
  signal ARG_i_225_n_0 : STD_LOGIC;
  signal ARG_i_226_n_0 : STD_LOGIC;
  signal ARG_i_227_n_0 : STD_LOGIC;
  signal ARG_i_228_n_0 : STD_LOGIC;
  signal ARG_i_229_n_0 : STD_LOGIC;
  signal ARG_i_230_n_0 : STD_LOGIC;
  signal ARG_i_231_n_0 : STD_LOGIC;
  signal ARG_i_232_n_0 : STD_LOGIC;
  signal ARG_i_233_n_0 : STD_LOGIC;
  signal ARG_i_234_n_0 : STD_LOGIC;
  signal ARG_i_235_n_0 : STD_LOGIC;
  signal ARG_i_236_n_0 : STD_LOGIC;
  signal ARG_i_237_n_0 : STD_LOGIC;
  signal ARG_i_238_n_0 : STD_LOGIC;
  signal ARG_i_239_n_0 : STD_LOGIC;
  signal ARG_i_240_n_0 : STD_LOGIC;
  signal ARG_i_241_n_0 : STD_LOGIC;
  signal ARG_i_242_n_0 : STD_LOGIC;
  signal ARG_i_243_n_0 : STD_LOGIC;
  signal ARG_i_244_n_0 : STD_LOGIC;
  signal ARG_i_245_n_0 : STD_LOGIC;
  signal ARG_i_246_n_0 : STD_LOGIC;
  signal ARG_i_247_n_0 : STD_LOGIC;
  signal ARG_i_248_n_0 : STD_LOGIC;
  signal ARG_i_249_n_0 : STD_LOGIC;
  signal ARG_i_250_n_0 : STD_LOGIC;
  signal ARG_i_251_n_0 : STD_LOGIC;
  signal ARG_i_252_n_0 : STD_LOGIC;
  signal ARG_i_253_n_0 : STD_LOGIC;
  signal ARG_i_254_n_0 : STD_LOGIC;
  signal ARG_i_255_n_0 : STD_LOGIC;
  signal ARG_i_256_n_0 : STD_LOGIC;
  signal ARG_i_257_n_0 : STD_LOGIC;
  signal ARG_i_258_n_0 : STD_LOGIC;
  signal ARG_i_259_n_0 : STD_LOGIC;
  signal ARG_i_260_n_0 : STD_LOGIC;
  signal ARG_i_261_n_0 : STD_LOGIC;
  signal ARG_i_262_n_0 : STD_LOGIC;
  signal ARG_i_263_n_0 : STD_LOGIC;
  signal ARG_i_264_n_0 : STD_LOGIC;
  signal ARG_i_265_n_0 : STD_LOGIC;
  signal ARG_i_266_n_0 : STD_LOGIC;
  signal ARG_i_267_n_0 : STD_LOGIC;
  signal ARG_i_268_n_0 : STD_LOGIC;
  signal ARG_i_269_n_0 : STD_LOGIC;
  signal ARG_i_270_n_0 : STD_LOGIC;
  signal ARG_i_271_n_0 : STD_LOGIC;
  signal ARG_i_272_n_0 : STD_LOGIC;
  signal ARG_i_273_n_0 : STD_LOGIC;
  signal ARG_i_274_n_0 : STD_LOGIC;
  signal ARG_i_275_n_0 : STD_LOGIC;
  signal ARG_i_276_n_0 : STD_LOGIC;
  signal ARG_i_277_n_0 : STD_LOGIC;
  signal ARG_i_278_n_0 : STD_LOGIC;
  signal ARG_i_279_n_0 : STD_LOGIC;
  signal ARG_i_280_n_0 : STD_LOGIC;
  signal ARG_i_281_n_0 : STD_LOGIC;
  signal ARG_i_282_n_0 : STD_LOGIC;
  signal ARG_i_283_n_0 : STD_LOGIC;
  signal ARG_i_284_n_0 : STD_LOGIC;
  signal ARG_i_285_n_0 : STD_LOGIC;
  signal ARG_i_286_n_0 : STD_LOGIC;
  signal ARG_i_287_n_0 : STD_LOGIC;
  signal ARG_i_288_n_0 : STD_LOGIC;
  signal ARG_i_289_n_0 : STD_LOGIC;
  signal ARG_i_290_n_0 : STD_LOGIC;
  signal ARG_i_291_n_0 : STD_LOGIC;
  signal ARG_i_292_n_0 : STD_LOGIC;
  signal ARG_i_293_n_0 : STD_LOGIC;
  signal ARG_i_294_n_0 : STD_LOGIC;
  signal ARG_i_295_n_0 : STD_LOGIC;
  signal ARG_i_296_n_0 : STD_LOGIC;
  signal ARG_i_297_n_0 : STD_LOGIC;
  signal ARG_i_298_n_0 : STD_LOGIC;
  signal ARG_i_299_n_0 : STD_LOGIC;
  signal ARG_i_300_n_0 : STD_LOGIC;
  signal ARG_i_301_n_0 : STD_LOGIC;
  signal ARG_i_302_n_0 : STD_LOGIC;
  signal ARG_i_303_n_0 : STD_LOGIC;
  signal ARG_i_304_n_0 : STD_LOGIC;
  signal ARG_i_305_n_0 : STD_LOGIC;
  signal ARG_i_306_n_0 : STD_LOGIC;
  signal ARG_i_307_n_0 : STD_LOGIC;
  signal ARG_i_308_n_0 : STD_LOGIC;
  signal ARG_i_309_n_0 : STD_LOGIC;
  signal ARG_i_310_n_0 : STD_LOGIC;
  signal ARG_i_311_n_0 : STD_LOGIC;
  signal ARG_i_312_n_0 : STD_LOGIC;
  signal ARG_i_313_n_0 : STD_LOGIC;
  signal ARG_i_314_n_0 : STD_LOGIC;
  signal ARG_i_315_n_0 : STD_LOGIC;
  signal ARG_i_316_n_0 : STD_LOGIC;
  signal ARG_i_317_n_0 : STD_LOGIC;
  signal ARG_i_318_n_0 : STD_LOGIC;
  signal ARG_i_319_n_0 : STD_LOGIC;
  signal ARG_i_320_n_0 : STD_LOGIC;
  signal ARG_i_321_n_0 : STD_LOGIC;
  signal ARG_i_322_n_0 : STD_LOGIC;
  signal ARG_i_323_n_0 : STD_LOGIC;
  signal ARG_i_324_n_0 : STD_LOGIC;
  signal ARG_i_325_n_0 : STD_LOGIC;
  signal ARG_i_326_n_0 : STD_LOGIC;
  signal ARG_i_327_n_0 : STD_LOGIC;
  signal ARG_i_328_n_0 : STD_LOGIC;
  signal ARG_i_329_n_0 : STD_LOGIC;
  signal ARG_i_330_n_0 : STD_LOGIC;
  signal ARG_i_331_n_0 : STD_LOGIC;
  signal ARG_i_332_n_0 : STD_LOGIC;
  signal ARG_i_333_n_0 : STD_LOGIC;
  signal ARG_i_334_n_0 : STD_LOGIC;
  signal ARG_i_335_n_0 : STD_LOGIC;
  signal ARG_i_336_n_0 : STD_LOGIC;
  signal ARG_i_337_n_0 : STD_LOGIC;
  signal ARG_i_338_n_0 : STD_LOGIC;
  signal ARG_i_339_n_0 : STD_LOGIC;
  signal ARG_i_340_n_0 : STD_LOGIC;
  signal ARG_i_341_n_0 : STD_LOGIC;
  signal ARG_i_342_n_0 : STD_LOGIC;
  signal ARG_i_343_n_0 : STD_LOGIC;
  signal ARG_i_344_n_0 : STD_LOGIC;
  signal ARG_i_345_n_0 : STD_LOGIC;
  signal ARG_i_346_n_0 : STD_LOGIC;
  signal ARG_i_347_n_0 : STD_LOGIC;
  signal ARG_i_348_n_0 : STD_LOGIC;
  signal ARG_i_349_n_0 : STD_LOGIC;
  signal ARG_i_350_n_0 : STD_LOGIC;
  signal ARG_i_351_n_0 : STD_LOGIC;
  signal ARG_i_352_n_0 : STD_LOGIC;
  signal ARG_i_353_n_0 : STD_LOGIC;
  signal ARG_i_354_n_0 : STD_LOGIC;
  signal ARG_i_355_n_0 : STD_LOGIC;
  signal ARG_i_356_n_0 : STD_LOGIC;
  signal ARG_i_357_n_0 : STD_LOGIC;
  signal ARG_i_358_n_0 : STD_LOGIC;
  signal ARG_i_359_n_0 : STD_LOGIC;
  signal ARG_i_360_n_0 : STD_LOGIC;
  signal ARG_i_361_n_0 : STD_LOGIC;
  signal ARG_i_362_n_0 : STD_LOGIC;
  signal ARG_i_363_n_0 : STD_LOGIC;
  signal ARG_i_364_n_0 : STD_LOGIC;
  signal ARG_i_365_n_0 : STD_LOGIC;
  signal ARG_i_366_n_0 : STD_LOGIC;
  signal ARG_i_367_n_0 : STD_LOGIC;
  signal ARG_i_368_n_0 : STD_LOGIC;
  signal ARG_i_369_n_0 : STD_LOGIC;
  signal ARG_i_36_n_0 : STD_LOGIC;
  signal ARG_i_370_n_0 : STD_LOGIC;
  signal ARG_i_371_n_0 : STD_LOGIC;
  signal ARG_i_372_n_0 : STD_LOGIC;
  signal ARG_i_373_n_0 : STD_LOGIC;
  signal ARG_i_374_n_0 : STD_LOGIC;
  signal ARG_i_375_n_0 : STD_LOGIC;
  signal ARG_i_376_n_0 : STD_LOGIC;
  signal ARG_i_377_n_0 : STD_LOGIC;
  signal ARG_i_378_n_0 : STD_LOGIC;
  signal ARG_i_379_n_0 : STD_LOGIC;
  signal ARG_i_380_n_0 : STD_LOGIC;
  signal ARG_i_381_n_0 : STD_LOGIC;
  signal ARG_i_382_n_0 : STD_LOGIC;
  signal ARG_i_383_n_0 : STD_LOGIC;
  signal ARG_i_384_n_0 : STD_LOGIC;
  signal ARG_i_385_n_0 : STD_LOGIC;
  signal ARG_i_386_n_0 : STD_LOGIC;
  signal ARG_i_387_n_0 : STD_LOGIC;
  signal ARG_i_388_n_0 : STD_LOGIC;
  signal ARG_i_389_n_0 : STD_LOGIC;
  signal ARG_i_390_n_0 : STD_LOGIC;
  signal ARG_i_391_n_0 : STD_LOGIC;
  signal ARG_i_392_n_0 : STD_LOGIC;
  signal ARG_i_393_n_0 : STD_LOGIC;
  signal ARG_i_394_n_0 : STD_LOGIC;
  signal ARG_i_395_n_0 : STD_LOGIC;
  signal ARG_i_396_n_0 : STD_LOGIC;
  signal ARG_i_397_n_0 : STD_LOGIC;
  signal ARG_i_398_n_0 : STD_LOGIC;
  signal ARG_i_399_n_0 : STD_LOGIC;
  signal ARG_i_400_n_0 : STD_LOGIC;
  signal ARG_i_401_n_0 : STD_LOGIC;
  signal ARG_i_402_n_0 : STD_LOGIC;
  signal ARG_i_403_n_0 : STD_LOGIC;
  signal ARG_i_404_n_0 : STD_LOGIC;
  signal ARG_i_405_n_0 : STD_LOGIC;
  signal ARG_i_406_n_0 : STD_LOGIC;
  signal ARG_i_407_n_0 : STD_LOGIC;
  signal ARG_i_408_n_0 : STD_LOGIC;
  signal ARG_i_409_n_0 : STD_LOGIC;
  signal ARG_i_410_n_0 : STD_LOGIC;
  signal ARG_i_411_n_0 : STD_LOGIC;
  signal ARG_i_412_n_0 : STD_LOGIC;
  signal ARG_i_413_n_0 : STD_LOGIC;
  signal ARG_i_414_n_0 : STD_LOGIC;
  signal ARG_i_415_n_0 : STD_LOGIC;
  signal ARG_i_416_n_0 : STD_LOGIC;
  signal ARG_i_417_n_0 : STD_LOGIC;
  signal ARG_i_418_n_0 : STD_LOGIC;
  signal ARG_i_419_n_0 : STD_LOGIC;
  signal ARG_i_41_n_0 : STD_LOGIC;
  signal ARG_i_420_n_0 : STD_LOGIC;
  signal ARG_i_421_n_0 : STD_LOGIC;
  signal ARG_i_422_n_0 : STD_LOGIC;
  signal ARG_i_423_n_0 : STD_LOGIC;
  signal ARG_i_424_n_0 : STD_LOGIC;
  signal ARG_i_425_n_0 : STD_LOGIC;
  signal ARG_i_426_n_0 : STD_LOGIC;
  signal ARG_i_427_n_0 : STD_LOGIC;
  signal ARG_i_428_n_0 : STD_LOGIC;
  signal ARG_i_429_n_0 : STD_LOGIC;
  signal ARG_i_42_n_0 : STD_LOGIC;
  signal ARG_i_430_n_0 : STD_LOGIC;
  signal ARG_i_431_n_0 : STD_LOGIC;
  signal ARG_i_432_n_0 : STD_LOGIC;
  signal ARG_i_433_n_0 : STD_LOGIC;
  signal ARG_i_434_n_0 : STD_LOGIC;
  signal ARG_i_435_n_0 : STD_LOGIC;
  signal ARG_i_436_n_0 : STD_LOGIC;
  signal ARG_i_437_n_0 : STD_LOGIC;
  signal ARG_i_438_n_0 : STD_LOGIC;
  signal ARG_i_439_n_0 : STD_LOGIC;
  signal ARG_i_43_n_0 : STD_LOGIC;
  signal ARG_i_440_n_0 : STD_LOGIC;
  signal ARG_i_441_n_0 : STD_LOGIC;
  signal ARG_i_442_n_0 : STD_LOGIC;
  signal ARG_i_443_n_0 : STD_LOGIC;
  signal ARG_i_444_n_0 : STD_LOGIC;
  signal ARG_i_445_n_0 : STD_LOGIC;
  signal ARG_i_446_n_0 : STD_LOGIC;
  signal ARG_i_447_n_0 : STD_LOGIC;
  signal ARG_i_448_n_0 : STD_LOGIC;
  signal ARG_i_449_n_0 : STD_LOGIC;
  signal ARG_i_44_n_0 : STD_LOGIC;
  signal ARG_i_450_n_0 : STD_LOGIC;
  signal ARG_i_451_n_0 : STD_LOGIC;
  signal ARG_i_452_n_0 : STD_LOGIC;
  signal ARG_i_453_n_0 : STD_LOGIC;
  signal ARG_i_454_n_0 : STD_LOGIC;
  signal ARG_i_455_n_0 : STD_LOGIC;
  signal ARG_i_456_n_0 : STD_LOGIC;
  signal ARG_i_457_n_0 : STD_LOGIC;
  signal ARG_i_458_n_0 : STD_LOGIC;
  signal ARG_i_459_n_0 : STD_LOGIC;
  signal ARG_i_45_n_0 : STD_LOGIC;
  signal ARG_i_460_n_0 : STD_LOGIC;
  signal ARG_i_461_n_0 : STD_LOGIC;
  signal ARG_i_462_n_0 : STD_LOGIC;
  signal ARG_i_463_n_0 : STD_LOGIC;
  signal ARG_i_464_n_0 : STD_LOGIC;
  signal ARG_i_465_n_0 : STD_LOGIC;
  signal ARG_i_466_n_0 : STD_LOGIC;
  signal ARG_i_467_n_0 : STD_LOGIC;
  signal ARG_i_468_n_0 : STD_LOGIC;
  signal ARG_i_469_n_0 : STD_LOGIC;
  signal ARG_i_46_n_0 : STD_LOGIC;
  signal ARG_i_470_n_0 : STD_LOGIC;
  signal ARG_i_471_n_0 : STD_LOGIC;
  signal ARG_i_472_n_0 : STD_LOGIC;
  signal ARG_i_473_n_0 : STD_LOGIC;
  signal ARG_i_474_n_0 : STD_LOGIC;
  signal ARG_i_475_n_0 : STD_LOGIC;
  signal ARG_i_476_n_0 : STD_LOGIC;
  signal ARG_i_477_n_0 : STD_LOGIC;
  signal ARG_i_478_n_0 : STD_LOGIC;
  signal ARG_i_479_n_0 : STD_LOGIC;
  signal ARG_i_47_n_0 : STD_LOGIC;
  signal ARG_i_480_n_0 : STD_LOGIC;
  signal ARG_i_481_n_0 : STD_LOGIC;
  signal ARG_i_482_n_0 : STD_LOGIC;
  signal ARG_i_483_n_0 : STD_LOGIC;
  signal ARG_i_484_n_0 : STD_LOGIC;
  signal ARG_i_485_n_0 : STD_LOGIC;
  signal ARG_i_486_n_0 : STD_LOGIC;
  signal ARG_i_487_n_0 : STD_LOGIC;
  signal ARG_i_488_n_0 : STD_LOGIC;
  signal ARG_i_489_n_0 : STD_LOGIC;
  signal ARG_i_48_n_0 : STD_LOGIC;
  signal ARG_i_490_n_0 : STD_LOGIC;
  signal ARG_i_491_n_0 : STD_LOGIC;
  signal ARG_i_492_n_0 : STD_LOGIC;
  signal ARG_i_493_n_0 : STD_LOGIC;
  signal ARG_i_494_n_0 : STD_LOGIC;
  signal ARG_i_495_n_0 : STD_LOGIC;
  signal ARG_i_496_n_0 : STD_LOGIC;
  signal ARG_i_497_n_0 : STD_LOGIC;
  signal ARG_i_498_n_0 : STD_LOGIC;
  signal ARG_i_499_n_0 : STD_LOGIC;
  signal ARG_i_49_n_0 : STD_LOGIC;
  signal ARG_i_500_n_0 : STD_LOGIC;
  signal ARG_i_501_n_0 : STD_LOGIC;
  signal ARG_i_502_n_0 : STD_LOGIC;
  signal ARG_i_503_n_0 : STD_LOGIC;
  signal ARG_i_504_n_0 : STD_LOGIC;
  signal ARG_i_505_n_0 : STD_LOGIC;
  signal ARG_i_506_n_0 : STD_LOGIC;
  signal ARG_i_507_n_0 : STD_LOGIC;
  signal ARG_i_508_n_0 : STD_LOGIC;
  signal ARG_i_509_n_0 : STD_LOGIC;
  signal ARG_i_50_n_0 : STD_LOGIC;
  signal ARG_i_510_n_0 : STD_LOGIC;
  signal ARG_i_511_n_0 : STD_LOGIC;
  signal ARG_i_512_n_0 : STD_LOGIC;
  signal ARG_i_513_n_0 : STD_LOGIC;
  signal ARG_i_514_n_0 : STD_LOGIC;
  signal ARG_i_515_n_0 : STD_LOGIC;
  signal ARG_i_516_n_0 : STD_LOGIC;
  signal ARG_i_517_n_0 : STD_LOGIC;
  signal ARG_i_518_n_0 : STD_LOGIC;
  signal ARG_i_519_n_0 : STD_LOGIC;
  signal ARG_i_51_n_0 : STD_LOGIC;
  signal ARG_i_520_n_0 : STD_LOGIC;
  signal ARG_i_521_n_0 : STD_LOGIC;
  signal ARG_i_522_n_0 : STD_LOGIC;
  signal ARG_i_523_n_0 : STD_LOGIC;
  signal ARG_i_524_n_0 : STD_LOGIC;
  signal ARG_i_525_n_0 : STD_LOGIC;
  signal ARG_i_526_n_0 : STD_LOGIC;
  signal ARG_i_527_n_0 : STD_LOGIC;
  signal ARG_i_528_n_0 : STD_LOGIC;
  signal ARG_i_529_n_0 : STD_LOGIC;
  signal ARG_i_52_n_0 : STD_LOGIC;
  signal ARG_i_530_n_0 : STD_LOGIC;
  signal ARG_i_531_n_0 : STD_LOGIC;
  signal ARG_i_532_n_0 : STD_LOGIC;
  signal ARG_i_533_n_0 : STD_LOGIC;
  signal ARG_i_534_n_0 : STD_LOGIC;
  signal ARG_i_535_n_0 : STD_LOGIC;
  signal ARG_i_536_n_0 : STD_LOGIC;
  signal ARG_i_537_n_0 : STD_LOGIC;
  signal ARG_i_538_n_0 : STD_LOGIC;
  signal ARG_i_539_n_0 : STD_LOGIC;
  signal ARG_i_53_n_0 : STD_LOGIC;
  signal ARG_i_540_n_0 : STD_LOGIC;
  signal ARG_i_541_n_0 : STD_LOGIC;
  signal ARG_i_542_n_0 : STD_LOGIC;
  signal ARG_i_543_n_0 : STD_LOGIC;
  signal ARG_i_544_n_0 : STD_LOGIC;
  signal ARG_i_545_n_0 : STD_LOGIC;
  signal ARG_i_546_n_0 : STD_LOGIC;
  signal ARG_i_547_n_0 : STD_LOGIC;
  signal ARG_i_548_n_0 : STD_LOGIC;
  signal ARG_i_549_n_0 : STD_LOGIC;
  signal ARG_i_54_n_0 : STD_LOGIC;
  signal ARG_i_550_n_0 : STD_LOGIC;
  signal ARG_i_551_n_0 : STD_LOGIC;
  signal ARG_i_552_n_0 : STD_LOGIC;
  signal ARG_i_553_n_0 : STD_LOGIC;
  signal ARG_i_554_n_0 : STD_LOGIC;
  signal ARG_i_555_n_0 : STD_LOGIC;
  signal ARG_i_556_n_0 : STD_LOGIC;
  signal ARG_i_557_n_0 : STD_LOGIC;
  signal ARG_i_558_n_0 : STD_LOGIC;
  signal ARG_i_559_n_0 : STD_LOGIC;
  signal ARG_i_55_n_0 : STD_LOGIC;
  signal ARG_i_560_n_0 : STD_LOGIC;
  signal ARG_i_561_n_0 : STD_LOGIC;
  signal ARG_i_562_n_0 : STD_LOGIC;
  signal ARG_i_563_n_0 : STD_LOGIC;
  signal ARG_i_564_n_0 : STD_LOGIC;
  signal ARG_i_565_n_0 : STD_LOGIC;
  signal ARG_i_566_n_0 : STD_LOGIC;
  signal ARG_i_567_n_0 : STD_LOGIC;
  signal ARG_i_568_n_0 : STD_LOGIC;
  signal ARG_i_569_n_0 : STD_LOGIC;
  signal ARG_i_56_n_0 : STD_LOGIC;
  signal ARG_i_570_n_0 : STD_LOGIC;
  signal ARG_i_571_n_0 : STD_LOGIC;
  signal ARG_i_572_n_0 : STD_LOGIC;
  signal ARG_i_573_n_0 : STD_LOGIC;
  signal ARG_i_574_n_0 : STD_LOGIC;
  signal ARG_i_575_n_0 : STD_LOGIC;
  signal ARG_i_576_n_0 : STD_LOGIC;
  signal ARG_i_577_n_0 : STD_LOGIC;
  signal ARG_i_578_n_0 : STD_LOGIC;
  signal ARG_i_579_n_0 : STD_LOGIC;
  signal ARG_i_57_n_0 : STD_LOGIC;
  signal ARG_i_580_n_0 : STD_LOGIC;
  signal ARG_i_581_n_0 : STD_LOGIC;
  signal ARG_i_582_n_0 : STD_LOGIC;
  signal ARG_i_583_n_0 : STD_LOGIC;
  signal ARG_i_584_n_0 : STD_LOGIC;
  signal ARG_i_585_n_0 : STD_LOGIC;
  signal ARG_i_586_n_0 : STD_LOGIC;
  signal ARG_i_587_n_0 : STD_LOGIC;
  signal ARG_i_588_n_0 : STD_LOGIC;
  signal ARG_i_589_n_0 : STD_LOGIC;
  signal ARG_i_58_n_0 : STD_LOGIC;
  signal ARG_i_590_n_0 : STD_LOGIC;
  signal ARG_i_591_n_0 : STD_LOGIC;
  signal ARG_i_592_n_0 : STD_LOGIC;
  signal ARG_i_593_n_0 : STD_LOGIC;
  signal ARG_i_594_n_0 : STD_LOGIC;
  signal ARG_i_595_n_0 : STD_LOGIC;
  signal ARG_i_596_n_0 : STD_LOGIC;
  signal ARG_i_597_n_0 : STD_LOGIC;
  signal ARG_i_598_n_0 : STD_LOGIC;
  signal ARG_i_599_n_0 : STD_LOGIC;
  signal ARG_i_59_n_0 : STD_LOGIC;
  signal ARG_i_600_n_0 : STD_LOGIC;
  signal ARG_i_601_n_0 : STD_LOGIC;
  signal ARG_i_602_n_0 : STD_LOGIC;
  signal ARG_i_603_n_0 : STD_LOGIC;
  signal ARG_i_604_n_0 : STD_LOGIC;
  signal ARG_i_605_n_0 : STD_LOGIC;
  signal ARG_i_606_n_0 : STD_LOGIC;
  signal ARG_i_607_n_0 : STD_LOGIC;
  signal ARG_i_608_n_0 : STD_LOGIC;
  signal ARG_i_609_n_0 : STD_LOGIC;
  signal ARG_i_60_n_0 : STD_LOGIC;
  signal ARG_i_610_n_0 : STD_LOGIC;
  signal ARG_i_611_n_0 : STD_LOGIC;
  signal ARG_i_612_n_0 : STD_LOGIC;
  signal ARG_i_613_n_0 : STD_LOGIC;
  signal ARG_i_614_n_0 : STD_LOGIC;
  signal ARG_i_615_n_0 : STD_LOGIC;
  signal ARG_i_616_n_0 : STD_LOGIC;
  signal ARG_i_617_n_0 : STD_LOGIC;
  signal ARG_i_618_n_0 : STD_LOGIC;
  signal ARG_i_619_n_0 : STD_LOGIC;
  signal ARG_i_61_n_0 : STD_LOGIC;
  signal ARG_i_620_n_0 : STD_LOGIC;
  signal ARG_i_621_n_0 : STD_LOGIC;
  signal ARG_i_622_n_0 : STD_LOGIC;
  signal ARG_i_623_n_0 : STD_LOGIC;
  signal ARG_i_624_n_0 : STD_LOGIC;
  signal ARG_i_625_n_0 : STD_LOGIC;
  signal ARG_i_626_n_0 : STD_LOGIC;
  signal ARG_i_627_n_0 : STD_LOGIC;
  signal ARG_i_628_n_0 : STD_LOGIC;
  signal ARG_i_629_n_0 : STD_LOGIC;
  signal ARG_i_62_n_0 : STD_LOGIC;
  signal ARG_i_630_n_0 : STD_LOGIC;
  signal ARG_i_631_n_0 : STD_LOGIC;
  signal ARG_i_632_n_0 : STD_LOGIC;
  signal ARG_i_633_n_0 : STD_LOGIC;
  signal ARG_i_634_n_0 : STD_LOGIC;
  signal ARG_i_635_n_0 : STD_LOGIC;
  signal ARG_i_636_n_0 : STD_LOGIC;
  signal ARG_i_637_n_0 : STD_LOGIC;
  signal ARG_i_638_n_0 : STD_LOGIC;
  signal ARG_i_639_n_0 : STD_LOGIC;
  signal ARG_i_640_n_0 : STD_LOGIC;
  signal ARG_i_641_n_0 : STD_LOGIC;
  signal ARG_i_642_n_0 : STD_LOGIC;
  signal ARG_i_643_n_0 : STD_LOGIC;
  signal ARG_i_644_n_0 : STD_LOGIC;
  signal ARG_i_645_n_0 : STD_LOGIC;
  signal ARG_i_646_n_0 : STD_LOGIC;
  signal ARG_i_647_n_0 : STD_LOGIC;
  signal ARG_i_648_n_0 : STD_LOGIC;
  signal ARG_i_649_n_0 : STD_LOGIC;
  signal ARG_i_64_n_0 : STD_LOGIC;
  signal ARG_i_650_n_0 : STD_LOGIC;
  signal ARG_i_651_n_0 : STD_LOGIC;
  signal ARG_i_652_n_0 : STD_LOGIC;
  signal ARG_i_653_n_0 : STD_LOGIC;
  signal ARG_i_654_n_0 : STD_LOGIC;
  signal ARG_i_655_n_0 : STD_LOGIC;
  signal ARG_i_656_n_0 : STD_LOGIC;
  signal ARG_i_657_n_0 : STD_LOGIC;
  signal ARG_i_658_n_0 : STD_LOGIC;
  signal ARG_i_659_n_0 : STD_LOGIC;
  signal ARG_i_65_n_0 : STD_LOGIC;
  signal ARG_i_660_n_0 : STD_LOGIC;
  signal ARG_i_661_n_0 : STD_LOGIC;
  signal ARG_i_662_n_0 : STD_LOGIC;
  signal ARG_i_663_n_0 : STD_LOGIC;
  signal ARG_i_664_n_0 : STD_LOGIC;
  signal ARG_i_665_n_0 : STD_LOGIC;
  signal ARG_i_666_n_0 : STD_LOGIC;
  signal ARG_i_667_n_0 : STD_LOGIC;
  signal ARG_i_668_n_0 : STD_LOGIC;
  signal ARG_i_669_n_0 : STD_LOGIC;
  signal ARG_i_66_n_0 : STD_LOGIC;
  signal ARG_i_670_n_0 : STD_LOGIC;
  signal ARG_i_67_n_0 : STD_LOGIC;
  signal ARG_i_68_n_0 : STD_LOGIC;
  signal ARG_i_69_n_0 : STD_LOGIC;
  signal ARG_i_70_n_0 : STD_LOGIC;
  signal ARG_i_71_n_0 : STD_LOGIC;
  signal ARG_i_72_n_0 : STD_LOGIC;
  signal ARG_i_73_n_0 : STD_LOGIC;
  signal ARG_i_74_n_0 : STD_LOGIC;
  signal ARG_i_75_n_0 : STD_LOGIC;
  signal ARG_i_76_n_0 : STD_LOGIC;
  signal ARG_i_77_n_0 : STD_LOGIC;
  signal ARG_i_78_n_0 : STD_LOGIC;
  signal ARG_i_79_n_0 : STD_LOGIC;
  signal ARG_i_80_n_0 : STD_LOGIC;
  signal ARG_i_81_n_0 : STD_LOGIC;
  signal ARG_i_82_n_0 : STD_LOGIC;
  signal ARG_i_83_n_0 : STD_LOGIC;
  signal ARG_i_84_n_0 : STD_LOGIC;
  signal ARG_i_85_n_0 : STD_LOGIC;
  signal ARG_i_86_n_0 : STD_LOGIC;
  signal ARG_i_87_n_0 : STD_LOGIC;
  signal ARG_i_88_n_0 : STD_LOGIC;
  signal ARG_i_89_n_0 : STD_LOGIC;
  signal ARG_i_90_n_0 : STD_LOGIC;
  signal ARG_i_91_n_0 : STD_LOGIC;
  signal ARG_i_92_n_0 : STD_LOGIC;
  signal ARG_i_93_n_0 : STD_LOGIC;
  signal ARG_i_94_n_0 : STD_LOGIC;
  signal ARG_i_95_n_0 : STD_LOGIC;
  signal ARG_i_96_n_0 : STD_LOGIC;
  signal ARG_i_97_n_0 : STD_LOGIC;
  signal ARG_i_98_n_0 : STD_LOGIC;
  signal ARG_i_99_n_0 : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \__9\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \compare_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \compare_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \compare_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \compare_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal fsm_input_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \g0_b0__0_n_0\ : STD_LOGIC;
  signal \g0_b0__100_n_0\ : STD_LOGIC;
  signal \g0_b0__101_n_0\ : STD_LOGIC;
  signal \g0_b0__102_n_0\ : STD_LOGIC;
  signal \g0_b0__104_n_0\ : STD_LOGIC;
  signal \g0_b0__10_n_0\ : STD_LOGIC;
  signal \g0_b0__11_n_0\ : STD_LOGIC;
  signal \g0_b0__12_n_0\ : STD_LOGIC;
  signal \g0_b0__13_n_0\ : STD_LOGIC;
  signal \g0_b0__14_n_0\ : STD_LOGIC;
  signal \g0_b0__15_n_0\ : STD_LOGIC;
  signal \g0_b0__16_n_0\ : STD_LOGIC;
  signal \g0_b0__17_n_0\ : STD_LOGIC;
  signal \g0_b0__18_n_0\ : STD_LOGIC;
  signal \g0_b0__19_n_0\ : STD_LOGIC;
  signal \g0_b0__1_n_0\ : STD_LOGIC;
  signal \g0_b0__20_n_0\ : STD_LOGIC;
  signal \g0_b0__21_n_0\ : STD_LOGIC;
  signal \g0_b0__22_n_0\ : STD_LOGIC;
  signal \g0_b0__23_n_0\ : STD_LOGIC;
  signal \g0_b0__24_n_0\ : STD_LOGIC;
  signal \g0_b0__25_n_0\ : STD_LOGIC;
  signal \g0_b0__26_n_0\ : STD_LOGIC;
  signal \g0_b0__27_n_0\ : STD_LOGIC;
  signal \g0_b0__28_n_0\ : STD_LOGIC;
  signal \g0_b0__29_n_0\ : STD_LOGIC;
  signal \g0_b0__2_n_0\ : STD_LOGIC;
  signal \g0_b0__30_n_0\ : STD_LOGIC;
  signal \g0_b0__31_n_0\ : STD_LOGIC;
  signal \g0_b0__32_n_0\ : STD_LOGIC;
  signal \g0_b0__33_n_0\ : STD_LOGIC;
  signal \g0_b0__34_n_0\ : STD_LOGIC;
  signal \g0_b0__35_n_0\ : STD_LOGIC;
  signal \g0_b0__36_n_0\ : STD_LOGIC;
  signal \g0_b0__37_n_0\ : STD_LOGIC;
  signal \g0_b0__38_n_0\ : STD_LOGIC;
  signal \g0_b0__39_n_0\ : STD_LOGIC;
  signal \g0_b0__3_n_0\ : STD_LOGIC;
  signal \g0_b0__40_n_0\ : STD_LOGIC;
  signal \g0_b0__41_n_0\ : STD_LOGIC;
  signal \g0_b0__42_n_0\ : STD_LOGIC;
  signal \g0_b0__43_n_0\ : STD_LOGIC;
  signal \g0_b0__44_n_0\ : STD_LOGIC;
  signal \g0_b0__45_n_0\ : STD_LOGIC;
  signal \g0_b0__46_n_0\ : STD_LOGIC;
  signal \g0_b0__47_n_0\ : STD_LOGIC;
  signal \g0_b0__48_n_0\ : STD_LOGIC;
  signal \g0_b0__49_n_0\ : STD_LOGIC;
  signal \g0_b0__4_n_0\ : STD_LOGIC;
  signal \g0_b0__50_n_0\ : STD_LOGIC;
  signal \g0_b0__51_n_0\ : STD_LOGIC;
  signal \g0_b0__52_n_0\ : STD_LOGIC;
  signal \g0_b0__53_n_0\ : STD_LOGIC;
  signal \g0_b0__54_n_0\ : STD_LOGIC;
  signal \g0_b0__55_n_0\ : STD_LOGIC;
  signal \g0_b0__56_n_0\ : STD_LOGIC;
  signal \g0_b0__57_n_0\ : STD_LOGIC;
  signal \g0_b0__58_n_0\ : STD_LOGIC;
  signal \g0_b0__59_n_0\ : STD_LOGIC;
  signal \g0_b0__5_n_0\ : STD_LOGIC;
  signal \g0_b0__60_n_0\ : STD_LOGIC;
  signal \g0_b0__61_n_0\ : STD_LOGIC;
  signal \g0_b0__62_n_0\ : STD_LOGIC;
  signal \g0_b0__63_n_0\ : STD_LOGIC;
  signal \g0_b0__64_n_0\ : STD_LOGIC;
  signal \g0_b0__65_n_0\ : STD_LOGIC;
  signal \g0_b0__66_n_0\ : STD_LOGIC;
  signal \g0_b0__67_n_0\ : STD_LOGIC;
  signal \g0_b0__68_n_0\ : STD_LOGIC;
  signal \g0_b0__69_n_0\ : STD_LOGIC;
  signal \g0_b0__6_n_0\ : STD_LOGIC;
  signal \g0_b0__70_n_0\ : STD_LOGIC;
  signal \g0_b0__71_n_0\ : STD_LOGIC;
  signal \g0_b0__72_n_0\ : STD_LOGIC;
  signal \g0_b0__73_n_0\ : STD_LOGIC;
  signal \g0_b0__74_n_0\ : STD_LOGIC;
  signal \g0_b0__75_n_0\ : STD_LOGIC;
  signal \g0_b0__76_n_0\ : STD_LOGIC;
  signal \g0_b0__77_n_0\ : STD_LOGIC;
  signal \g0_b0__78_n_0\ : STD_LOGIC;
  signal \g0_b0__79_n_0\ : STD_LOGIC;
  signal \g0_b0__7_n_0\ : STD_LOGIC;
  signal \g0_b0__80_n_0\ : STD_LOGIC;
  signal \g0_b0__81_n_0\ : STD_LOGIC;
  signal \g0_b0__82_n_0\ : STD_LOGIC;
  signal \g0_b0__83_n_0\ : STD_LOGIC;
  signal \g0_b0__84_n_0\ : STD_LOGIC;
  signal \g0_b0__85_n_0\ : STD_LOGIC;
  signal \g0_b0__86_n_0\ : STD_LOGIC;
  signal \g0_b0__87_n_0\ : STD_LOGIC;
  signal \g0_b0__88_n_0\ : STD_LOGIC;
  signal \g0_b0__89_n_0\ : STD_LOGIC;
  signal \g0_b0__8_n_0\ : STD_LOGIC;
  signal \g0_b0__90_n_0\ : STD_LOGIC;
  signal \g0_b0__91_n_0\ : STD_LOGIC;
  signal \g0_b0__92_n_0\ : STD_LOGIC;
  signal \g0_b0__93_n_0\ : STD_LOGIC;
  signal \g0_b0__94_n_0\ : STD_LOGIC;
  signal \g0_b0__95_n_0\ : STD_LOGIC;
  signal \g0_b0__96_n_0\ : STD_LOGIC;
  signal \g0_b0__97_n_0\ : STD_LOGIC;
  signal \g0_b0__98_n_0\ : STD_LOGIC;
  signal \g0_b0__99_n_0\ : STD_LOGIC;
  signal \g0_b0__9_n_0\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal \g0_b1__0_n_0\ : STD_LOGIC;
  signal \g0_b1__100_n_0\ : STD_LOGIC;
  signal \g0_b1__101_n_0\ : STD_LOGIC;
  signal \g0_b1__102_n_0\ : STD_LOGIC;
  signal \g0_b1__104_n_0\ : STD_LOGIC;
  signal \g0_b1__10_n_0\ : STD_LOGIC;
  signal \g0_b1__11_n_0\ : STD_LOGIC;
  signal \g0_b1__12_n_0\ : STD_LOGIC;
  signal \g0_b1__13_n_0\ : STD_LOGIC;
  signal \g0_b1__14_n_0\ : STD_LOGIC;
  signal \g0_b1__15_n_0\ : STD_LOGIC;
  signal \g0_b1__16_n_0\ : STD_LOGIC;
  signal \g0_b1__17_n_0\ : STD_LOGIC;
  signal \g0_b1__18_n_0\ : STD_LOGIC;
  signal \g0_b1__19_n_0\ : STD_LOGIC;
  signal \g0_b1__1_n_0\ : STD_LOGIC;
  signal \g0_b1__20_n_0\ : STD_LOGIC;
  signal \g0_b1__21_n_0\ : STD_LOGIC;
  signal \g0_b1__22_n_0\ : STD_LOGIC;
  signal \g0_b1__23_n_0\ : STD_LOGIC;
  signal \g0_b1__24_n_0\ : STD_LOGIC;
  signal \g0_b1__25_n_0\ : STD_LOGIC;
  signal \g0_b1__26_n_0\ : STD_LOGIC;
  signal \g0_b1__27_n_0\ : STD_LOGIC;
  signal \g0_b1__28_n_0\ : STD_LOGIC;
  signal \g0_b1__29_n_0\ : STD_LOGIC;
  signal \g0_b1__2_n_0\ : STD_LOGIC;
  signal \g0_b1__30_n_0\ : STD_LOGIC;
  signal \g0_b1__31_n_0\ : STD_LOGIC;
  signal \g0_b1__32_n_0\ : STD_LOGIC;
  signal \g0_b1__33_n_0\ : STD_LOGIC;
  signal \g0_b1__34_n_0\ : STD_LOGIC;
  signal \g0_b1__35_n_0\ : STD_LOGIC;
  signal \g0_b1__36_n_0\ : STD_LOGIC;
  signal \g0_b1__37_n_0\ : STD_LOGIC;
  signal \g0_b1__38_n_0\ : STD_LOGIC;
  signal \g0_b1__39_n_0\ : STD_LOGIC;
  signal \g0_b1__3_n_0\ : STD_LOGIC;
  signal \g0_b1__40_n_0\ : STD_LOGIC;
  signal \g0_b1__41_n_0\ : STD_LOGIC;
  signal \g0_b1__42_n_0\ : STD_LOGIC;
  signal \g0_b1__43_n_0\ : STD_LOGIC;
  signal \g0_b1__44_n_0\ : STD_LOGIC;
  signal \g0_b1__45_n_0\ : STD_LOGIC;
  signal \g0_b1__46_n_0\ : STD_LOGIC;
  signal \g0_b1__47_n_0\ : STD_LOGIC;
  signal \g0_b1__48_n_0\ : STD_LOGIC;
  signal \g0_b1__49_n_0\ : STD_LOGIC;
  signal \g0_b1__4_n_0\ : STD_LOGIC;
  signal \g0_b1__50_n_0\ : STD_LOGIC;
  signal \g0_b1__51_n_0\ : STD_LOGIC;
  signal \g0_b1__52_n_0\ : STD_LOGIC;
  signal \g0_b1__53_n_0\ : STD_LOGIC;
  signal \g0_b1__54_n_0\ : STD_LOGIC;
  signal \g0_b1__55_n_0\ : STD_LOGIC;
  signal \g0_b1__56_n_0\ : STD_LOGIC;
  signal \g0_b1__57_n_0\ : STD_LOGIC;
  signal \g0_b1__58_n_0\ : STD_LOGIC;
  signal \g0_b1__59_n_0\ : STD_LOGIC;
  signal \g0_b1__5_n_0\ : STD_LOGIC;
  signal \g0_b1__60_n_0\ : STD_LOGIC;
  signal \g0_b1__61_n_0\ : STD_LOGIC;
  signal \g0_b1__62_n_0\ : STD_LOGIC;
  signal \g0_b1__63_n_0\ : STD_LOGIC;
  signal \g0_b1__64_n_0\ : STD_LOGIC;
  signal \g0_b1__65_n_0\ : STD_LOGIC;
  signal \g0_b1__66_n_0\ : STD_LOGIC;
  signal \g0_b1__67_n_0\ : STD_LOGIC;
  signal \g0_b1__68_n_0\ : STD_LOGIC;
  signal \g0_b1__69_n_0\ : STD_LOGIC;
  signal \g0_b1__6_n_0\ : STD_LOGIC;
  signal \g0_b1__70_n_0\ : STD_LOGIC;
  signal \g0_b1__71_n_0\ : STD_LOGIC;
  signal \g0_b1__72_n_0\ : STD_LOGIC;
  signal \g0_b1__73_n_0\ : STD_LOGIC;
  signal \g0_b1__74_n_0\ : STD_LOGIC;
  signal \g0_b1__75_n_0\ : STD_LOGIC;
  signal \g0_b1__76_n_0\ : STD_LOGIC;
  signal \g0_b1__77_n_0\ : STD_LOGIC;
  signal \g0_b1__78_n_0\ : STD_LOGIC;
  signal \g0_b1__79_n_0\ : STD_LOGIC;
  signal \g0_b1__7_n_0\ : STD_LOGIC;
  signal \g0_b1__80_n_0\ : STD_LOGIC;
  signal \g0_b1__81_n_0\ : STD_LOGIC;
  signal \g0_b1__82_n_0\ : STD_LOGIC;
  signal \g0_b1__83_n_0\ : STD_LOGIC;
  signal \g0_b1__84_n_0\ : STD_LOGIC;
  signal \g0_b1__85_n_0\ : STD_LOGIC;
  signal \g0_b1__86_n_0\ : STD_LOGIC;
  signal \g0_b1__87_n_0\ : STD_LOGIC;
  signal \g0_b1__88_n_0\ : STD_LOGIC;
  signal \g0_b1__89_n_0\ : STD_LOGIC;
  signal \g0_b1__8_n_0\ : STD_LOGIC;
  signal \g0_b1__90_n_0\ : STD_LOGIC;
  signal \g0_b1__91_n_0\ : STD_LOGIC;
  signal \g0_b1__92_n_0\ : STD_LOGIC;
  signal \g0_b1__93_n_0\ : STD_LOGIC;
  signal \g0_b1__94_n_0\ : STD_LOGIC;
  signal \g0_b1__95_n_0\ : STD_LOGIC;
  signal \g0_b1__96_n_0\ : STD_LOGIC;
  signal \g0_b1__97_n_0\ : STD_LOGIC;
  signal \g0_b1__98_n_0\ : STD_LOGIC;
  signal \g0_b1__99_n_0\ : STD_LOGIC;
  signal \g0_b1__9_n_0\ : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal \g0_b2__0_n_0\ : STD_LOGIC;
  signal \g0_b2__100_n_0\ : STD_LOGIC;
  signal \g0_b2__101_n_0\ : STD_LOGIC;
  signal \g0_b2__102_n_0\ : STD_LOGIC;
  signal \g0_b2__104_n_0\ : STD_LOGIC;
  signal \g0_b2__10_n_0\ : STD_LOGIC;
  signal \g0_b2__11_n_0\ : STD_LOGIC;
  signal \g0_b2__12_n_0\ : STD_LOGIC;
  signal \g0_b2__13_n_0\ : STD_LOGIC;
  signal \g0_b2__14_n_0\ : STD_LOGIC;
  signal \g0_b2__15_n_0\ : STD_LOGIC;
  signal \g0_b2__16_n_0\ : STD_LOGIC;
  signal \g0_b2__17_n_0\ : STD_LOGIC;
  signal \g0_b2__18_n_0\ : STD_LOGIC;
  signal \g0_b2__19_n_0\ : STD_LOGIC;
  signal \g0_b2__1_n_0\ : STD_LOGIC;
  signal \g0_b2__20_n_0\ : STD_LOGIC;
  signal \g0_b2__21_n_0\ : STD_LOGIC;
  signal \g0_b2__22_n_0\ : STD_LOGIC;
  signal \g0_b2__23_n_0\ : STD_LOGIC;
  signal \g0_b2__24_n_0\ : STD_LOGIC;
  signal \g0_b2__25_n_0\ : STD_LOGIC;
  signal \g0_b2__26_n_0\ : STD_LOGIC;
  signal \g0_b2__27_n_0\ : STD_LOGIC;
  signal \g0_b2__28_n_0\ : STD_LOGIC;
  signal \g0_b2__29_n_0\ : STD_LOGIC;
  signal \g0_b2__2_n_0\ : STD_LOGIC;
  signal \g0_b2__30_n_0\ : STD_LOGIC;
  signal \g0_b2__31_n_0\ : STD_LOGIC;
  signal \g0_b2__32_n_0\ : STD_LOGIC;
  signal \g0_b2__33_n_0\ : STD_LOGIC;
  signal \g0_b2__34_n_0\ : STD_LOGIC;
  signal \g0_b2__35_n_0\ : STD_LOGIC;
  signal \g0_b2__36_n_0\ : STD_LOGIC;
  signal \g0_b2__37_n_0\ : STD_LOGIC;
  signal \g0_b2__38_n_0\ : STD_LOGIC;
  signal \g0_b2__39_n_0\ : STD_LOGIC;
  signal \g0_b2__3_n_0\ : STD_LOGIC;
  signal \g0_b2__40_n_0\ : STD_LOGIC;
  signal \g0_b2__41_n_0\ : STD_LOGIC;
  signal \g0_b2__42_n_0\ : STD_LOGIC;
  signal \g0_b2__43_n_0\ : STD_LOGIC;
  signal \g0_b2__44_n_0\ : STD_LOGIC;
  signal \g0_b2__45_n_0\ : STD_LOGIC;
  signal \g0_b2__46_n_0\ : STD_LOGIC;
  signal \g0_b2__47_n_0\ : STD_LOGIC;
  signal \g0_b2__48_n_0\ : STD_LOGIC;
  signal \g0_b2__49_n_0\ : STD_LOGIC;
  signal \g0_b2__4_n_0\ : STD_LOGIC;
  signal \g0_b2__50_n_0\ : STD_LOGIC;
  signal \g0_b2__51_n_0\ : STD_LOGIC;
  signal \g0_b2__52_n_0\ : STD_LOGIC;
  signal \g0_b2__53_n_0\ : STD_LOGIC;
  signal \g0_b2__54_n_0\ : STD_LOGIC;
  signal \g0_b2__55_n_0\ : STD_LOGIC;
  signal \g0_b2__56_n_0\ : STD_LOGIC;
  signal \g0_b2__57_n_0\ : STD_LOGIC;
  signal \g0_b2__58_n_0\ : STD_LOGIC;
  signal \g0_b2__59_n_0\ : STD_LOGIC;
  signal \g0_b2__5_n_0\ : STD_LOGIC;
  signal \g0_b2__60_n_0\ : STD_LOGIC;
  signal \g0_b2__61_n_0\ : STD_LOGIC;
  signal \g0_b2__62_n_0\ : STD_LOGIC;
  signal \g0_b2__63_n_0\ : STD_LOGIC;
  signal \g0_b2__64_n_0\ : STD_LOGIC;
  signal \g0_b2__65_n_0\ : STD_LOGIC;
  signal \g0_b2__66_n_0\ : STD_LOGIC;
  signal \g0_b2__67_n_0\ : STD_LOGIC;
  signal \g0_b2__68_n_0\ : STD_LOGIC;
  signal \g0_b2__69_n_0\ : STD_LOGIC;
  signal \g0_b2__6_n_0\ : STD_LOGIC;
  signal \g0_b2__70_n_0\ : STD_LOGIC;
  signal \g0_b2__71_n_0\ : STD_LOGIC;
  signal \g0_b2__72_n_0\ : STD_LOGIC;
  signal \g0_b2__73_n_0\ : STD_LOGIC;
  signal \g0_b2__74_n_0\ : STD_LOGIC;
  signal \g0_b2__75_n_0\ : STD_LOGIC;
  signal \g0_b2__76_n_0\ : STD_LOGIC;
  signal \g0_b2__77_n_0\ : STD_LOGIC;
  signal \g0_b2__78_n_0\ : STD_LOGIC;
  signal \g0_b2__79_n_0\ : STD_LOGIC;
  signal \g0_b2__7_n_0\ : STD_LOGIC;
  signal \g0_b2__80_n_0\ : STD_LOGIC;
  signal \g0_b2__81_n_0\ : STD_LOGIC;
  signal \g0_b2__82_n_0\ : STD_LOGIC;
  signal \g0_b2__83_n_0\ : STD_LOGIC;
  signal \g0_b2__84_n_0\ : STD_LOGIC;
  signal \g0_b2__85_n_0\ : STD_LOGIC;
  signal \g0_b2__86_n_0\ : STD_LOGIC;
  signal \g0_b2__87_n_0\ : STD_LOGIC;
  signal \g0_b2__88_n_0\ : STD_LOGIC;
  signal \g0_b2__89_n_0\ : STD_LOGIC;
  signal \g0_b2__8_n_0\ : STD_LOGIC;
  signal \g0_b2__90_n_0\ : STD_LOGIC;
  signal \g0_b2__91_n_0\ : STD_LOGIC;
  signal \g0_b2__92_n_0\ : STD_LOGIC;
  signal \g0_b2__93_n_0\ : STD_LOGIC;
  signal \g0_b2__94_n_0\ : STD_LOGIC;
  signal \g0_b2__95_n_0\ : STD_LOGIC;
  signal \g0_b2__96_n_0\ : STD_LOGIC;
  signal \g0_b2__97_n_0\ : STD_LOGIC;
  signal \g0_b2__98_n_0\ : STD_LOGIC;
  signal \g0_b2__99_n_0\ : STD_LOGIC;
  signal \g0_b2__9_n_0\ : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal \g0_b3__0_n_0\ : STD_LOGIC;
  signal \g0_b3__100_n_0\ : STD_LOGIC;
  signal \g0_b3__101_n_0\ : STD_LOGIC;
  signal \g0_b3__102_n_0\ : STD_LOGIC;
  signal \g0_b3__104_n_0\ : STD_LOGIC;
  signal \g0_b3__10_n_0\ : STD_LOGIC;
  signal \g0_b3__11_n_0\ : STD_LOGIC;
  signal \g0_b3__12_n_0\ : STD_LOGIC;
  signal \g0_b3__13_n_0\ : STD_LOGIC;
  signal \g0_b3__14_n_0\ : STD_LOGIC;
  signal \g0_b3__15_n_0\ : STD_LOGIC;
  signal \g0_b3__16_n_0\ : STD_LOGIC;
  signal \g0_b3__17_n_0\ : STD_LOGIC;
  signal \g0_b3__18_n_0\ : STD_LOGIC;
  signal \g0_b3__19_n_0\ : STD_LOGIC;
  signal \g0_b3__1_n_0\ : STD_LOGIC;
  signal \g0_b3__20_n_0\ : STD_LOGIC;
  signal \g0_b3__21_n_0\ : STD_LOGIC;
  signal \g0_b3__22_n_0\ : STD_LOGIC;
  signal \g0_b3__23_n_0\ : STD_LOGIC;
  signal \g0_b3__24_n_0\ : STD_LOGIC;
  signal \g0_b3__25_n_0\ : STD_LOGIC;
  signal \g0_b3__26_n_0\ : STD_LOGIC;
  signal \g0_b3__27_n_0\ : STD_LOGIC;
  signal \g0_b3__28_n_0\ : STD_LOGIC;
  signal \g0_b3__29_n_0\ : STD_LOGIC;
  signal \g0_b3__2_n_0\ : STD_LOGIC;
  signal \g0_b3__30_n_0\ : STD_LOGIC;
  signal \g0_b3__31_n_0\ : STD_LOGIC;
  signal \g0_b3__32_n_0\ : STD_LOGIC;
  signal \g0_b3__33_n_0\ : STD_LOGIC;
  signal \g0_b3__34_n_0\ : STD_LOGIC;
  signal \g0_b3__35_n_0\ : STD_LOGIC;
  signal \g0_b3__36_n_0\ : STD_LOGIC;
  signal \g0_b3__37_n_0\ : STD_LOGIC;
  signal \g0_b3__38_n_0\ : STD_LOGIC;
  signal \g0_b3__39_n_0\ : STD_LOGIC;
  signal \g0_b3__3_n_0\ : STD_LOGIC;
  signal \g0_b3__40_n_0\ : STD_LOGIC;
  signal \g0_b3__41_n_0\ : STD_LOGIC;
  signal \g0_b3__42_n_0\ : STD_LOGIC;
  signal \g0_b3__43_n_0\ : STD_LOGIC;
  signal \g0_b3__44_n_0\ : STD_LOGIC;
  signal \g0_b3__45_n_0\ : STD_LOGIC;
  signal \g0_b3__46_n_0\ : STD_LOGIC;
  signal \g0_b3__47_n_0\ : STD_LOGIC;
  signal \g0_b3__48_n_0\ : STD_LOGIC;
  signal \g0_b3__49_n_0\ : STD_LOGIC;
  signal \g0_b3__4_n_0\ : STD_LOGIC;
  signal \g0_b3__50_n_0\ : STD_LOGIC;
  signal \g0_b3__51_n_0\ : STD_LOGIC;
  signal \g0_b3__52_n_0\ : STD_LOGIC;
  signal \g0_b3__53_n_0\ : STD_LOGIC;
  signal \g0_b3__54_n_0\ : STD_LOGIC;
  signal \g0_b3__55_n_0\ : STD_LOGIC;
  signal \g0_b3__56_n_0\ : STD_LOGIC;
  signal \g0_b3__57_n_0\ : STD_LOGIC;
  signal \g0_b3__58_n_0\ : STD_LOGIC;
  signal \g0_b3__59_n_0\ : STD_LOGIC;
  signal \g0_b3__5_n_0\ : STD_LOGIC;
  signal \g0_b3__60_n_0\ : STD_LOGIC;
  signal \g0_b3__61_n_0\ : STD_LOGIC;
  signal \g0_b3__62_n_0\ : STD_LOGIC;
  signal \g0_b3__63_n_0\ : STD_LOGIC;
  signal \g0_b3__64_n_0\ : STD_LOGIC;
  signal \g0_b3__65_n_0\ : STD_LOGIC;
  signal \g0_b3__66_n_0\ : STD_LOGIC;
  signal \g0_b3__67_n_0\ : STD_LOGIC;
  signal \g0_b3__68_n_0\ : STD_LOGIC;
  signal \g0_b3__69_n_0\ : STD_LOGIC;
  signal \g0_b3__6_n_0\ : STD_LOGIC;
  signal \g0_b3__70_n_0\ : STD_LOGIC;
  signal \g0_b3__71_n_0\ : STD_LOGIC;
  signal \g0_b3__72_n_0\ : STD_LOGIC;
  signal \g0_b3__73_n_0\ : STD_LOGIC;
  signal \g0_b3__74_n_0\ : STD_LOGIC;
  signal \g0_b3__75_n_0\ : STD_LOGIC;
  signal \g0_b3__76_n_0\ : STD_LOGIC;
  signal \g0_b3__77_n_0\ : STD_LOGIC;
  signal \g0_b3__78_n_0\ : STD_LOGIC;
  signal \g0_b3__79_n_0\ : STD_LOGIC;
  signal \g0_b3__7_n_0\ : STD_LOGIC;
  signal \g0_b3__80_n_0\ : STD_LOGIC;
  signal \g0_b3__81_n_0\ : STD_LOGIC;
  signal \g0_b3__82_n_0\ : STD_LOGIC;
  signal \g0_b3__83_n_0\ : STD_LOGIC;
  signal \g0_b3__84_n_0\ : STD_LOGIC;
  signal \g0_b3__85_n_0\ : STD_LOGIC;
  signal \g0_b3__86_n_0\ : STD_LOGIC;
  signal \g0_b3__87_n_0\ : STD_LOGIC;
  signal \g0_b3__88_n_0\ : STD_LOGIC;
  signal \g0_b3__89_n_0\ : STD_LOGIC;
  signal \g0_b3__8_n_0\ : STD_LOGIC;
  signal \g0_b3__90_n_0\ : STD_LOGIC;
  signal \g0_b3__91_n_0\ : STD_LOGIC;
  signal \g0_b3__92_n_0\ : STD_LOGIC;
  signal \g0_b3__93_n_0\ : STD_LOGIC;
  signal \g0_b3__94_n_0\ : STD_LOGIC;
  signal \g0_b3__95_n_0\ : STD_LOGIC;
  signal \g0_b3__96_n_0\ : STD_LOGIC;
  signal \g0_b3__97_n_0\ : STD_LOGIC;
  signal \g0_b3__98_n_0\ : STD_LOGIC;
  signal \g0_b3__99_n_0\ : STD_LOGIC;
  signal \g0_b3__9_n_0\ : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal \g0_b4__0_n_0\ : STD_LOGIC;
  signal \g0_b4__100_n_0\ : STD_LOGIC;
  signal \g0_b4__101_n_0\ : STD_LOGIC;
  signal \g0_b4__102_n_0\ : STD_LOGIC;
  signal \g0_b4__104_n_0\ : STD_LOGIC;
  signal \g0_b4__10_n_0\ : STD_LOGIC;
  signal \g0_b4__11_n_0\ : STD_LOGIC;
  signal \g0_b4__12_n_0\ : STD_LOGIC;
  signal \g0_b4__13_n_0\ : STD_LOGIC;
  signal \g0_b4__14_n_0\ : STD_LOGIC;
  signal \g0_b4__15_n_0\ : STD_LOGIC;
  signal \g0_b4__16_n_0\ : STD_LOGIC;
  signal \g0_b4__17_n_0\ : STD_LOGIC;
  signal \g0_b4__18_n_0\ : STD_LOGIC;
  signal \g0_b4__19_n_0\ : STD_LOGIC;
  signal \g0_b4__1_n_0\ : STD_LOGIC;
  signal \g0_b4__20_n_0\ : STD_LOGIC;
  signal \g0_b4__21_n_0\ : STD_LOGIC;
  signal \g0_b4__22_n_0\ : STD_LOGIC;
  signal \g0_b4__23_n_0\ : STD_LOGIC;
  signal \g0_b4__24_n_0\ : STD_LOGIC;
  signal \g0_b4__25_n_0\ : STD_LOGIC;
  signal \g0_b4__26_n_0\ : STD_LOGIC;
  signal \g0_b4__27_n_0\ : STD_LOGIC;
  signal \g0_b4__28_n_0\ : STD_LOGIC;
  signal \g0_b4__29_n_0\ : STD_LOGIC;
  signal \g0_b4__2_n_0\ : STD_LOGIC;
  signal \g0_b4__30_n_0\ : STD_LOGIC;
  signal \g0_b4__31_n_0\ : STD_LOGIC;
  signal \g0_b4__32_n_0\ : STD_LOGIC;
  signal \g0_b4__33_n_0\ : STD_LOGIC;
  signal \g0_b4__34_n_0\ : STD_LOGIC;
  signal \g0_b4__35_n_0\ : STD_LOGIC;
  signal \g0_b4__36_n_0\ : STD_LOGIC;
  signal \g0_b4__37_n_0\ : STD_LOGIC;
  signal \g0_b4__38_n_0\ : STD_LOGIC;
  signal \g0_b4__39_n_0\ : STD_LOGIC;
  signal \g0_b4__3_n_0\ : STD_LOGIC;
  signal \g0_b4__40_n_0\ : STD_LOGIC;
  signal \g0_b4__41_n_0\ : STD_LOGIC;
  signal \g0_b4__42_n_0\ : STD_LOGIC;
  signal \g0_b4__43_n_0\ : STD_LOGIC;
  signal \g0_b4__44_n_0\ : STD_LOGIC;
  signal \g0_b4__45_n_0\ : STD_LOGIC;
  signal \g0_b4__46_n_0\ : STD_LOGIC;
  signal \g0_b4__47_n_0\ : STD_LOGIC;
  signal \g0_b4__48_n_0\ : STD_LOGIC;
  signal \g0_b4__49_n_0\ : STD_LOGIC;
  signal \g0_b4__4_n_0\ : STD_LOGIC;
  signal \g0_b4__50_n_0\ : STD_LOGIC;
  signal \g0_b4__51_n_0\ : STD_LOGIC;
  signal \g0_b4__52_n_0\ : STD_LOGIC;
  signal \g0_b4__53_n_0\ : STD_LOGIC;
  signal \g0_b4__54_n_0\ : STD_LOGIC;
  signal \g0_b4__55_n_0\ : STD_LOGIC;
  signal \g0_b4__56_n_0\ : STD_LOGIC;
  signal \g0_b4__57_n_0\ : STD_LOGIC;
  signal \g0_b4__58_n_0\ : STD_LOGIC;
  signal \g0_b4__59_n_0\ : STD_LOGIC;
  signal \g0_b4__5_n_0\ : STD_LOGIC;
  signal \g0_b4__60_n_0\ : STD_LOGIC;
  signal \g0_b4__61_n_0\ : STD_LOGIC;
  signal \g0_b4__62_n_0\ : STD_LOGIC;
  signal \g0_b4__63_n_0\ : STD_LOGIC;
  signal \g0_b4__64_n_0\ : STD_LOGIC;
  signal \g0_b4__65_n_0\ : STD_LOGIC;
  signal \g0_b4__66_n_0\ : STD_LOGIC;
  signal \g0_b4__67_n_0\ : STD_LOGIC;
  signal \g0_b4__68_n_0\ : STD_LOGIC;
  signal \g0_b4__69_n_0\ : STD_LOGIC;
  signal \g0_b4__6_n_0\ : STD_LOGIC;
  signal \g0_b4__70_n_0\ : STD_LOGIC;
  signal \g0_b4__71_n_0\ : STD_LOGIC;
  signal \g0_b4__72_n_0\ : STD_LOGIC;
  signal \g0_b4__73_n_0\ : STD_LOGIC;
  signal \g0_b4__74_n_0\ : STD_LOGIC;
  signal \g0_b4__75_n_0\ : STD_LOGIC;
  signal \g0_b4__76_n_0\ : STD_LOGIC;
  signal \g0_b4__77_n_0\ : STD_LOGIC;
  signal \g0_b4__78_n_0\ : STD_LOGIC;
  signal \g0_b4__79_n_0\ : STD_LOGIC;
  signal \g0_b4__7_n_0\ : STD_LOGIC;
  signal \g0_b4__80_n_0\ : STD_LOGIC;
  signal \g0_b4__81_n_0\ : STD_LOGIC;
  signal \g0_b4__82_n_0\ : STD_LOGIC;
  signal \g0_b4__83_n_0\ : STD_LOGIC;
  signal \g0_b4__84_n_0\ : STD_LOGIC;
  signal \g0_b4__85_n_0\ : STD_LOGIC;
  signal \g0_b4__86_n_0\ : STD_LOGIC;
  signal \g0_b4__87_n_0\ : STD_LOGIC;
  signal \g0_b4__88_n_0\ : STD_LOGIC;
  signal \g0_b4__89_n_0\ : STD_LOGIC;
  signal \g0_b4__8_n_0\ : STD_LOGIC;
  signal \g0_b4__90_n_0\ : STD_LOGIC;
  signal \g0_b4__91_n_0\ : STD_LOGIC;
  signal \g0_b4__92_n_0\ : STD_LOGIC;
  signal \g0_b4__93_n_0\ : STD_LOGIC;
  signal \g0_b4__94_n_0\ : STD_LOGIC;
  signal \g0_b4__95_n_0\ : STD_LOGIC;
  signal \g0_b4__96_n_0\ : STD_LOGIC;
  signal \g0_b4__97_n_0\ : STD_LOGIC;
  signal \g0_b4__98_n_0\ : STD_LOGIC;
  signal \g0_b4__99_n_0\ : STD_LOGIC;
  signal \g0_b4__9_n_0\ : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal \g0_b5__0_n_0\ : STD_LOGIC;
  signal \g0_b5__100_n_0\ : STD_LOGIC;
  signal \g0_b5__101_n_0\ : STD_LOGIC;
  signal \g0_b5__102_n_0\ : STD_LOGIC;
  signal \g0_b5__104_n_0\ : STD_LOGIC;
  signal \g0_b5__10_n_0\ : STD_LOGIC;
  signal \g0_b5__11_n_0\ : STD_LOGIC;
  signal \g0_b5__12_n_0\ : STD_LOGIC;
  signal \g0_b5__13_n_0\ : STD_LOGIC;
  signal \g0_b5__14_n_0\ : STD_LOGIC;
  signal \g0_b5__15_n_0\ : STD_LOGIC;
  signal \g0_b5__16_n_0\ : STD_LOGIC;
  signal \g0_b5__17_n_0\ : STD_LOGIC;
  signal \g0_b5__18_n_0\ : STD_LOGIC;
  signal \g0_b5__19_n_0\ : STD_LOGIC;
  signal \g0_b5__1_n_0\ : STD_LOGIC;
  signal \g0_b5__20_n_0\ : STD_LOGIC;
  signal \g0_b5__21_n_0\ : STD_LOGIC;
  signal \g0_b5__22_n_0\ : STD_LOGIC;
  signal \g0_b5__23_n_0\ : STD_LOGIC;
  signal \g0_b5__24_n_0\ : STD_LOGIC;
  signal \g0_b5__25_n_0\ : STD_LOGIC;
  signal \g0_b5__26_n_0\ : STD_LOGIC;
  signal \g0_b5__27_n_0\ : STD_LOGIC;
  signal \g0_b5__28_n_0\ : STD_LOGIC;
  signal \g0_b5__29_n_0\ : STD_LOGIC;
  signal \g0_b5__2_n_0\ : STD_LOGIC;
  signal \g0_b5__30_n_0\ : STD_LOGIC;
  signal \g0_b5__31_n_0\ : STD_LOGIC;
  signal \g0_b5__32_n_0\ : STD_LOGIC;
  signal \g0_b5__33_n_0\ : STD_LOGIC;
  signal \g0_b5__34_n_0\ : STD_LOGIC;
  signal \g0_b5__35_n_0\ : STD_LOGIC;
  signal \g0_b5__36_n_0\ : STD_LOGIC;
  signal \g0_b5__37_n_0\ : STD_LOGIC;
  signal \g0_b5__38_n_0\ : STD_LOGIC;
  signal \g0_b5__39_n_0\ : STD_LOGIC;
  signal \g0_b5__3_n_0\ : STD_LOGIC;
  signal \g0_b5__40_n_0\ : STD_LOGIC;
  signal \g0_b5__41_n_0\ : STD_LOGIC;
  signal \g0_b5__42_n_0\ : STD_LOGIC;
  signal \g0_b5__43_n_0\ : STD_LOGIC;
  signal \g0_b5__44_n_0\ : STD_LOGIC;
  signal \g0_b5__45_n_0\ : STD_LOGIC;
  signal \g0_b5__46_n_0\ : STD_LOGIC;
  signal \g0_b5__47_n_0\ : STD_LOGIC;
  signal \g0_b5__48_n_0\ : STD_LOGIC;
  signal \g0_b5__49_n_0\ : STD_LOGIC;
  signal \g0_b5__4_n_0\ : STD_LOGIC;
  signal \g0_b5__50_n_0\ : STD_LOGIC;
  signal \g0_b5__51_n_0\ : STD_LOGIC;
  signal \g0_b5__52_n_0\ : STD_LOGIC;
  signal \g0_b5__53_n_0\ : STD_LOGIC;
  signal \g0_b5__54_n_0\ : STD_LOGIC;
  signal \g0_b5__55_n_0\ : STD_LOGIC;
  signal \g0_b5__56_n_0\ : STD_LOGIC;
  signal \g0_b5__57_n_0\ : STD_LOGIC;
  signal \g0_b5__58_n_0\ : STD_LOGIC;
  signal \g0_b5__59_n_0\ : STD_LOGIC;
  signal \g0_b5__5_n_0\ : STD_LOGIC;
  signal \g0_b5__60_n_0\ : STD_LOGIC;
  signal \g0_b5__61_n_0\ : STD_LOGIC;
  signal \g0_b5__62_n_0\ : STD_LOGIC;
  signal \g0_b5__63_n_0\ : STD_LOGIC;
  signal \g0_b5__64_n_0\ : STD_LOGIC;
  signal \g0_b5__65_n_0\ : STD_LOGIC;
  signal \g0_b5__66_n_0\ : STD_LOGIC;
  signal \g0_b5__67_n_0\ : STD_LOGIC;
  signal \g0_b5__68_n_0\ : STD_LOGIC;
  signal \g0_b5__69_n_0\ : STD_LOGIC;
  signal \g0_b5__6_n_0\ : STD_LOGIC;
  signal \g0_b5__70_n_0\ : STD_LOGIC;
  signal \g0_b5__71_n_0\ : STD_LOGIC;
  signal \g0_b5__72_n_0\ : STD_LOGIC;
  signal \g0_b5__73_n_0\ : STD_LOGIC;
  signal \g0_b5__74_n_0\ : STD_LOGIC;
  signal \g0_b5__75_n_0\ : STD_LOGIC;
  signal \g0_b5__76_n_0\ : STD_LOGIC;
  signal \g0_b5__77_n_0\ : STD_LOGIC;
  signal \g0_b5__78_n_0\ : STD_LOGIC;
  signal \g0_b5__79_n_0\ : STD_LOGIC;
  signal \g0_b5__7_n_0\ : STD_LOGIC;
  signal \g0_b5__80_n_0\ : STD_LOGIC;
  signal \g0_b5__81_n_0\ : STD_LOGIC;
  signal \g0_b5__82_n_0\ : STD_LOGIC;
  signal \g0_b5__83_n_0\ : STD_LOGIC;
  signal \g0_b5__84_n_0\ : STD_LOGIC;
  signal \g0_b5__85_n_0\ : STD_LOGIC;
  signal \g0_b5__86_n_0\ : STD_LOGIC;
  signal \g0_b5__87_n_0\ : STD_LOGIC;
  signal \g0_b5__88_n_0\ : STD_LOGIC;
  signal \g0_b5__89_n_0\ : STD_LOGIC;
  signal \g0_b5__8_n_0\ : STD_LOGIC;
  signal \g0_b5__90_n_0\ : STD_LOGIC;
  signal \g0_b5__91_n_0\ : STD_LOGIC;
  signal \g0_b5__92_n_0\ : STD_LOGIC;
  signal \g0_b5__93_n_0\ : STD_LOGIC;
  signal \g0_b5__94_n_0\ : STD_LOGIC;
  signal \g0_b5__95_n_0\ : STD_LOGIC;
  signal \g0_b5__96_n_0\ : STD_LOGIC;
  signal \g0_b5__97_n_0\ : STD_LOGIC;
  signal \g0_b5__98_n_0\ : STD_LOGIC;
  signal \g0_b5__99_n_0\ : STD_LOGIC;
  signal \g0_b5__9_n_0\ : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal \g0_b6__0_n_0\ : STD_LOGIC;
  signal \g0_b6__10_n_0\ : STD_LOGIC;
  signal \g0_b6__11_n_0\ : STD_LOGIC;
  signal \g0_b6__12_n_0\ : STD_LOGIC;
  signal \g0_b6__13_n_0\ : STD_LOGIC;
  signal \g0_b6__14_n_0\ : STD_LOGIC;
  signal \g0_b6__15_n_0\ : STD_LOGIC;
  signal \g0_b6__16_n_0\ : STD_LOGIC;
  signal \g0_b6__17_n_0\ : STD_LOGIC;
  signal \g0_b6__18_n_0\ : STD_LOGIC;
  signal \g0_b6__19_n_0\ : STD_LOGIC;
  signal \g0_b6__1_n_0\ : STD_LOGIC;
  signal \g0_b6__20_n_0\ : STD_LOGIC;
  signal \g0_b6__21_n_0\ : STD_LOGIC;
  signal \g0_b6__22_n_0\ : STD_LOGIC;
  signal \g0_b6__23_n_0\ : STD_LOGIC;
  signal \g0_b6__24_n_0\ : STD_LOGIC;
  signal \g0_b6__25_n_0\ : STD_LOGIC;
  signal \g0_b6__26_n_0\ : STD_LOGIC;
  signal \g0_b6__27_n_0\ : STD_LOGIC;
  signal \g0_b6__28_n_0\ : STD_LOGIC;
  signal \g0_b6__29_n_0\ : STD_LOGIC;
  signal \g0_b6__2_n_0\ : STD_LOGIC;
  signal \g0_b6__30_n_0\ : STD_LOGIC;
  signal \g0_b6__31_n_0\ : STD_LOGIC;
  signal \g0_b6__32_n_0\ : STD_LOGIC;
  signal \g0_b6__33_n_0\ : STD_LOGIC;
  signal \g0_b6__34_n_0\ : STD_LOGIC;
  signal \g0_b6__35_n_0\ : STD_LOGIC;
  signal \g0_b6__36_n_0\ : STD_LOGIC;
  signal \g0_b6__37_n_0\ : STD_LOGIC;
  signal \g0_b6__38_n_0\ : STD_LOGIC;
  signal \g0_b6__39_n_0\ : STD_LOGIC;
  signal \g0_b6__3_n_0\ : STD_LOGIC;
  signal \g0_b6__40_n_0\ : STD_LOGIC;
  signal \g0_b6__41_n_0\ : STD_LOGIC;
  signal \g0_b6__42_n_0\ : STD_LOGIC;
  signal \g0_b6__43_n_0\ : STD_LOGIC;
  signal \g0_b6__44_n_0\ : STD_LOGIC;
  signal \g0_b6__45_n_0\ : STD_LOGIC;
  signal \g0_b6__46_n_0\ : STD_LOGIC;
  signal \g0_b6__47_n_0\ : STD_LOGIC;
  signal \g0_b6__48_n_0\ : STD_LOGIC;
  signal \g0_b6__49_n_0\ : STD_LOGIC;
  signal \g0_b6__4_n_0\ : STD_LOGIC;
  signal \g0_b6__50_n_0\ : STD_LOGIC;
  signal \g0_b6__51_n_0\ : STD_LOGIC;
  signal \g0_b6__52_n_0\ : STD_LOGIC;
  signal \g0_b6__53_n_0\ : STD_LOGIC;
  signal \g0_b6__54_n_0\ : STD_LOGIC;
  signal \g0_b6__55_n_0\ : STD_LOGIC;
  signal \g0_b6__56_n_0\ : STD_LOGIC;
  signal \g0_b6__57_n_0\ : STD_LOGIC;
  signal \g0_b6__58_n_0\ : STD_LOGIC;
  signal \g0_b6__59_n_0\ : STD_LOGIC;
  signal \g0_b6__5_n_0\ : STD_LOGIC;
  signal \g0_b6__60_n_0\ : STD_LOGIC;
  signal \g0_b6__61_n_0\ : STD_LOGIC;
  signal \g0_b6__62_n_0\ : STD_LOGIC;
  signal \g0_b6__63_n_0\ : STD_LOGIC;
  signal \g0_b6__6_n_0\ : STD_LOGIC;
  signal \g0_b6__7_n_0\ : STD_LOGIC;
  signal \g0_b6__8_n_0\ : STD_LOGIC;
  signal \g0_b6__9_n_0\ : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal \^i_rd_addr\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^i_wr_addr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \input_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \input_counter[0]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \input_counter[0]_rep_i_1__1_n_0\ : STD_LOGIC;
  signal \input_counter[0]_rep_i_1__2_n_0\ : STD_LOGIC;
  signal \input_counter[0]_rep_i_1_n_0\ : STD_LOGIC;
  signal \input_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \input_counter[1]_rep_i_1_n_0\ : STD_LOGIC;
  signal \input_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \input_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \input_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \input_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \input_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \input_counter[5]_i_3_n_0\ : STD_LOGIC;
  signal \input_counter[5]_i_4_n_0\ : STD_LOGIC;
  signal \input_counter_reg[0]_rep__1_n_0\ : STD_LOGIC;
  signal \input_counter_reg[0]_rep__2_n_0\ : STD_LOGIC;
  signal \input_counter_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \^input_counter_reg[5]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \layer_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \layer_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \layer_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \^layer_counter_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal layer_idx : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mac_clear : STD_LOGIC;
  signal mac_enable : STD_LOGIC;
  signal \max_index0_carry__0_n_0\ : STD_LOGIC;
  signal \max_index0_carry__0_n_1\ : STD_LOGIC;
  signal \max_index0_carry__0_n_2\ : STD_LOGIC;
  signal \max_index0_carry__0_n_3\ : STD_LOGIC;
  signal max_index0_carry_n_0 : STD_LOGIC;
  signal max_index0_carry_n_1 : STD_LOGIC;
  signal max_index0_carry_n_2 : STD_LOGIC;
  signal max_index0_carry_n_3 : STD_LOGIC;
  signal \max_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \max_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \max_value[15]_i_1_n_0\ : STD_LOGIC;
  signal \max_value[15]_i_2_n_0\ : STD_LOGIC;
  signal \max_value[15]_i_4_n_0\ : STD_LOGIC;
  signal \neuron_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \neuron_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \neuron_counter[1]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \neuron_counter[1]_rep_i_1__1_n_0\ : STD_LOGIC;
  signal \neuron_counter[1]_rep_i_1__2_n_0\ : STD_LOGIC;
  signal \neuron_counter[1]_rep_i_1__3_n_0\ : STD_LOGIC;
  signal \neuron_counter[1]_rep_i_1__4_n_0\ : STD_LOGIC;
  signal \neuron_counter[1]_rep_i_1_n_0\ : STD_LOGIC;
  signal \neuron_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \neuron_counter[2]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \neuron_counter[2]_rep_i_1__1_n_0\ : STD_LOGIC;
  signal \neuron_counter[2]_rep_i_1__2_n_0\ : STD_LOGIC;
  signal \neuron_counter[2]_rep_i_1__3_n_0\ : STD_LOGIC;
  signal \neuron_counter[2]_rep_i_1__4_n_0\ : STD_LOGIC;
  signal \neuron_counter[2]_rep_i_1_n_0\ : STD_LOGIC;
  signal \neuron_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \neuron_counter[3]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \neuron_counter[3]_rep_i_1__1_n_0\ : STD_LOGIC;
  signal \neuron_counter[3]_rep_i_1__2_n_0\ : STD_LOGIC;
  signal \neuron_counter[3]_rep_i_1__3_n_0\ : STD_LOGIC;
  signal \neuron_counter[3]_rep_i_1__4_n_0\ : STD_LOGIC;
  signal \neuron_counter[3]_rep_i_1__5_n_0\ : STD_LOGIC;
  signal \neuron_counter[3]_rep_i_1_n_0\ : STD_LOGIC;
  signal \neuron_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \neuron_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \neuron_counter[5]_i_3_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[1]_rep__0_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[1]_rep__1_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[1]_rep__2_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[1]_rep__3_n_0\ : STD_LOGIC;
  signal \^neuron_counter_reg[1]_rep__4_0\ : STD_LOGIC;
  signal \neuron_counter_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \^neuron_counter_reg[2]_rep__0_0\ : STD_LOGIC;
  signal \neuron_counter_reg[2]_rep__1_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[2]_rep__2_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[2]_rep__3_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[2]_rep__4_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[2]_rep_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[3]_rep__0_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[3]_rep__1_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[3]_rep__2_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[3]_rep__3_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[3]_rep__5_n_0\ : STD_LOGIC;
  signal \neuron_counter_reg[3]_rep_n_0\ : STD_LOGIC;
  signal \^neuron_counter_reg[5]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^o_class_result\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal output_addr : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal ram_swap : STD_LOGIC;
  signal \weight_rom_inst/p_0_out\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \weight_rom_inst/weights_l1[0,0]\ : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal \weight_rom_inst/weights_l2[0,0]\ : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal \weight_rom_inst/weights_l4[0,0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_max_index0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_max_index0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ARG_i_101 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of ARG_i_36 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of ARG_i_63 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ARG_i_78 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \FSM_onehot_state[10]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[10]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[8]_i_1\ : label is "soft_lutpair53";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[10]\ : label is "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100";
  attribute SOFT_HLUTNM of \compare_counter[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \compare_counter[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \g0_b0__103\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \g0_b1__103\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \g0_b2__103\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \g0_b3__103\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \g0_b4__103\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of g0_b5 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \g0_b5__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \g0_b5__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \g0_b5__10\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \g0_b5__103\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \g0_b5__11\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \g0_b5__12\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \g0_b5__13\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \g0_b5__14\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \g0_b5__15\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \g0_b5__16\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \g0_b5__17\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \g0_b5__18\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \g0_b5__19\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \g0_b5__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \g0_b5__20\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \g0_b5__21\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \g0_b5__22\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \g0_b5__23\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \g0_b5__24\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \g0_b5__25\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \g0_b5__26\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \g0_b5__27\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \g0_b5__28\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \g0_b5__29\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \g0_b5__3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \g0_b5__30\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \g0_b5__31\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \g0_b5__32\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \g0_b5__33\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \g0_b5__34\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \g0_b5__35\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \g0_b5__36\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \g0_b5__37\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \g0_b5__38\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \g0_b5__39\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \g0_b5__4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \g0_b5__40\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \g0_b5__41\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \g0_b5__42\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \g0_b5__43\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \g0_b5__44\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \g0_b5__45\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \g0_b5__46\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \g0_b5__47\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \g0_b5__48\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \g0_b5__49\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \g0_b5__5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \g0_b5__50\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \g0_b5__51\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \g0_b5__52\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \g0_b5__53\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \g0_b5__54\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \g0_b5__55\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \g0_b5__56\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \g0_b5__57\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \g0_b5__58\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \g0_b5__59\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \g0_b5__6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \g0_b5__60\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \g0_b5__61\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \g0_b5__62\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \g0_b5__7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \g0_b5__8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \g0_b5__9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of g0_b6 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \g0_b6__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \g0_b6__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \g0_b6__10\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \g0_b6__11\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \g0_b6__12\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \g0_b6__13\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \g0_b6__14\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \g0_b6__15\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \g0_b6__16\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \g0_b6__17\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \g0_b6__18\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \g0_b6__19\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \g0_b6__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \g0_b6__20\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \g0_b6__21\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \g0_b6__22\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \g0_b6__3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \g0_b6__4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \g0_b6__5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \g0_b6__6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \g0_b6__7\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \g0_b6__8\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \g0_b6__9\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \input_counter[5]_i_4\ : label is "soft_lutpair55";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \input_counter_reg[0]\ : label is "input_counter_reg[0]";
  attribute ORIG_CELL_NAME of \input_counter_reg[0]_rep\ : label is "input_counter_reg[0]";
  attribute ORIG_CELL_NAME of \input_counter_reg[0]_rep__0\ : label is "input_counter_reg[0]";
  attribute ORIG_CELL_NAME of \input_counter_reg[0]_rep__1\ : label is "input_counter_reg[0]";
  attribute ORIG_CELL_NAME of \input_counter_reg[0]_rep__2\ : label is "input_counter_reg[0]";
  attribute ORIG_CELL_NAME of \input_counter_reg[1]\ : label is "input_counter_reg[1]";
  attribute ORIG_CELL_NAME of \input_counter_reg[1]_rep\ : label is "input_counter_reg[1]";
  attribute SOFT_HLUTNM of \layer_counter[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \layer_counter[2]_i_1\ : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of max_index0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \max_index0_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of \neuron_counter[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \neuron_counter[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \neuron_counter[2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \neuron_counter[3]_i_1\ : label is "soft_lutpair1";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[1]\ : label is "neuron_counter_reg[1]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[1]_rep\ : label is "neuron_counter_reg[1]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[1]_rep__0\ : label is "neuron_counter_reg[1]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[1]_rep__1\ : label is "neuron_counter_reg[1]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[1]_rep__2\ : label is "neuron_counter_reg[1]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[1]_rep__3\ : label is "neuron_counter_reg[1]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[1]_rep__4\ : label is "neuron_counter_reg[1]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[2]\ : label is "neuron_counter_reg[2]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[2]_rep\ : label is "neuron_counter_reg[2]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[2]_rep__0\ : label is "neuron_counter_reg[2]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[2]_rep__1\ : label is "neuron_counter_reg[2]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[2]_rep__2\ : label is "neuron_counter_reg[2]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[2]_rep__3\ : label is "neuron_counter_reg[2]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[2]_rep__4\ : label is "neuron_counter_reg[2]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[3]\ : label is "neuron_counter_reg[3]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[3]_rep\ : label is "neuron_counter_reg[3]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[3]_rep__0\ : label is "neuron_counter_reg[3]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[3]_rep__1\ : label is "neuron_counter_reg[3]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[3]_rep__2\ : label is "neuron_counter_reg[3]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[3]_rep__3\ : label is "neuron_counter_reg[3]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[3]_rep__4\ : label is "neuron_counter_reg[3]";
  attribute ORIG_CELL_NAME of \neuron_counter_reg[3]_rep__5\ : label is "neuron_counter_reg[3]";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  SR(0) <= \^sr\(0);
  i_rd_addr(1 downto 0) <= \^i_rd_addr\(1 downto 0);
  i_wr_addr(0) <= \^i_wr_addr\(0);
  \input_counter_reg[5]_0\(3 downto 0) <= \^input_counter_reg[5]_0\(3 downto 0);
  \layer_counter_reg[2]_0\(0) <= \^layer_counter_reg[2]_0\(0);
  \neuron_counter_reg[1]_rep__4_0\ <= \^neuron_counter_reg[1]_rep__4_0\;
  \neuron_counter_reg[2]_rep__0_0\ <= \^neuron_counter_reg[2]_rep__0_0\;
  \neuron_counter_reg[5]_0\(2 downto 0) <= \^neuron_counter_reg[5]_0\(2 downto 0);
  o_class_result(1 downto 0) <= \^o_class_result\(1 downto 0);
ARG_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF000AACC"
    )
        port map (
      I0 => \weight_rom_inst/weights_l2[0,0]\(15),
      I1 => \weight_rom_inst/weights_l1[0,0]\(15),
      I2 => \weight_rom_inst/weights_l4[0,0]\(15),
      I3 => layer_idx(0),
      I4 => layer_idx(1),
      I5 => ARG_i_36_n_0,
      O => B(7)
    );
ARG_i_100: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_215_n_0,
      I1 => ARG_i_216_n_0,
      I2 => ARG_i_78_n_0,
      I3 => ARG_i_217_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_218_n_0,
      O => ARG_i_100_n_0
    );
ARG_i_101: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => layer_idx(0),
      I1 => layer_idx(1),
      O => ARG_i_101_n_0
    );
ARG_i_102: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_219_n_0,
      I1 => ARG_i_220_n_0,
      O => ARG_i_102_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_103: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_221_n_0,
      I1 => ARG_i_222_n_0,
      O => ARG_i_103_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_104: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007B33A35729BF"
    )
        port map (
      I0 => \^input_counter_reg[5]_0\(1),
      I1 => \^input_counter_reg[5]_0\(0),
      I2 => \^i_rd_addr\(0),
      I3 => \^i_rd_addr\(1),
      I4 => \neuron_counter_reg[1]_rep_n_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => \weight_rom_inst/weights_l4[0,0]\(4)
    );
ARG_i_105: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_223_n_0,
      I1 => ARG_i_224_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_225_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_226_n_0,
      O => ARG_i_105_n_0
    );
ARG_i_106: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_227_n_0,
      I1 => ARG_i_228_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_229_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_230_n_0,
      O => ARG_i_106_n_0
    );
ARG_i_107: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_231_n_0,
      I1 => ARG_i_232_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_233_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_234_n_0,
      O => ARG_i_107_n_0
    );
ARG_i_108: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_235_n_0,
      I1 => ARG_i_236_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_237_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_238_n_0,
      O => ARG_i_108_n_0
    );
ARG_i_109: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_239_n_0,
      I1 => ARG_i_240_n_0,
      O => ARG_i_109_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_110: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_241_n_0,
      I1 => ARG_i_242_n_0,
      O => ARG_i_110_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_111: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_243_n_0,
      I1 => ARG_i_244_n_0,
      I2 => ARG_i_78_n_0,
      I3 => ARG_i_245_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_246_n_0,
      O => ARG_i_111_n_0
    );
ARG_i_112: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_247_n_0,
      I1 => ARG_i_248_n_0,
      O => ARG_i_112_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_113: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_249_n_0,
      I1 => ARG_i_250_n_0,
      O => ARG_i_113_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_114: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0077002E296351D7"
    )
        port map (
      I0 => \^input_counter_reg[5]_0\(1),
      I1 => \^input_counter_reg[5]_0\(0),
      I2 => \^i_rd_addr\(1),
      I3 => \neuron_counter_reg[1]_rep_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => \weight_rom_inst/weights_l4[0,0]\(3)
    );
ARG_i_115: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_251_n_0,
      I1 => ARG_i_252_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_253_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_254_n_0,
      O => ARG_i_115_n_0
    );
ARG_i_116: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_255_n_0,
      I1 => ARG_i_256_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_257_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_258_n_0,
      O => ARG_i_116_n_0
    );
ARG_i_117: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_259_n_0,
      I1 => ARG_i_260_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_261_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_262_n_0,
      O => ARG_i_117_n_0
    );
ARG_i_118: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_263_n_0,
      I1 => ARG_i_264_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_265_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_266_n_0,
      O => ARG_i_118_n_0
    );
ARG_i_119: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_267_n_0,
      I1 => ARG_i_268_n_0,
      O => ARG_i_119_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_120: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_269_n_0,
      I1 => ARG_i_270_n_0,
      O => ARG_i_120_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_121: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_271_n_0,
      I1 => ARG_i_272_n_0,
      I2 => ARG_i_78_n_0,
      I3 => ARG_i_273_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_274_n_0,
      O => ARG_i_121_n_0
    );
ARG_i_122: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_275_n_0,
      I1 => ARG_i_276_n_0,
      O => ARG_i_122_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_123: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_277_n_0,
      I1 => ARG_i_278_n_0,
      O => ARG_i_123_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_124: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006E6723EBB778"
    )
        port map (
      I0 => \^input_counter_reg[5]_0\(1),
      I1 => \^input_counter_reg[5]_0\(0),
      I2 => \^i_rd_addr\(1),
      I3 => \^i_rd_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \neuron_counter_reg[1]_rep_n_0\,
      O => \weight_rom_inst/weights_l4[0,0]\(2)
    );
ARG_i_125: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_279_n_0,
      I1 => ARG_i_280_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_281_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_282_n_0,
      O => ARG_i_125_n_0
    );
ARG_i_126: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_283_n_0,
      I1 => ARG_i_284_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_285_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_286_n_0,
      O => ARG_i_126_n_0
    );
ARG_i_127: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_287_n_0,
      I1 => ARG_i_288_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_289_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_290_n_0,
      O => ARG_i_127_n_0
    );
ARG_i_128: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_291_n_0,
      I1 => ARG_i_292_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_293_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_294_n_0,
      O => ARG_i_128_n_0
    );
ARG_i_129: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_295_n_0,
      I1 => ARG_i_296_n_0,
      O => ARG_i_129_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_130: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_297_n_0,
      I1 => ARG_i_298_n_0,
      O => ARG_i_130_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_131: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_299_n_0,
      I1 => ARG_i_300_n_0,
      I2 => ARG_i_78_n_0,
      I3 => ARG_i_301_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_302_n_0,
      O => ARG_i_131_n_0
    );
ARG_i_132: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_303_n_0,
      I1 => ARG_i_304_n_0,
      O => ARG_i_132_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_133: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_305_n_0,
      I1 => ARG_i_306_n_0,
      O => ARG_i_133_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_134: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000040ECE0191770"
    )
        port map (
      I0 => \^input_counter_reg[5]_0\(1),
      I1 => \^input_counter_reg[5]_0\(0),
      I2 => \^i_rd_addr\(1),
      I3 => \^i_rd_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \neuron_counter_reg[1]_rep_n_0\,
      O => \weight_rom_inst/weights_l4[0,0]\(1)
    );
ARG_i_135: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_307_n_0,
      I1 => ARG_i_308_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_309_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_310_n_0,
      O => ARG_i_135_n_0
    );
ARG_i_136: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_311_n_0,
      I1 => ARG_i_312_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_313_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_314_n_0,
      O => ARG_i_136_n_0
    );
ARG_i_137: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_315_n_0,
      I1 => ARG_i_316_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_317_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_318_n_0,
      O => ARG_i_137_n_0
    );
ARG_i_138: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_319_n_0,
      I1 => ARG_i_320_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_321_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_322_n_0,
      O => ARG_i_138_n_0
    );
ARG_i_139: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_323_n_0,
      I1 => ARG_i_324_n_0,
      O => ARG_i_139_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_140: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_325_n_0,
      I1 => ARG_i_326_n_0,
      O => ARG_i_140_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_141: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_327_n_0,
      I1 => ARG_i_328_n_0,
      I2 => ARG_i_78_n_0,
      I3 => ARG_i_329_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_330_n_0,
      O => ARG_i_141_n_0
    );
ARG_i_142: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_331_n_0,
      I1 => ARG_i_332_n_0,
      O => ARG_i_142_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_143: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_333_n_0,
      I1 => ARG_i_334_n_0,
      O => ARG_i_143_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_144: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007D1417E9A7D4"
    )
        port map (
      I0 => \^input_counter_reg[5]_0\(1),
      I1 => \^input_counter_reg[5]_0\(0),
      I2 => \^i_rd_addr\(1),
      I3 => \^i_rd_addr\(0),
      I4 => \neuron_counter_reg[1]_rep_n_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => \weight_rom_inst/weights_l4[0,0]\(0)
    );
ARG_i_145: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_335_n_0,
      I1 => ARG_i_336_n_0,
      O => ARG_i_145_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_146: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_337_n_0,
      I1 => ARG_i_338_n_0,
      O => ARG_i_146_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_147: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__46_n_0\,
      I1 => \g0_b5__45_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__44_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__43_n_0\,
      O => ARG_i_147_n_0
    );
ARG_i_148: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__16_n_0\,
      I1 => \g0_b5__41_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b6__15_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__39_n_0\,
      O => ARG_i_148_n_0
    );
ARG_i_149: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__38_n_0\,
      I1 => \g0_b6__14_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__36_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b6__13_n_0\,
      O => ARG_i_149_n_0
    );
ARG_i_150: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__12_n_0\,
      I1 => \g0_b6__11_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__32_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b6__10_n_0\,
      O => ARG_i_150_n_0
    );
ARG_i_151: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__30_n_0\,
      I1 => \g0_b5__29_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b6__9_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__27_n_0\,
      O => ARG_i_151_n_0
    );
ARG_i_152: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__26_n_0\,
      I1 => \g0_b5__25_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__24_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__23_n_0\,
      O => ARG_i_152_n_0
    );
ARG_i_153: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__8_n_0\,
      I1 => \g0_b5__21_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b6__7_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__19_n_0\,
      O => ARG_i_153_n_0
    );
ARG_i_154: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__6_n_0\,
      I1 => \g0_b6__5_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__16_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__15_n_0\,
      O => ARG_i_154_n_0
    );
ARG_i_155: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_339_n_0,
      I1 => ARG_i_340_n_0,
      O => ARG_i_155_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_156: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_341_n_0,
      I1 => ARG_i_342_n_0,
      O => ARG_i_156_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_157: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__59_n_0\,
      I1 => \g0_b6__60_n_0\,
      O => ARG_i_157_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_158: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__61_n_0\,
      I1 => \g0_b6__62_n_0\,
      O => ARG_i_158_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_159: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__55_n_0\,
      I1 => \g0_b6__56_n_0\,
      O => ARG_i_159_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_160: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__57_n_0\,
      I1 => \g0_b6__58_n_0\,
      O => ARG_i_160_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_161: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_343_n_0,
      I1 => ARG_i_344_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_345_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_346_n_0,
      O => ARG_i_161_n_0
    );
ARG_i_162: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_347_n_0,
      I1 => ARG_i_348_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_349_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_350_n_0,
      O => ARG_i_162_n_0
    );
ARG_i_163: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_351_n_0,
      I1 => ARG_i_352_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_353_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_354_n_0,
      O => ARG_i_163_n_0
    );
ARG_i_164: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_355_n_0,
      I1 => ARG_i_356_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_357_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_358_n_0,
      O => ARG_i_164_n_0
    );
ARG_i_165: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_359_n_0,
      I1 => ARG_i_360_n_0,
      O => ARG_i_165_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_166: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_361_n_0,
      I1 => ARG_i_362_n_0,
      O => ARG_i_166_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_167: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_363_n_0,
      I1 => ARG_i_364_n_0,
      O => ARG_i_167_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_168: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_365_n_0,
      I1 => ARG_i_366_n_0,
      O => ARG_i_168_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_169: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_367_n_0,
      I1 => ARG_i_368_n_0,
      O => ARG_i_169_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_170: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_369_n_0,
      I1 => ARG_i_370_n_0,
      O => ARG_i_170_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_171: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__42_n_0\,
      I1 => \g0_b5__41_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__40_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__39_n_0\,
      O => ARG_i_171_n_0
    );
ARG_i_172: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__38_n_0\,
      I1 => \g0_b5__37_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__36_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__35_n_0\,
      O => ARG_i_172_n_0
    );
ARG_i_173: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__34_n_0\,
      I1 => \g0_b5__33_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__32_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__31_n_0\,
      O => ARG_i_173_n_0
    );
ARG_i_174: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__30_n_0\,
      I1 => \g0_b5__29_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__28_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__27_n_0\,
      O => ARG_i_174_n_0
    );
ARG_i_175: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__22_n_0\,
      I1 => \g0_b5__21_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__20_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__19_n_0\,
      O => ARG_i_175_n_0
    );
ARG_i_176: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__18_n_0\,
      I1 => \g0_b5__17_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__16_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__15_n_0\,
      O => ARG_i_176_n_0
    );
ARG_i_177: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_371_n_0,
      I1 => ARG_i_372_n_0,
      O => ARG_i_177_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_178: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_373_n_0,
      I1 => ARG_i_374_n_0,
      O => ARG_i_178_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_179: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__99_n_0\,
      I1 => \g0_b5__100_n_0\,
      O => ARG_i_179_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_180: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__101_n_0\,
      I1 => \g0_b5__102_n_0\,
      O => ARG_i_180_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_181: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__95_n_0\,
      I1 => \g0_b5__96_n_0\,
      O => ARG_i_181_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_182: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__97_n_0\,
      I1 => \g0_b5__98_n_0\,
      O => ARG_i_182_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_183: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_375_n_0,
      I1 => ARG_i_376_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_377_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_378_n_0,
      O => ARG_i_183_n_0
    );
ARG_i_184: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_379_n_0,
      I1 => ARG_i_380_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_381_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_382_n_0,
      O => ARG_i_184_n_0
    );
ARG_i_185: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_383_n_0,
      I1 => ARG_i_384_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_385_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_386_n_0,
      O => ARG_i_185_n_0
    );
ARG_i_186: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_387_n_0,
      I1 => ARG_i_388_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_389_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_390_n_0,
      O => ARG_i_186_n_0
    );
ARG_i_187: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D04A3889991FE0A"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep_n_0\,
      I2 => \^neuron_counter_reg[1]_rep__4_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[2]_rep__0_0\,
      O => ARG_i_187_n_0
    );
ARG_i_188: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6249288CD468FDD2"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_188_n_0
    );
ARG_i_189: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B90CF920EB95DC76"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_189_n_0
    );
ARG_i_190: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0797A8BA342D21E5"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_190_n_0
    );
ARG_i_191: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2744EC1024BFED31"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[1]_rep__4_0\,
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_191_n_0
    );
ARG_i_192: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1CA41EFC531AD4BF"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[2]_rep__0_0\,
      O => ARG_i_192_n_0
    );
ARG_i_193: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9EE273EE543D3030"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_193_n_0
    );
ARG_i_194: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED90665C817BC6F2"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_194_n_0
    );
ARG_i_195: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_391_n_0,
      I1 => ARG_i_392_n_0,
      O => ARG_i_195_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_196: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_393_n_0,
      I1 => ARG_i_394_n_0,
      O => ARG_i_196_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_197: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_395_n_0,
      I1 => ARG_i_396_n_0,
      O => ARG_i_197_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_198: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_397_n_0,
      I1 => ARG_i_398_n_0,
      O => ARG_i_198_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_199: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_399_n_0,
      I1 => ARG_i_400_n_0,
      O => ARG_i_199_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF000AACC"
    )
        port map (
      I0 => \weight_rom_inst/weights_l2[0,0]\(15),
      I1 => \weight_rom_inst/weights_l1[0,0]\(15),
      I2 => \weight_rom_inst/weights_l4[0,0]\(6),
      I3 => layer_idx(0),
      I4 => layer_idx(1),
      I5 => ARG_i_36_n_0,
      O => B(6)
    );
ARG_i_200: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_401_n_0,
      I1 => ARG_i_402_n_0,
      O => ARG_i_200_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_201: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_403_n_0,
      I1 => ARG_i_404_n_0,
      O => ARG_i_201_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_202: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_405_n_0,
      I1 => ARG_i_406_n_0,
      O => ARG_i_202_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_203: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_407_n_0,
      I1 => ARG_i_408_n_0,
      O => ARG_i_203_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_204: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_409_n_0,
      I1 => ARG_i_410_n_0,
      O => ARG_i_204_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_205: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_411_n_0,
      I1 => ARG_i_412_n_0,
      O => ARG_i_205_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_206: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_413_n_0,
      I1 => ARG_i_414_n_0,
      O => ARG_i_206_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_207: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_415_n_0,
      I1 => ARG_i_416_n_0,
      O => ARG_i_207_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_208: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_417_n_0,
      I1 => ARG_i_418_n_0,
      O => ARG_i_208_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_209: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_419_n_0,
      I1 => ARG_i_420_n_0,
      O => ARG_i_209_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_210: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_421_n_0,
      I1 => ARG_i_422_n_0,
      O => ARG_i_210_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_211: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_423_n_0,
      I1 => ARG_i_424_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_425_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_426_n_0,
      O => ARG_i_211_n_0
    );
ARG_i_212: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_427_n_0,
      I1 => ARG_i_428_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_429_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_430_n_0,
      O => ARG_i_212_n_0
    );
ARG_i_213: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_431_n_0,
      I1 => ARG_i_432_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_433_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_434_n_0,
      O => ARG_i_213_n_0
    );
ARG_i_214: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_435_n_0,
      I1 => ARG_i_436_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_437_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_438_n_0,
      O => ARG_i_214_n_0
    );
ARG_i_215: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__101_n_0\,
      I1 => \g0_b4__102_n_0\,
      O => ARG_i_215_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_216: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__99_n_0\,
      I1 => \g0_b4__100_n_0\,
      O => ARG_i_216_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_217: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__97_n_0\,
      I1 => \g0_b4__98_n_0\,
      O => ARG_i_217_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_218: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__95_n_0\,
      I1 => \g0_b4__96_n_0\,
      O => ARG_i_218_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_219: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_439_n_0,
      I1 => ARG_i_440_n_0,
      O => ARG_i_219_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_220: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_441_n_0,
      I1 => ARG_i_442_n_0,
      O => ARG_i_220_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_221: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_443_n_0,
      I1 => ARG_i_444_n_0,
      O => ARG_i_221_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_222: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_445_n_0,
      I1 => ARG_i_446_n_0,
      O => ARG_i_222_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_223: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_447_n_0,
      I1 => ARG_i_448_n_0,
      O => ARG_i_223_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_224: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_449_n_0,
      I1 => ARG_i_450_n_0,
      O => ARG_i_224_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_225: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_451_n_0,
      I1 => ARG_i_452_n_0,
      O => ARG_i_225_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_226: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_453_n_0,
      I1 => ARG_i_454_n_0,
      O => ARG_i_226_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_227: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_455_n_0,
      I1 => ARG_i_456_n_0,
      O => ARG_i_227_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_228: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_457_n_0,
      I1 => ARG_i_458_n_0,
      O => ARG_i_228_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_229: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_459_n_0,
      I1 => ARG_i_460_n_0,
      O => ARG_i_229_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_230: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_461_n_0,
      I1 => ARG_i_462_n_0,
      O => ARG_i_230_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_231: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_463_n_0,
      I1 => ARG_i_464_n_0,
      O => ARG_i_231_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_232: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_465_n_0,
      I1 => ARG_i_466_n_0,
      O => ARG_i_232_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_233: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_467_n_0,
      I1 => ARG_i_468_n_0,
      O => ARG_i_233_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_234: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_469_n_0,
      I1 => ARG_i_470_n_0,
      O => ARG_i_234_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_235: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_471_n_0,
      I1 => ARG_i_472_n_0,
      O => ARG_i_235_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_236: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_473_n_0,
      I1 => ARG_i_474_n_0,
      O => ARG_i_236_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_237: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_475_n_0,
      I1 => ARG_i_476_n_0,
      O => ARG_i_237_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_238: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_477_n_0,
      I1 => ARG_i_478_n_0,
      O => ARG_i_238_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_239: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_479_n_0,
      I1 => ARG_i_480_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_481_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_482_n_0,
      O => ARG_i_239_n_0
    );
ARG_i_240: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_483_n_0,
      I1 => ARG_i_484_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_485_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_486_n_0,
      O => ARG_i_240_n_0
    );
ARG_i_241: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_487_n_0,
      I1 => ARG_i_488_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_489_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_490_n_0,
      O => ARG_i_241_n_0
    );
ARG_i_242: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_491_n_0,
      I1 => ARG_i_492_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_493_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_494_n_0,
      O => ARG_i_242_n_0
    );
ARG_i_243: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__101_n_0\,
      I1 => \g0_b3__102_n_0\,
      O => ARG_i_243_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_244: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__99_n_0\,
      I1 => \g0_b3__100_n_0\,
      O => ARG_i_244_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_245: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__97_n_0\,
      I1 => \g0_b3__98_n_0\,
      O => ARG_i_245_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_246: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__95_n_0\,
      I1 => \g0_b3__96_n_0\,
      O => ARG_i_246_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_247: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_495_n_0,
      I1 => ARG_i_496_n_0,
      O => ARG_i_247_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_248: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_497_n_0,
      I1 => ARG_i_498_n_0,
      O => ARG_i_248_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_249: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_499_n_0,
      I1 => ARG_i_500_n_0,
      O => ARG_i_249_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F10FFFF1F100000"
    )
        port map (
      I0 => \^neuron_counter_reg[1]_rep__4_0\,
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => layer_idx(1),
      I3 => \weight_rom_inst/p_0_out\(5),
      I4 => layer_idx(0),
      I5 => ARG_i_64_n_0,
      O => C(6)
    );
ARG_i_250: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_501_n_0,
      I1 => ARG_i_502_n_0,
      O => ARG_i_250_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_251: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_503_n_0,
      I1 => ARG_i_504_n_0,
      O => ARG_i_251_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_252: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_505_n_0,
      I1 => ARG_i_506_n_0,
      O => ARG_i_252_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_253: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_507_n_0,
      I1 => ARG_i_508_n_0,
      O => ARG_i_253_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_254: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_509_n_0,
      I1 => ARG_i_510_n_0,
      O => ARG_i_254_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_255: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_511_n_0,
      I1 => ARG_i_512_n_0,
      O => ARG_i_255_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_256: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_513_n_0,
      I1 => ARG_i_514_n_0,
      O => ARG_i_256_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_257: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_515_n_0,
      I1 => ARG_i_516_n_0,
      O => ARG_i_257_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_258: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_517_n_0,
      I1 => ARG_i_518_n_0,
      O => ARG_i_258_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_259: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_519_n_0,
      I1 => ARG_i_520_n_0,
      O => ARG_i_259_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^neuron_counter_reg[1]_rep__4_0\,
      I1 => layer_idx(1),
      I2 => \weight_rom_inst/p_0_out\(5),
      I3 => layer_idx(0),
      I4 => ARG_i_65_n_0,
      O => C(5)
    );
ARG_i_260: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_521_n_0,
      I1 => ARG_i_522_n_0,
      O => ARG_i_260_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_261: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_523_n_0,
      I1 => ARG_i_524_n_0,
      O => ARG_i_261_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_262: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_525_n_0,
      I1 => ARG_i_526_n_0,
      O => ARG_i_262_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_263: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_527_n_0,
      I1 => ARG_i_528_n_0,
      O => ARG_i_263_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_264: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_529_n_0,
      I1 => ARG_i_530_n_0,
      O => ARG_i_264_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_265: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_531_n_0,
      I1 => ARG_i_532_n_0,
      O => ARG_i_265_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_266: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_533_n_0,
      I1 => ARG_i_534_n_0,
      O => ARG_i_266_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_267: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_535_n_0,
      I1 => ARG_i_536_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_537_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_538_n_0,
      O => ARG_i_267_n_0
    );
ARG_i_268: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_539_n_0,
      I1 => ARG_i_540_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_541_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_542_n_0,
      O => ARG_i_268_n_0
    );
ARG_i_269: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_543_n_0,
      I1 => ARG_i_544_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_545_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_546_n_0,
      O => ARG_i_269_n_0
    );
ARG_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => layer_idx(1),
      I2 => \weight_rom_inst/p_0_out\(4),
      I3 => layer_idx(0),
      I4 => ARG_i_66_n_0,
      O => C(4)
    );
ARG_i_270: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_547_n_0,
      I1 => ARG_i_548_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_549_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_550_n_0,
      O => ARG_i_270_n_0
    );
ARG_i_271: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__101_n_0\,
      I1 => \g0_b2__102_n_0\,
      O => ARG_i_271_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_272: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__99_n_0\,
      I1 => \g0_b2__100_n_0\,
      O => ARG_i_272_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_273: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__97_n_0\,
      I1 => \g0_b2__98_n_0\,
      O => ARG_i_273_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_274: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__95_n_0\,
      I1 => \g0_b2__96_n_0\,
      O => ARG_i_274_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_275: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_551_n_0,
      I1 => ARG_i_552_n_0,
      O => ARG_i_275_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_276: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_553_n_0,
      I1 => ARG_i_554_n_0,
      O => ARG_i_276_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_277: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_555_n_0,
      I1 => ARG_i_556_n_0,
      O => ARG_i_277_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_278: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_557_n_0,
      I1 => ARG_i_558_n_0,
      O => ARG_i_278_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_279: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_559_n_0,
      I1 => ARG_i_560_n_0,
      O => ARG_i_279_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F10FFFF1F100000"
    )
        port map (
      I0 => \neuron_counter_reg[1]_rep_n_0\,
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => layer_idx(1),
      I3 => \weight_rom_inst/p_0_out\(3),
      I4 => layer_idx(0),
      I5 => ARG_i_67_n_0,
      O => C(3)
    );
ARG_i_280: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_561_n_0,
      I1 => ARG_i_562_n_0,
      O => ARG_i_280_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_281: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_563_n_0,
      I1 => ARG_i_564_n_0,
      O => ARG_i_281_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_282: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_565_n_0,
      I1 => ARG_i_566_n_0,
      O => ARG_i_282_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_283: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_567_n_0,
      I1 => ARG_i_568_n_0,
      O => ARG_i_283_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_284: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_569_n_0,
      I1 => ARG_i_570_n_0,
      O => ARG_i_284_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_285: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_571_n_0,
      I1 => ARG_i_572_n_0,
      O => ARG_i_285_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_286: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_573_n_0,
      I1 => ARG_i_574_n_0,
      O => ARG_i_286_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_287: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_575_n_0,
      I1 => ARG_i_576_n_0,
      O => ARG_i_287_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_288: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_577_n_0,
      I1 => ARG_i_578_n_0,
      O => ARG_i_288_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_289: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_579_n_0,
      I1 => ARG_i_580_n_0,
      O => ARG_i_289_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => layer_idx(1),
      I2 => \weight_rom_inst/p_0_out\(2),
      I3 => layer_idx(0),
      I4 => ARG_i_68_n_0,
      O => C(2)
    );
ARG_i_290: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_581_n_0,
      I1 => ARG_i_582_n_0,
      O => ARG_i_290_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_291: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_583_n_0,
      I1 => ARG_i_584_n_0,
      O => ARG_i_291_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_292: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_585_n_0,
      I1 => ARG_i_586_n_0,
      O => ARG_i_292_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_293: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_587_n_0,
      I1 => ARG_i_588_n_0,
      O => ARG_i_293_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_294: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_589_n_0,
      I1 => ARG_i_590_n_0,
      O => ARG_i_294_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_295: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_591_n_0,
      I1 => ARG_i_592_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_593_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_594_n_0,
      O => ARG_i_295_n_0
    );
ARG_i_296: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_595_n_0,
      I1 => ARG_i_596_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_597_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_598_n_0,
      O => ARG_i_296_n_0
    );
ARG_i_297: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_599_n_0,
      I1 => ARG_i_600_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_601_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_602_n_0,
      O => ARG_i_297_n_0
    );
ARG_i_298: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_603_n_0,
      I1 => ARG_i_604_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_605_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_606_n_0,
      O => ARG_i_298_n_0
    );
ARG_i_299: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__101_n_0\,
      I1 => \g0_b1__102_n_0\,
      O => ARG_i_299_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \weight_rom_inst/weights_l2[0,0]\(5),
      I1 => \weight_rom_inst/weights_l1[0,0]\(5),
      I2 => \weight_rom_inst/weights_l4[0,0]\(5),
      I3 => layer_idx(0),
      I4 => layer_idx(1),
      I5 => ARG_i_41_n_0,
      O => B(5)
    );
ARG_i_30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => layer_idx(1),
      I2 => \weight_rom_inst/p_0_out\(1),
      I3 => layer_idx(0),
      I4 => ARG_i_69_n_0,
      O => C(1)
    );
ARG_i_300: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__99_n_0\,
      I1 => \g0_b1__100_n_0\,
      O => ARG_i_300_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_301: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__97_n_0\,
      I1 => \g0_b1__98_n_0\,
      O => ARG_i_301_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_302: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__95_n_0\,
      I1 => \g0_b1__96_n_0\,
      O => ARG_i_302_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_303: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_607_n_0,
      I1 => ARG_i_608_n_0,
      O => ARG_i_303_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_304: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_609_n_0,
      I1 => ARG_i_610_n_0,
      O => ARG_i_304_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_305: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_611_n_0,
      I1 => ARG_i_612_n_0,
      O => ARG_i_305_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_306: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_613_n_0,
      I1 => ARG_i_614_n_0,
      O => ARG_i_306_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_307: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_615_n_0,
      I1 => ARG_i_616_n_0,
      O => ARG_i_307_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_308: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_617_n_0,
      I1 => ARG_i_618_n_0,
      O => ARG_i_308_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_309: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_619_n_0,
      I1 => ARG_i_620_n_0,
      O => ARG_i_309_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBAEEBA"
    )
        port map (
      I0 => ARG_i_70_n_0,
      I1 => layer_idx(1),
      I2 => \g0_b0__104_n_0\,
      I3 => layer_idx(0),
      I4 => \weight_rom_inst/p_0_out\(0),
      O => C(0)
    );
ARG_i_310: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_621_n_0,
      I1 => ARG_i_622_n_0,
      O => ARG_i_310_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_311: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_623_n_0,
      I1 => ARG_i_624_n_0,
      O => ARG_i_311_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_312: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_625_n_0,
      I1 => ARG_i_626_n_0,
      O => ARG_i_312_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_313: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_627_n_0,
      I1 => ARG_i_628_n_0,
      O => ARG_i_313_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_314: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_629_n_0,
      I1 => ARG_i_630_n_0,
      O => ARG_i_314_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_315: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_631_n_0,
      I1 => ARG_i_632_n_0,
      O => ARG_i_315_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_316: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_633_n_0,
      I1 => ARG_i_634_n_0,
      O => ARG_i_316_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_317: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_635_n_0,
      I1 => ARG_i_636_n_0,
      O => ARG_i_317_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_318: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_637_n_0,
      I1 => ARG_i_638_n_0,
      O => ARG_i_318_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_319: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_639_n_0,
      I1 => ARG_i_640_n_0,
      O => ARG_i_319_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_320: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_641_n_0,
      I1 => ARG_i_642_n_0,
      O => ARG_i_320_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_321: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_643_n_0,
      I1 => ARG_i_644_n_0,
      O => ARG_i_321_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_322: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_645_n_0,
      I1 => ARG_i_646_n_0,
      O => ARG_i_322_n_0,
      S => \^i_rd_addr\(1)
    );
ARG_i_323: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_647_n_0,
      I1 => ARG_i_648_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_649_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_650_n_0,
      O => ARG_i_323_n_0
    );
ARG_i_324: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_651_n_0,
      I1 => ARG_i_652_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_653_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_654_n_0,
      O => ARG_i_324_n_0
    );
ARG_i_325: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_655_n_0,
      I1 => ARG_i_656_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_657_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_658_n_0,
      O => ARG_i_325_n_0
    );
ARG_i_326: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_659_n_0,
      I1 => ARG_i_660_n_0,
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => ARG_i_661_n_0,
      I4 => fsm_input_addr(1),
      I5 => ARG_i_662_n_0,
      O => ARG_i_326_n_0
    );
ARG_i_327: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__101_n_0\,
      I1 => \g0_b0__102_n_0\,
      O => ARG_i_327_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_328: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__99_n_0\,
      I1 => \g0_b0__100_n_0\,
      O => ARG_i_328_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_329: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__97_n_0\,
      I1 => \g0_b0__98_n_0\,
      O => ARG_i_329_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_71_n_0,
      I1 => ARG_i_72_n_0,
      I2 => \^input_counter_reg[5]_0\(3),
      I3 => ARG_i_73_n_0,
      I4 => \^input_counter_reg[5]_0\(2),
      I5 => ARG_i_74_n_0,
      O => \weight_rom_inst/weights_l2[0,0]\(15)
    );
ARG_i_330: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__95_n_0\,
      I1 => \g0_b0__96_n_0\,
      O => ARG_i_330_n_0,
      S => fsm_input_addr(0)
    );
ARG_i_331: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_663_n_0,
      I1 => ARG_i_664_n_0,
      O => ARG_i_331_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_332: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_665_n_0,
      I1 => ARG_i_666_n_0,
      O => ARG_i_332_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_333: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_667_n_0,
      I1 => ARG_i_668_n_0,
      O => ARG_i_333_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_334: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_669_n_0,
      I1 => ARG_i_670_n_0,
      O => ARG_i_334_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_335: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__50_n_0\,
      I1 => \g0_b6__17_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__48_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__47_n_0\,
      O => ARG_i_335_n_0
    );
ARG_i_336: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__19_n_0\,
      I1 => \g0_b5__53_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__52_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b6__18_n_0\,
      O => ARG_i_336_n_0
    );
ARG_i_337: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__58_n_0\,
      I1 => \g0_b5__57_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b6__21_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b6__20_n_0\,
      O => ARG_i_337_n_0
    );
ARG_i_338: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__62_n_0\,
      I1 => \g0_b6__22_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__60_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__59_n_0\,
      O => ARG_i_338_n_0
    );
ARG_i_339: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__2_n_0\,
      I1 => \g0_b6__0_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__0_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => g0_b6_n_0,
      O => ARG_i_339_n_0
    );
ARG_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_75_n_0,
      I1 => ARG_i_76_n_0,
      I2 => \^input_counter_reg[5]_0\(3),
      I3 => ARG_i_77_n_0,
      I4 => ARG_i_78_n_0,
      I5 => ARG_i_79_n_0,
      O => \weight_rom_inst/weights_l1[0,0]\(15)
    );
ARG_i_340: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__6_n_0\,
      I1 => \g0_b5__5_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__4_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b6__1_n_0\,
      O => ARG_i_340_n_0
    );
ARG_i_341: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__10_n_0\,
      I1 => \g0_b5__9_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b6__2_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__7_n_0\,
      O => ARG_i_341_n_0
    );
ARG_i_342: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__4_n_0\,
      I1 => \g0_b5__13_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b6__3_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__11_n_0\,
      O => ARG_i_342_n_0
    );
ARG_i_343: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__45_n_0\,
      I1 => \g0_b6__46_n_0\,
      O => ARG_i_343_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_344: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__43_n_0\,
      I1 => \g0_b6__44_n_0\,
      O => ARG_i_344_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_345: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__41_n_0\,
      I1 => \g0_b6__42_n_0\,
      O => ARG_i_345_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_346: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__39_n_0\,
      I1 => \g0_b6__40_n_0\,
      O => ARG_i_346_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_347: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__53_n_0\,
      I1 => \g0_b6__54_n_0\,
      O => ARG_i_347_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_348: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__51_n_0\,
      I1 => \g0_b6__52_n_0\,
      O => ARG_i_348_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_349: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__49_n_0\,
      I1 => \g0_b6__50_n_0\,
      O => ARG_i_349_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D24CB9F9AFE6"
    )
        port map (
      I0 => \^input_counter_reg[5]_0\(1),
      I1 => \^input_counter_reg[5]_0\(0),
      I2 => \input_counter_reg[0]_rep__2_n_0\,
      I3 => fsm_input_addr(1),
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \neuron_counter_reg[1]_rep_n_0\,
      O => \weight_rom_inst/weights_l4[0,0]\(15)
    );
ARG_i_350: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__47_n_0\,
      I1 => \g0_b6__48_n_0\,
      O => ARG_i_350_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_351: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__29_n_0\,
      I1 => \g0_b6__30_n_0\,
      O => ARG_i_351_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_352: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__27_n_0\,
      I1 => \g0_b6__28_n_0\,
      O => ARG_i_352_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_353: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__25_n_0\,
      I1 => \g0_b6__26_n_0\,
      O => ARG_i_353_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_354: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__23_n_0\,
      I1 => \g0_b6__24_n_0\,
      O => ARG_i_354_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_355: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__37_n_0\,
      I1 => \g0_b6__38_n_0\,
      O => ARG_i_355_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_356: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__35_n_0\,
      I1 => \g0_b6__36_n_0\,
      O => ARG_i_356_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_357: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__33_n_0\,
      I1 => \g0_b6__34_n_0\,
      O => ARG_i_357_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_358: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__31_n_0\,
      I1 => \g0_b6__32_n_0\,
      O => ARG_i_358_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_359: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98E27B3AF4292C10"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_359_n_0
    );
ARG_i_36: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E20000"
    )
        port map (
      I0 => ARG_i_80_n_0,
      I1 => \^input_counter_reg[5]_0\(2),
      I2 => ARG_i_81_n_0,
      I3 => layer_idx(0),
      I4 => layer_idx(1),
      O => ARG_i_36_n_0
    );
ARG_i_360: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF5E48FB4C5B6F52"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_360_n_0
    );
ARG_i_361: unisim.vcomponents.LUT6
    generic map(
      INIT => X"340BB18531FDBDB5"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^neuron_counter_reg[1]_rep__4_0\,
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^i_wr_addr\(0),
      O => ARG_i_361_n_0
    );
ARG_i_362: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96021EF6ED0CCA5F"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_362_n_0
    );
ARG_i_363: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F90473A1F995C6F8"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_363_n_0
    );
ARG_i_364: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9DBF3976786A0129"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_364_n_0
    );
ARG_i_365: unisim.vcomponents.LUT6
    generic map(
      INIT => X"39F816B2FC3895A7"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_365_n_0
    );
ARG_i_366: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6B092C0E552C7CD0"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_366_n_0
    );
ARG_i_367: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__50_n_0\,
      I1 => \g0_b5__49_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__48_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__47_n_0\,
      O => ARG_i_367_n_0
    );
ARG_i_368: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__54_n_0\,
      I1 => \g0_b5__53_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__52_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__51_n_0\,
      O => ARG_i_368_n_0
    );
ARG_i_369: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__58_n_0\,
      I1 => \g0_b5__57_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__56_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__55_n_0\,
      O => ARG_i_369_n_0
    );
ARG_i_37: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D24CB9F9AFC6"
    )
        port map (
      I0 => \^input_counter_reg[5]_0\(1),
      I1 => \^input_counter_reg[5]_0\(0),
      I2 => \input_counter_reg[0]_rep__2_n_0\,
      I3 => fsm_input_addr(1),
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \neuron_counter_reg[1]_rep_n_0\,
      O => \weight_rom_inst/weights_l4[0,0]\(6)
    );
ARG_i_370: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__62_n_0\,
      I1 => \g0_b5__61_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__60_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__59_n_0\,
      O => ARG_i_370_n_0
    );
ARG_i_371: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__2_n_0\,
      I1 => \g0_b5__1_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__0_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => g0_b5_n_0,
      O => ARG_i_371_n_0
    );
ARG_i_372: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__6_n_0\,
      I1 => \g0_b5__5_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__4_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__3_n_0\,
      O => ARG_i_372_n_0
    );
ARG_i_373: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__10_n_0\,
      I1 => \g0_b5__9_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__8_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__7_n_0\,
      O => ARG_i_373_n_0
    );
ARG_i_374: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b5__14_n_0\,
      I1 => \g0_b5__13_n_0\,
      I2 => \^i_rd_addr\(1),
      I3 => \g0_b5__12_n_0\,
      I4 => \^i_rd_addr\(0),
      I5 => \g0_b5__11_n_0\,
      O => ARG_i_374_n_0
    );
ARG_i_375: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__85_n_0\,
      I1 => \g0_b5__86_n_0\,
      O => ARG_i_375_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_376: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__83_n_0\,
      I1 => \g0_b5__84_n_0\,
      O => ARG_i_376_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_377: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__81_n_0\,
      I1 => \g0_b5__82_n_0\,
      O => ARG_i_377_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_378: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__79_n_0\,
      I1 => \g0_b5__80_n_0\,
      O => ARG_i_378_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_379: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__93_n_0\,
      I1 => \g0_b5__94_n_0\,
      O => ARG_i_379_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_82_n_0,
      I1 => ARG_i_83_n_0,
      I2 => \^input_counter_reg[5]_0\(3),
      I3 => ARG_i_84_n_0,
      I4 => \^input_counter_reg[5]_0\(2),
      I5 => ARG_i_85_n_0,
      O => \weight_rom_inst/weights_l2[0,0]\(5)
    );
ARG_i_380: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__91_n_0\,
      I1 => \g0_b5__92_n_0\,
      O => ARG_i_380_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_381: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__89_n_0\,
      I1 => \g0_b5__90_n_0\,
      O => ARG_i_381_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_382: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__87_n_0\,
      I1 => \g0_b5__88_n_0\,
      O => ARG_i_382_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_383: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__69_n_0\,
      I1 => \g0_b5__70_n_0\,
      O => ARG_i_383_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_384: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__67_n_0\,
      I1 => \g0_b5__68_n_0\,
      O => ARG_i_384_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_385: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__65_n_0\,
      I1 => \g0_b5__66_n_0\,
      O => ARG_i_385_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_386: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__63_n_0\,
      I1 => \g0_b5__64_n_0\,
      O => ARG_i_386_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_387: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__77_n_0\,
      I1 => \g0_b5__78_n_0\,
      O => ARG_i_387_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_388: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__75_n_0\,
      I1 => \g0_b5__76_n_0\,
      O => ARG_i_388_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_389: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__73_n_0\,
      I1 => \g0_b5__74_n_0\,
      O => ARG_i_389_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_86_n_0,
      I1 => ARG_i_87_n_0,
      I2 => \^input_counter_reg[5]_0\(3),
      I3 => ARG_i_88_n_0,
      I4 => ARG_i_78_n_0,
      I5 => ARG_i_89_n_0,
      O => \weight_rom_inst/weights_l1[0,0]\(5)
    );
ARG_i_390: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__71_n_0\,
      I1 => \g0_b5__72_n_0\,
      O => ARG_i_390_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_391: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__11_n_0\,
      I1 => \g0_b4__12_n_0\,
      O => ARG_i_391_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_392: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__13_n_0\,
      I1 => \g0_b4__14_n_0\,
      O => ARG_i_392_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_393: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__7_n_0\,
      I1 => \g0_b4__8_n_0\,
      O => ARG_i_393_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_394: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__9_n_0\,
      I1 => \g0_b4__10_n_0\,
      O => ARG_i_394_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_395: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__3_n_0\,
      I1 => \g0_b4__4_n_0\,
      O => ARG_i_395_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_396: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__5_n_0\,
      I1 => \g0_b4__6_n_0\,
      O => ARG_i_396_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_397: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b4_n_0,
      I1 => \g0_b4__0_n_0\,
      O => ARG_i_397_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_398: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__1_n_0\,
      I1 => \g0_b4__2_n_0\,
      O => ARG_i_398_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_399: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__27_n_0\,
      I1 => \g0_b4__28_n_0\,
      O => ARG_i_399_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => ARG_i_42_n_0,
      I1 => \^input_counter_reg[5]_0\(3),
      I2 => ARG_i_43_n_0,
      I3 => ARG_i_44_n_0,
      I4 => ARG_i_45_n_0,
      I5 => ARG_i_46_n_0,
      O => B(4)
    );
ARG_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"009700A2C9727B55"
    )
        port map (
      I0 => \^input_counter_reg[5]_0\(1),
      I1 => \^input_counter_reg[5]_0\(0),
      I2 => fsm_input_addr(1),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \input_counter_reg[0]_rep__2_n_0\,
      I5 => \neuron_counter_reg[1]_rep_n_0\,
      O => \weight_rom_inst/weights_l4[0,0]\(5)
    );
ARG_i_400: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__29_n_0\,
      I1 => \g0_b4__30_n_0\,
      O => ARG_i_400_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_401: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__23_n_0\,
      I1 => \g0_b4__24_n_0\,
      O => ARG_i_401_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_402: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__25_n_0\,
      I1 => \g0_b4__26_n_0\,
      O => ARG_i_402_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_403: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__19_n_0\,
      I1 => \g0_b4__20_n_0\,
      O => ARG_i_403_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_404: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__21_n_0\,
      I1 => \g0_b4__22_n_0\,
      O => ARG_i_404_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_405: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__15_n_0\,
      I1 => \g0_b4__16_n_0\,
      O => ARG_i_405_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_406: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__17_n_0\,
      I1 => \g0_b4__18_n_0\,
      O => ARG_i_406_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_407: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__43_n_0\,
      I1 => \g0_b4__44_n_0\,
      O => ARG_i_407_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_408: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__45_n_0\,
      I1 => \g0_b4__46_n_0\,
      O => ARG_i_408_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_409: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__39_n_0\,
      I1 => \g0_b4__40_n_0\,
      O => ARG_i_409_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_41: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_90_n_0,
      I1 => ARG_i_91_n_0,
      I2 => \^input_counter_reg[5]_0\(2),
      I3 => ARG_i_92_n_0,
      I4 => \^input_counter_reg[5]_0\(1),
      I5 => ARG_i_93_n_0,
      O => ARG_i_41_n_0
    );
ARG_i_410: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__41_n_0\,
      I1 => \g0_b4__42_n_0\,
      O => ARG_i_410_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_411: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__35_n_0\,
      I1 => \g0_b4__36_n_0\,
      O => ARG_i_411_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_412: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__37_n_0\,
      I1 => \g0_b4__38_n_0\,
      O => ARG_i_412_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_413: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__31_n_0\,
      I1 => \g0_b4__32_n_0\,
      O => ARG_i_413_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_414: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__33_n_0\,
      I1 => \g0_b4__34_n_0\,
      O => ARG_i_414_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_415: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__59_n_0\,
      I1 => \g0_b4__60_n_0\,
      O => ARG_i_415_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_416: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__61_n_0\,
      I1 => \g0_b4__62_n_0\,
      O => ARG_i_416_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_417: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__55_n_0\,
      I1 => \g0_b4__56_n_0\,
      O => ARG_i_417_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_418: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__57_n_0\,
      I1 => \g0_b4__58_n_0\,
      O => ARG_i_418_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_419: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__51_n_0\,
      I1 => \g0_b4__52_n_0\,
      O => ARG_i_419_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_42: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_94_n_0,
      I1 => ARG_i_95_n_0,
      O => ARG_i_42_n_0,
      S => \^input_counter_reg[5]_0\(2)
    );
ARG_i_420: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__53_n_0\,
      I1 => \g0_b4__54_n_0\,
      O => ARG_i_420_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_421: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__47_n_0\,
      I1 => \g0_b4__48_n_0\,
      O => ARG_i_421_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_422: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__49_n_0\,
      I1 => \g0_b4__50_n_0\,
      O => ARG_i_422_n_0,
      S => \^i_rd_addr\(0)
    );
ARG_i_423: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__69_n_0\,
      I1 => \g0_b4__70_n_0\,
      O => ARG_i_423_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_424: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__67_n_0\,
      I1 => \g0_b4__68_n_0\,
      O => ARG_i_424_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_425: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__65_n_0\,
      I1 => \g0_b4__66_n_0\,
      O => ARG_i_425_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_426: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__63_n_0\,
      I1 => \g0_b4__64_n_0\,
      O => ARG_i_426_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_427: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__77_n_0\,
      I1 => \g0_b4__78_n_0\,
      O => ARG_i_427_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_428: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__75_n_0\,
      I1 => \g0_b4__76_n_0\,
      O => ARG_i_428_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_429: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__73_n_0\,
      I1 => \g0_b4__74_n_0\,
      O => ARG_i_429_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_43: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_96_n_0,
      I1 => ARG_i_97_n_0,
      O => ARG_i_43_n_0,
      S => \^input_counter_reg[5]_0\(2)
    );
ARG_i_430: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__71_n_0\,
      I1 => \g0_b4__72_n_0\,
      O => ARG_i_430_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_431: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__85_n_0\,
      I1 => \g0_b4__86_n_0\,
      O => ARG_i_431_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_432: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__83_n_0\,
      I1 => \g0_b4__84_n_0\,
      O => ARG_i_432_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_433: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__81_n_0\,
      I1 => \g0_b4__82_n_0\,
      O => ARG_i_433_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_434: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__79_n_0\,
      I1 => \g0_b4__80_n_0\,
      O => ARG_i_434_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_435: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__93_n_0\,
      I1 => \g0_b4__94_n_0\,
      O => ARG_i_435_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_436: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__91_n_0\,
      I1 => \g0_b4__92_n_0\,
      O => ARG_i_436_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_437: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__89_n_0\,
      I1 => \g0_b4__90_n_0\,
      O => ARG_i_437_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_438: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__87_n_0\,
      I1 => \g0_b4__88_n_0\,
      O => ARG_i_438_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_439: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C24787F950C32ED8"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => fsm_input_addr(0),
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[1]_rep__4_0\,
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_439_n_0
    );
ARG_i_44: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => layer_idx(0),
      I1 => layer_idx(1),
      O => ARG_i_44_n_0
    );
ARG_i_440: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B9FBFA7277146529"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[1]_rep__4_0\,
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_440_n_0
    );
ARG_i_441: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D26FCCCF99A41B7"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_441_n_0
    );
ARG_i_442: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BB2CE360F8D78E8"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => fsm_input_addr(0),
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_442_n_0
    );
ARG_i_443: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28FE402A79EE1353"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_443_n_0
    );
ARG_i_444: unisim.vcomponents.LUT6
    generic map(
      INIT => X"526E5EE618332B18"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_444_n_0
    );
ARG_i_445: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E03948CB3F9BF3D"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^neuron_counter_reg[1]_rep__4_0\,
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^i_wr_addr\(0),
      O => ARG_i_445_n_0
    );
ARG_i_446: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F77FA4AC3BCAFB43"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_446_n_0
    );
ARG_i_447: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__11_n_0\,
      I1 => \g0_b3__12_n_0\,
      O => ARG_i_447_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_448: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__13_n_0\,
      I1 => \g0_b3__14_n_0\,
      O => ARG_i_448_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_449: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__7_n_0\,
      I1 => \g0_b3__8_n_0\,
      O => ARG_i_449_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_45: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => ARG_i_98_n_0,
      I1 => ARG_i_78_n_0,
      I2 => ARG_i_99_n_0,
      I3 => \^input_counter_reg[5]_0\(3),
      I4 => ARG_i_100_n_0,
      I5 => ARG_i_101_n_0,
      O => ARG_i_45_n_0
    );
ARG_i_450: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__9_n_0\,
      I1 => \g0_b3__10_n_0\,
      O => ARG_i_450_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_451: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__3_n_0\,
      I1 => \g0_b3__4_n_0\,
      O => ARG_i_451_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_452: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__5_n_0\,
      I1 => \g0_b3__6_n_0\,
      O => ARG_i_452_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_453: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b3_n_0,
      I1 => \g0_b3__0_n_0\,
      O => ARG_i_453_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_454: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__1_n_0\,
      I1 => \g0_b3__2_n_0\,
      O => ARG_i_454_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_455: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__27_n_0\,
      I1 => \g0_b3__28_n_0\,
      O => ARG_i_455_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_456: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__29_n_0\,
      I1 => \g0_b3__30_n_0\,
      O => ARG_i_456_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_457: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__23_n_0\,
      I1 => \g0_b3__24_n_0\,
      O => ARG_i_457_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_458: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__25_n_0\,
      I1 => \g0_b3__26_n_0\,
      O => ARG_i_458_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_459: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__19_n_0\,
      I1 => \g0_b3__20_n_0\,
      O => ARG_i_459_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => ARG_i_102_n_0,
      I1 => \^input_counter_reg[5]_0\(2),
      I2 => ARG_i_103_n_0,
      I3 => layer_idx(1),
      I4 => layer_idx(0),
      I5 => \weight_rom_inst/weights_l4[0,0]\(4),
      O => ARG_i_46_n_0
    );
ARG_i_460: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__21_n_0\,
      I1 => \g0_b3__22_n_0\,
      O => ARG_i_460_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_461: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__15_n_0\,
      I1 => \g0_b3__16_n_0\,
      O => ARG_i_461_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_462: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__17_n_0\,
      I1 => \g0_b3__18_n_0\,
      O => ARG_i_462_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_463: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__43_n_0\,
      I1 => \g0_b3__44_n_0\,
      O => ARG_i_463_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_464: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__45_n_0\,
      I1 => \g0_b3__46_n_0\,
      O => ARG_i_464_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_465: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__39_n_0\,
      I1 => \g0_b3__40_n_0\,
      O => ARG_i_465_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_466: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__41_n_0\,
      I1 => \g0_b3__42_n_0\,
      O => ARG_i_466_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_467: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__35_n_0\,
      I1 => \g0_b3__36_n_0\,
      O => ARG_i_467_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_468: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__37_n_0\,
      I1 => \g0_b3__38_n_0\,
      O => ARG_i_468_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_469: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__31_n_0\,
      I1 => \g0_b3__32_n_0\,
      O => ARG_i_469_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_47: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_105_n_0,
      I1 => ARG_i_106_n_0,
      O => ARG_i_47_n_0,
      S => \^input_counter_reg[5]_0\(2)
    );
ARG_i_470: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__33_n_0\,
      I1 => \g0_b3__34_n_0\,
      O => ARG_i_470_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_471: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__59_n_0\,
      I1 => \g0_b3__60_n_0\,
      O => ARG_i_471_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_472: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__61_n_0\,
      I1 => \g0_b3__62_n_0\,
      O => ARG_i_472_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_473: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__55_n_0\,
      I1 => \g0_b3__56_n_0\,
      O => ARG_i_473_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_474: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__57_n_0\,
      I1 => \g0_b3__58_n_0\,
      O => ARG_i_474_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_475: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__51_n_0\,
      I1 => \g0_b3__52_n_0\,
      O => ARG_i_475_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_476: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__53_n_0\,
      I1 => \g0_b3__54_n_0\,
      O => ARG_i_476_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_477: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__47_n_0\,
      I1 => \g0_b3__48_n_0\,
      O => ARG_i_477_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_478: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__49_n_0\,
      I1 => \g0_b3__50_n_0\,
      O => ARG_i_478_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_479: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__69_n_0\,
      I1 => \g0_b3__70_n_0\,
      O => ARG_i_479_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_48: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_107_n_0,
      I1 => ARG_i_108_n_0,
      O => ARG_i_48_n_0,
      S => \^input_counter_reg[5]_0\(2)
    );
ARG_i_480: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__67_n_0\,
      I1 => \g0_b3__68_n_0\,
      O => ARG_i_480_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_481: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__65_n_0\,
      I1 => \g0_b3__66_n_0\,
      O => ARG_i_481_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_482: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__63_n_0\,
      I1 => \g0_b3__64_n_0\,
      O => ARG_i_482_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_483: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__77_n_0\,
      I1 => \g0_b3__78_n_0\,
      O => ARG_i_483_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_484: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__75_n_0\,
      I1 => \g0_b3__76_n_0\,
      O => ARG_i_484_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_485: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__73_n_0\,
      I1 => \g0_b3__74_n_0\,
      O => ARG_i_485_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_486: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__71_n_0\,
      I1 => \g0_b3__72_n_0\,
      O => ARG_i_486_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_487: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__85_n_0\,
      I1 => \g0_b3__86_n_0\,
      O => ARG_i_487_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_488: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__83_n_0\,
      I1 => \g0_b3__84_n_0\,
      O => ARG_i_488_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_489: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__81_n_0\,
      I1 => \g0_b3__82_n_0\,
      O => ARG_i_489_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_49: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => ARG_i_109_n_0,
      I1 => ARG_i_78_n_0,
      I2 => ARG_i_110_n_0,
      I3 => \^input_counter_reg[5]_0\(3),
      I4 => ARG_i_111_n_0,
      I5 => ARG_i_101_n_0,
      O => ARG_i_49_n_0
    );
ARG_i_490: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__79_n_0\,
      I1 => \g0_b3__80_n_0\,
      O => ARG_i_490_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_491: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__93_n_0\,
      I1 => \g0_b3__94_n_0\,
      O => ARG_i_491_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_492: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__91_n_0\,
      I1 => \g0_b3__92_n_0\,
      O => ARG_i_492_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_493: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__89_n_0\,
      I1 => \g0_b3__90_n_0\,
      O => ARG_i_493_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_494: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__87_n_0\,
      I1 => \g0_b3__88_n_0\,
      O => ARG_i_494_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_495: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CDF82A6FA879319"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_495_n_0
    );
ARG_i_496: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0F8CED97D553372"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_496_n_0
    );
ARG_i_497: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CE42242631973F2"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^neuron_counter_reg[1]_rep__4_0\,
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^i_wr_addr\(0),
      O => ARG_i_497_n_0
    );
ARG_i_498: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E42FCDB69E963358"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_498_n_0
    );
ARG_i_499: unisim.vcomponents.LUT6
    generic map(
      INIT => X"76E9F062AC1B6FFF"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_499_n_0
    );
ARG_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => ARG_i_47_n_0,
      I1 => \^input_counter_reg[5]_0\(3),
      I2 => ARG_i_48_n_0,
      I3 => ARG_i_44_n_0,
      I4 => ARG_i_49_n_0,
      I5 => ARG_i_50_n_0,
      O => B(3)
    );
ARG_i_50: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => ARG_i_112_n_0,
      I1 => \^input_counter_reg[5]_0\(2),
      I2 => ARG_i_113_n_0,
      I3 => layer_idx(1),
      I4 => layer_idx(0),
      I5 => \weight_rom_inst/weights_l4[0,0]\(3),
      O => ARG_i_50_n_0
    );
ARG_i_500: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A5826BA53471001"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[2]_rep__0_0\,
      O => ARG_i_500_n_0
    );
ARG_i_501: unisim.vcomponents.LUT6
    generic map(
      INIT => X"971DCA13473DB44E"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^neuron_counter_reg[5]_0\(0),
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_501_n_0
    );
ARG_i_502: unisim.vcomponents.LUT6
    generic map(
      INIT => X"67DA8CA91689BF4B"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_502_n_0
    );
ARG_i_503: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__11_n_0\,
      I1 => \g0_b2__12_n_0\,
      O => ARG_i_503_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_504: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__13_n_0\,
      I1 => \g0_b2__14_n_0\,
      O => ARG_i_504_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_505: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__7_n_0\,
      I1 => \g0_b2__8_n_0\,
      O => ARG_i_505_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_506: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__9_n_0\,
      I1 => \g0_b2__10_n_0\,
      O => ARG_i_506_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_507: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__3_n_0\,
      I1 => \g0_b2__4_n_0\,
      O => ARG_i_507_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_508: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__5_n_0\,
      I1 => \g0_b2__6_n_0\,
      O => ARG_i_508_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_509: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b2_n_0,
      I1 => \g0_b2__0_n_0\,
      O => ARG_i_509_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_51: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_115_n_0,
      I1 => ARG_i_116_n_0,
      O => ARG_i_51_n_0,
      S => \^input_counter_reg[5]_0\(2)
    );
ARG_i_510: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__1_n_0\,
      I1 => \g0_b2__2_n_0\,
      O => ARG_i_510_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_511: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__27_n_0\,
      I1 => \g0_b2__28_n_0\,
      O => ARG_i_511_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_512: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__29_n_0\,
      I1 => \g0_b2__30_n_0\,
      O => ARG_i_512_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_513: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__23_n_0\,
      I1 => \g0_b2__24_n_0\,
      O => ARG_i_513_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_514: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__25_n_0\,
      I1 => \g0_b2__26_n_0\,
      O => ARG_i_514_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_515: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__19_n_0\,
      I1 => \g0_b2__20_n_0\,
      O => ARG_i_515_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_516: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__21_n_0\,
      I1 => \g0_b2__22_n_0\,
      O => ARG_i_516_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_517: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__15_n_0\,
      I1 => \g0_b2__16_n_0\,
      O => ARG_i_517_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_518: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__17_n_0\,
      I1 => \g0_b2__18_n_0\,
      O => ARG_i_518_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_519: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__43_n_0\,
      I1 => \g0_b2__44_n_0\,
      O => ARG_i_519_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_52: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_117_n_0,
      I1 => ARG_i_118_n_0,
      O => ARG_i_52_n_0,
      S => \^input_counter_reg[5]_0\(2)
    );
ARG_i_520: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__45_n_0\,
      I1 => \g0_b2__46_n_0\,
      O => ARG_i_520_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_521: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__39_n_0\,
      I1 => \g0_b2__40_n_0\,
      O => ARG_i_521_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_522: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__41_n_0\,
      I1 => \g0_b2__42_n_0\,
      O => ARG_i_522_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_523: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__35_n_0\,
      I1 => \g0_b2__36_n_0\,
      O => ARG_i_523_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_524: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__37_n_0\,
      I1 => \g0_b2__38_n_0\,
      O => ARG_i_524_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_525: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__31_n_0\,
      I1 => \g0_b2__32_n_0\,
      O => ARG_i_525_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_526: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__33_n_0\,
      I1 => \g0_b2__34_n_0\,
      O => ARG_i_526_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_527: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__59_n_0\,
      I1 => \g0_b2__60_n_0\,
      O => ARG_i_527_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_528: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__61_n_0\,
      I1 => \g0_b2__62_n_0\,
      O => ARG_i_528_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_529: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__55_n_0\,
      I1 => \g0_b2__56_n_0\,
      O => ARG_i_529_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_53: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => ARG_i_119_n_0,
      I1 => ARG_i_78_n_0,
      I2 => ARG_i_120_n_0,
      I3 => \^input_counter_reg[5]_0\(3),
      I4 => ARG_i_121_n_0,
      I5 => ARG_i_101_n_0,
      O => ARG_i_53_n_0
    );
ARG_i_530: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__57_n_0\,
      I1 => \g0_b2__58_n_0\,
      O => ARG_i_530_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_531: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__51_n_0\,
      I1 => \g0_b2__52_n_0\,
      O => ARG_i_531_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_532: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__53_n_0\,
      I1 => \g0_b2__54_n_0\,
      O => ARG_i_532_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_533: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__47_n_0\,
      I1 => \g0_b2__48_n_0\,
      O => ARG_i_533_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_534: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__49_n_0\,
      I1 => \g0_b2__50_n_0\,
      O => ARG_i_534_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_535: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__69_n_0\,
      I1 => \g0_b2__70_n_0\,
      O => ARG_i_535_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_536: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__67_n_0\,
      I1 => \g0_b2__68_n_0\,
      O => ARG_i_536_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_537: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__65_n_0\,
      I1 => \g0_b2__66_n_0\,
      O => ARG_i_537_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_538: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__63_n_0\,
      I1 => \g0_b2__64_n_0\,
      O => ARG_i_538_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_539: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__77_n_0\,
      I1 => \g0_b2__78_n_0\,
      O => ARG_i_539_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_54: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => ARG_i_122_n_0,
      I1 => \^input_counter_reg[5]_0\(2),
      I2 => ARG_i_123_n_0,
      I3 => layer_idx(1),
      I4 => layer_idx(0),
      I5 => \weight_rom_inst/weights_l4[0,0]\(2),
      O => ARG_i_54_n_0
    );
ARG_i_540: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__75_n_0\,
      I1 => \g0_b2__76_n_0\,
      O => ARG_i_540_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_541: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__73_n_0\,
      I1 => \g0_b2__74_n_0\,
      O => ARG_i_541_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_542: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__71_n_0\,
      I1 => \g0_b2__72_n_0\,
      O => ARG_i_542_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_543: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__85_n_0\,
      I1 => \g0_b2__86_n_0\,
      O => ARG_i_543_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_544: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__83_n_0\,
      I1 => \g0_b2__84_n_0\,
      O => ARG_i_544_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_545: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__81_n_0\,
      I1 => \g0_b2__82_n_0\,
      O => ARG_i_545_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_546: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__79_n_0\,
      I1 => \g0_b2__80_n_0\,
      O => ARG_i_546_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_547: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__93_n_0\,
      I1 => \g0_b2__94_n_0\,
      O => ARG_i_547_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_548: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__91_n_0\,
      I1 => \g0_b2__92_n_0\,
      O => ARG_i_548_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_549: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__89_n_0\,
      I1 => \g0_b2__90_n_0\,
      O => ARG_i_549_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_55: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_125_n_0,
      I1 => ARG_i_126_n_0,
      O => ARG_i_55_n_0,
      S => \^input_counter_reg[5]_0\(2)
    );
ARG_i_550: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__87_n_0\,
      I1 => \g0_b2__88_n_0\,
      O => ARG_i_550_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_551: unisim.vcomponents.LUT6
    generic map(
      INIT => X"243385454F25F5ED"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[2]_rep__0_0\,
      O => ARG_i_551_n_0
    );
ARG_i_552: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFA99E728DB22CD"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_552_n_0
    );
ARG_i_553: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5B6B5B1E429F4A2F"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_553_n_0
    );
ARG_i_554: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6DB1D12E153E4B66"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_554_n_0
    );
ARG_i_555: unisim.vcomponents.LUT6
    generic map(
      INIT => X"79A815A222C06F13"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_555_n_0
    );
ARG_i_556: unisim.vcomponents.LUT6
    generic map(
      INIT => X"357D5D6941C9DD7E"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_556_n_0
    );
ARG_i_557: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2DBB2B3A128FAD47"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_557_n_0
    );
ARG_i_558: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFF91EE129578916"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_558_n_0
    );
ARG_i_559: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__11_n_0\,
      I1 => \g0_b1__12_n_0\,
      O => ARG_i_559_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_56: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_127_n_0,
      I1 => ARG_i_128_n_0,
      O => ARG_i_56_n_0,
      S => \^input_counter_reg[5]_0\(2)
    );
ARG_i_560: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__13_n_0\,
      I1 => \g0_b1__14_n_0\,
      O => ARG_i_560_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_561: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__7_n_0\,
      I1 => \g0_b1__8_n_0\,
      O => ARG_i_561_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_562: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__9_n_0\,
      I1 => \g0_b1__10_n_0\,
      O => ARG_i_562_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_563: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__3_n_0\,
      I1 => \g0_b1__4_n_0\,
      O => ARG_i_563_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_564: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__5_n_0\,
      I1 => \g0_b1__6_n_0\,
      O => ARG_i_564_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_565: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b1_n_0,
      I1 => \g0_b1__0_n_0\,
      O => ARG_i_565_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_566: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__1_n_0\,
      I1 => \g0_b1__2_n_0\,
      O => ARG_i_566_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_567: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__27_n_0\,
      I1 => \g0_b1__28_n_0\,
      O => ARG_i_567_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_568: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__29_n_0\,
      I1 => \g0_b1__30_n_0\,
      O => ARG_i_568_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_569: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__23_n_0\,
      I1 => \g0_b1__24_n_0\,
      O => ARG_i_569_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_57: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => ARG_i_129_n_0,
      I1 => ARG_i_78_n_0,
      I2 => ARG_i_130_n_0,
      I3 => \^input_counter_reg[5]_0\(3),
      I4 => ARG_i_131_n_0,
      I5 => ARG_i_101_n_0,
      O => ARG_i_57_n_0
    );
ARG_i_570: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__25_n_0\,
      I1 => \g0_b1__26_n_0\,
      O => ARG_i_570_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_571: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__19_n_0\,
      I1 => \g0_b1__20_n_0\,
      O => ARG_i_571_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_572: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__21_n_0\,
      I1 => \g0_b1__22_n_0\,
      O => ARG_i_572_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_573: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__15_n_0\,
      I1 => \g0_b1__16_n_0\,
      O => ARG_i_573_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_574: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__17_n_0\,
      I1 => \g0_b1__18_n_0\,
      O => ARG_i_574_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_575: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__43_n_0\,
      I1 => \g0_b1__44_n_0\,
      O => ARG_i_575_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_576: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__45_n_0\,
      I1 => \g0_b1__46_n_0\,
      O => ARG_i_576_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_577: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__39_n_0\,
      I1 => \g0_b1__40_n_0\,
      O => ARG_i_577_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_578: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__41_n_0\,
      I1 => \g0_b1__42_n_0\,
      O => ARG_i_578_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_579: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__35_n_0\,
      I1 => \g0_b1__36_n_0\,
      O => ARG_i_579_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_58: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => ARG_i_132_n_0,
      I1 => \^input_counter_reg[5]_0\(2),
      I2 => ARG_i_133_n_0,
      I3 => layer_idx(1),
      I4 => layer_idx(0),
      I5 => \weight_rom_inst/weights_l4[0,0]\(1),
      O => ARG_i_58_n_0
    );
ARG_i_580: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__37_n_0\,
      I1 => \g0_b1__38_n_0\,
      O => ARG_i_580_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_581: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__31_n_0\,
      I1 => \g0_b1__32_n_0\,
      O => ARG_i_581_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_582: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__33_n_0\,
      I1 => \g0_b1__34_n_0\,
      O => ARG_i_582_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_583: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__59_n_0\,
      I1 => \g0_b1__60_n_0\,
      O => ARG_i_583_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_584: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__61_n_0\,
      I1 => \g0_b1__62_n_0\,
      O => ARG_i_584_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_585: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__55_n_0\,
      I1 => \g0_b1__56_n_0\,
      O => ARG_i_585_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_586: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__57_n_0\,
      I1 => \g0_b1__58_n_0\,
      O => ARG_i_586_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_587: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__51_n_0\,
      I1 => \g0_b1__52_n_0\,
      O => ARG_i_587_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_588: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__53_n_0\,
      I1 => \g0_b1__54_n_0\,
      O => ARG_i_588_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_589: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__47_n_0\,
      I1 => \g0_b1__48_n_0\,
      O => ARG_i_589_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_59: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_135_n_0,
      I1 => ARG_i_136_n_0,
      O => ARG_i_59_n_0,
      S => \^input_counter_reg[5]_0\(2)
    );
ARG_i_590: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__49_n_0\,
      I1 => \g0_b1__50_n_0\,
      O => ARG_i_590_n_0,
      S => \input_counter_reg[0]_rep__1_n_0\
    );
ARG_i_591: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__69_n_0\,
      I1 => \g0_b1__70_n_0\,
      O => ARG_i_591_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_592: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__67_n_0\,
      I1 => \g0_b1__68_n_0\,
      O => ARG_i_592_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_593: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__65_n_0\,
      I1 => \g0_b1__66_n_0\,
      O => ARG_i_593_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_594: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__63_n_0\,
      I1 => \g0_b1__64_n_0\,
      O => ARG_i_594_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_595: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__77_n_0\,
      I1 => \g0_b1__78_n_0\,
      O => ARG_i_595_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_596: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__75_n_0\,
      I1 => \g0_b1__76_n_0\,
      O => ARG_i_596_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_597: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__73_n_0\,
      I1 => \g0_b1__74_n_0\,
      O => ARG_i_597_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_598: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__71_n_0\,
      I1 => \g0_b1__72_n_0\,
      O => ARG_i_598_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_599: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__85_n_0\,
      I1 => \g0_b1__86_n_0\,
      O => ARG_i_599_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => ARG_i_51_n_0,
      I1 => \^input_counter_reg[5]_0\(3),
      I2 => ARG_i_52_n_0,
      I3 => ARG_i_44_n_0,
      I4 => ARG_i_53_n_0,
      I5 => ARG_i_54_n_0,
      O => B(2)
    );
ARG_i_60: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_137_n_0,
      I1 => ARG_i_138_n_0,
      O => ARG_i_60_n_0,
      S => \^input_counter_reg[5]_0\(2)
    );
ARG_i_600: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__83_n_0\,
      I1 => \g0_b1__84_n_0\,
      O => ARG_i_600_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_601: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__81_n_0\,
      I1 => \g0_b1__82_n_0\,
      O => ARG_i_601_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_602: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__79_n_0\,
      I1 => \g0_b1__80_n_0\,
      O => ARG_i_602_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_603: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__93_n_0\,
      I1 => \g0_b1__94_n_0\,
      O => ARG_i_603_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_604: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__91_n_0\,
      I1 => \g0_b1__92_n_0\,
      O => ARG_i_604_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_605: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__89_n_0\,
      I1 => \g0_b1__90_n_0\,
      O => ARG_i_605_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_606: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__87_n_0\,
      I1 => \g0_b1__88_n_0\,
      O => ARG_i_606_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_607: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B854F53000F3A1BA"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_607_n_0
    );
ARG_i_608: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24124112B6EF94B4"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_608_n_0
    );
ARG_i_609: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3EBDBEE43BB349F1"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_609_n_0
    );
ARG_i_61: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => ARG_i_139_n_0,
      I1 => ARG_i_78_n_0,
      I2 => ARG_i_140_n_0,
      I3 => \^input_counter_reg[5]_0\(3),
      I4 => ARG_i_141_n_0,
      I5 => ARG_i_101_n_0,
      O => ARG_i_61_n_0
    );
ARG_i_610: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D05E5A502E9169B3"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_610_n_0
    );
ARG_i_611: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B9C9327CD2658119"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_611_n_0
    );
ARG_i_612: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8491A6645ED5FBD"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[2]_rep__0_0\,
      O => ARG_i_612_n_0
    );
ARG_i_613: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEE9A61779A16C24"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_613_n_0
    );
ARG_i_614: unisim.vcomponents.LUT6
    generic map(
      INIT => X"075122E64AC5171D"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_614_n_0
    );
ARG_i_615: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__11_n_0\,
      I1 => \g0_b0__12_n_0\,
      O => ARG_i_615_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_616: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__13_n_0\,
      I1 => \g0_b0__14_n_0\,
      O => ARG_i_616_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_617: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__7_n_0\,
      I1 => \g0_b0__8_n_0\,
      O => ARG_i_617_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_618: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__9_n_0\,
      I1 => \g0_b0__10_n_0\,
      O => ARG_i_618_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_619: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__3_n_0\,
      I1 => \g0_b0__4_n_0\,
      O => ARG_i_619_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_62: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => ARG_i_142_n_0,
      I1 => \^input_counter_reg[5]_0\(2),
      I2 => ARG_i_143_n_0,
      I3 => layer_idx(1),
      I4 => layer_idx(0),
      I5 => \weight_rom_inst/weights_l4[0,0]\(0),
      O => ARG_i_62_n_0
    );
ARG_i_620: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__5_n_0\,
      I1 => \g0_b0__6_n_0\,
      O => ARG_i_620_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_621: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b0_n_0,
      I1 => \g0_b0__0_n_0\,
      O => ARG_i_621_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_622: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__1_n_0\,
      I1 => \g0_b0__2_n_0\,
      O => ARG_i_622_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_623: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__27_n_0\,
      I1 => \g0_b0__28_n_0\,
      O => ARG_i_623_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_624: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__29_n_0\,
      I1 => \g0_b0__30_n_0\,
      O => ARG_i_624_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_625: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__23_n_0\,
      I1 => \g0_b0__24_n_0\,
      O => ARG_i_625_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_626: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__25_n_0\,
      I1 => \g0_b0__26_n_0\,
      O => ARG_i_626_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_627: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__19_n_0\,
      I1 => \g0_b0__20_n_0\,
      O => ARG_i_627_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_628: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__21_n_0\,
      I1 => \g0_b0__22_n_0\,
      O => ARG_i_628_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_629: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__15_n_0\,
      I1 => \g0_b0__16_n_0\,
      O => ARG_i_629_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_63: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => layer_idx(1),
      I1 => layer_idx(0),
      I2 => \^layer_counter_reg[2]_0\(0),
      O => \layer_counter_reg[1]_0\
    );
ARG_i_630: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__17_n_0\,
      I1 => \g0_b0__18_n_0\,
      O => ARG_i_630_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_631: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__43_n_0\,
      I1 => \g0_b0__44_n_0\,
      O => ARG_i_631_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_632: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__45_n_0\,
      I1 => \g0_b0__46_n_0\,
      O => ARG_i_632_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_633: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__39_n_0\,
      I1 => \g0_b0__40_n_0\,
      O => ARG_i_633_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_634: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__41_n_0\,
      I1 => \g0_b0__42_n_0\,
      O => ARG_i_634_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_635: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__35_n_0\,
      I1 => \g0_b0__36_n_0\,
      O => ARG_i_635_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_636: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__37_n_0\,
      I1 => \g0_b0__38_n_0\,
      O => ARG_i_636_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_637: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__31_n_0\,
      I1 => \g0_b0__32_n_0\,
      O => ARG_i_637_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_638: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__33_n_0\,
      I1 => \g0_b0__34_n_0\,
      O => ARG_i_638_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_639: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__59_n_0\,
      I1 => \g0_b0__60_n_0\,
      O => ARG_i_639_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_64: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F9FFFF00F90000"
    )
        port map (
      I0 => \^i_wr_addr\(0),
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \^neuron_counter_reg[1]_rep__4_0\,
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => layer_idx(1),
      I5 => \g0_b6__63_n_0\,
      O => ARG_i_64_n_0
    );
ARG_i_640: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__61_n_0\,
      I1 => \g0_b0__62_n_0\,
      O => ARG_i_640_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_641: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__55_n_0\,
      I1 => \g0_b0__56_n_0\,
      O => ARG_i_641_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_642: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__57_n_0\,
      I1 => \g0_b0__58_n_0\,
      O => ARG_i_642_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_643: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__51_n_0\,
      I1 => \g0_b0__52_n_0\,
      O => ARG_i_643_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_644: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__53_n_0\,
      I1 => \g0_b0__54_n_0\,
      O => ARG_i_644_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_645: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__47_n_0\,
      I1 => \g0_b0__48_n_0\,
      O => ARG_i_645_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_646: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__49_n_0\,
      I1 => \g0_b0__50_n_0\,
      O => ARG_i_646_n_0,
      S => \input_counter_reg[0]_rep__2_n_0\
    );
ARG_i_647: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__69_n_0\,
      I1 => \g0_b0__70_n_0\,
      O => ARG_i_647_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_648: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__67_n_0\,
      I1 => \g0_b0__68_n_0\,
      O => ARG_i_648_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_649: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__65_n_0\,
      I1 => \g0_b0__66_n_0\,
      O => ARG_i_649_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_65: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7A71FFFF7A710000"
    )
        port map (
      I0 => \^i_wr_addr\(0),
      I1 => \^neuron_counter_reg[2]_rep__0_0\,
      I2 => \^neuron_counter_reg[1]_rep__4_0\,
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => layer_idx(1),
      I5 => \g0_b5__104_n_0\,
      O => ARG_i_65_n_0
    );
ARG_i_650: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__63_n_0\,
      I1 => \g0_b0__64_n_0\,
      O => ARG_i_650_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_651: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__77_n_0\,
      I1 => \g0_b0__78_n_0\,
      O => ARG_i_651_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_652: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__75_n_0\,
      I1 => \g0_b0__76_n_0\,
      O => ARG_i_652_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_653: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__73_n_0\,
      I1 => \g0_b0__74_n_0\,
      O => ARG_i_653_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_654: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__71_n_0\,
      I1 => \g0_b0__72_n_0\,
      O => ARG_i_654_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_655: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__85_n_0\,
      I1 => \g0_b0__86_n_0\,
      O => ARG_i_655_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_656: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__83_n_0\,
      I1 => \g0_b0__84_n_0\,
      O => ARG_i_656_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_657: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__81_n_0\,
      I1 => \g0_b0__82_n_0\,
      O => ARG_i_657_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_658: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__79_n_0\,
      I1 => \g0_b0__80_n_0\,
      O => ARG_i_658_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_659: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__93_n_0\,
      I1 => \g0_b0__94_n_0\,
      O => ARG_i_659_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_66: unisim.vcomponents.LUT6
    generic map(
      INIT => X"604FFFFF604F0000"
    )
        port map (
      I0 => \^neuron_counter_reg[2]_rep__0_0\,
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[1]_rep__4_0\,
      I4 => layer_idx(1),
      I5 => \g0_b4__104_n_0\,
      O => ARG_i_66_n_0
    );
ARG_i_660: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__91_n_0\,
      I1 => \g0_b0__92_n_0\,
      O => ARG_i_660_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_661: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__89_n_0\,
      I1 => \g0_b0__90_n_0\,
      O => ARG_i_661_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_662: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__87_n_0\,
      I1 => \g0_b0__88_n_0\,
      O => ARG_i_662_n_0,
      S => \input_counter_reg[0]_rep_n_0\
    );
ARG_i_663: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D374B57C35D30A9C"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_663_n_0
    );
ARG_i_664: unisim.vcomponents.LUT6
    generic map(
      INIT => X"346BBC421F696C9F"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_664_n_0
    );
ARG_i_665: unisim.vcomponents.LUT6
    generic map(
      INIT => X"274A0812A400EB13"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_665_n_0
    );
ARG_i_666: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC4EC7F8CCF3F86C"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[5]_0\(0),
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_666_n_0
    );
ARG_i_667: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F57AA3797FD9F88F"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_667_n_0
    );
ARG_i_668: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5CC4FCDA9643312A"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[2]_rep__0_0\,
      O => ARG_i_668_n_0
    );
ARG_i_669: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C340D735D9E6E2C8"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => \^neuron_counter_reg[2]_rep__0_0\,
      I5 => \^neuron_counter_reg[1]_rep__4_0\,
      O => ARG_i_669_n_0
    );
ARG_i_67: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A17FFFF0A170000"
    )
        port map (
      I0 => \^i_wr_addr\(0),
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => \neuron_counter_reg[1]_rep_n_0\,
      I4 => layer_idx(1),
      I5 => \g0_b3__104_n_0\,
      O => ARG_i_67_n_0
    );
ARG_i_670: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB7ED46E6BDF53EA"
    )
        port map (
      I0 => \^i_rd_addr\(1),
      I1 => \input_counter_reg[0]_rep__2_n_0\,
      I2 => \^i_wr_addr\(0),
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      I4 => \^neuron_counter_reg[1]_rep__4_0\,
      I5 => \^neuron_counter_reg[5]_0\(0),
      O => ARG_i_670_n_0
    );
ARG_i_68: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4642FFFF46420000"
    )
        port map (
      I0 => \^i_wr_addr\(0),
      I1 => \neuron_counter_reg[2]_rep_n_0\,
      I2 => \neuron_counter_reg[1]_rep_n_0\,
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => layer_idx(1),
      I5 => \g0_b2__104_n_0\,
      O => ARG_i_68_n_0
    );
ARG_i_69: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5FCFFFFA5FC0000"
    )
        port map (
      I0 => \^i_wr_addr\(0),
      I1 => \neuron_counter_reg[2]_rep_n_0\,
      I2 => \neuron_counter_reg[1]_rep_n_0\,
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => layer_idx(1),
      I5 => \g0_b1__104_n_0\,
      O => ARG_i_69_n_0
    );
ARG_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => ARG_i_55_n_0,
      I1 => \^input_counter_reg[5]_0\(3),
      I2 => ARG_i_56_n_0,
      I3 => ARG_i_44_n_0,
      I4 => ARG_i_57_n_0,
      I5 => ARG_i_58_n_0,
      O => B(1)
    );
ARG_i_70: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A82A28"
    )
        port map (
      I0 => layer_idx(1),
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \neuron_counter_reg[1]_rep_n_0\,
      I3 => \neuron_counter_reg[2]_rep_n_0\,
      I4 => \^i_wr_addr\(0),
      O => ARG_i_70_n_0
    );
ARG_i_71: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_145_n_0,
      I1 => ARG_i_146_n_0,
      O => ARG_i_71_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_72: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_147_n_0,
      I1 => ARG_i_148_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_149_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_150_n_0,
      O => ARG_i_72_n_0
    );
ARG_i_73: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_151_n_0,
      I1 => ARG_i_152_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_153_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_154_n_0,
      O => ARG_i_73_n_0
    );
ARG_i_74: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_155_n_0,
      I1 => ARG_i_156_n_0,
      O => ARG_i_74_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_75: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_157_n_0,
      I1 => ARG_i_158_n_0,
      O => ARG_i_75_n_0,
      S => fsm_input_addr(1)
    );
ARG_i_76: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_159_n_0,
      I1 => ARG_i_160_n_0,
      O => ARG_i_76_n_0,
      S => fsm_input_addr(1)
    );
ARG_i_77: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_161_n_0,
      I1 => ARG_i_162_n_0,
      O => ARG_i_77_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_78: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^input_counter_reg[5]_0\(0),
      I1 => \^input_counter_reg[5]_0\(3),
      I2 => \^input_counter_reg[5]_0\(2),
      O => ARG_i_78_n_0
    );
ARG_i_79: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_163_n_0,
      I1 => ARG_i_164_n_0,
      O => ARG_i_79_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => ARG_i_59_n_0,
      I1 => \^input_counter_reg[5]_0\(3),
      I2 => ARG_i_60_n_0,
      I3 => ARG_i_44_n_0,
      I4 => ARG_i_61_n_0,
      I5 => ARG_i_62_n_0,
      O => B(0)
    );
ARG_i_80: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_165_n_0,
      I1 => ARG_i_166_n_0,
      O => ARG_i_80_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_81: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_167_n_0,
      I1 => ARG_i_168_n_0,
      O => ARG_i_81_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_82: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_169_n_0,
      I1 => ARG_i_170_n_0,
      O => ARG_i_82_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_83: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_147_n_0,
      I1 => ARG_i_171_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_172_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_173_n_0,
      O => ARG_i_83_n_0
    );
ARG_i_84: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_174_n_0,
      I1 => ARG_i_152_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_175_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_176_n_0,
      O => ARG_i_84_n_0
    );
ARG_i_85: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_177_n_0,
      I1 => ARG_i_178_n_0,
      O => ARG_i_85_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_86: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_179_n_0,
      I1 => ARG_i_180_n_0,
      O => ARG_i_86_n_0,
      S => fsm_input_addr(1)
    );
ARG_i_87: unisim.vcomponents.MUXF8
     port map (
      I0 => ARG_i_181_n_0,
      I1 => ARG_i_182_n_0,
      O => ARG_i_87_n_0,
      S => fsm_input_addr(1)
    );
ARG_i_88: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_183_n_0,
      I1 => ARG_i_184_n_0,
      O => ARG_i_88_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_89: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_185_n_0,
      I1 => ARG_i_186_n_0,
      O => ARG_i_89_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_90: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_187_n_0,
      I1 => ARG_i_188_n_0,
      O => ARG_i_90_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_91: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_189_n_0,
      I1 => ARG_i_190_n_0,
      O => ARG_i_91_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_92: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_191_n_0,
      I1 => ARG_i_192_n_0,
      O => ARG_i_92_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_93: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_193_n_0,
      I1 => ARG_i_194_n_0,
      O => ARG_i_93_n_0,
      S => \^input_counter_reg[5]_0\(0)
    );
ARG_i_94: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_195_n_0,
      I1 => ARG_i_196_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_197_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_198_n_0,
      O => ARG_i_94_n_0
    );
ARG_i_95: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_199_n_0,
      I1 => ARG_i_200_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_201_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_202_n_0,
      O => ARG_i_95_n_0
    );
ARG_i_96: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_203_n_0,
      I1 => ARG_i_204_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_205_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_206_n_0,
      O => ARG_i_96_n_0
    );
ARG_i_97: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ARG_i_207_n_0,
      I1 => ARG_i_208_n_0,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => ARG_i_209_n_0,
      I4 => \^input_counter_reg[5]_0\(0),
      I5 => ARG_i_210_n_0,
      O => ARG_i_97_n_0
    );
ARG_i_98: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_211_n_0,
      I1 => ARG_i_212_n_0,
      O => ARG_i_98_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
ARG_i_99: unisim.vcomponents.MUXF7
     port map (
      I0 => ARG_i_213_n_0,
      I1 => ARG_i_214_n_0,
      O => ARG_i_99_n_0,
      S => \^input_counter_reg[5]_0\(1)
    );
\FSM_onehot_state[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => mac_enable,
      I1 => \FSM_onehot_state[10]_i_3_n_0\,
      I2 => \FSM_onehot_state[10]_i_4_n_0\,
      I3 => \FSM_onehot_state[10]_i_5_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => mac_clear,
      O => \FSM_onehot_state[10]_i_1_n_0\
    );
\FSM_onehot_state[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880888"
    )
        port map (
      I0 => \FSM_onehot_state[10]_i_6_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => layer_idx(0),
      I3 => layer_idx(1),
      I4 => \^layer_counter_reg[2]_0\(0),
      O => \FSM_onehot_state[10]_i_2_n_0\
    );
\FSM_onehot_state[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010110202001"
    )
        port map (
      I0 => \^input_counter_reg[5]_0\(2),
      I1 => \FSM_onehot_state[10]_i_7_n_0\,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => layer_idx(0),
      I4 => layer_idx(1),
      I5 => \^layer_counter_reg[2]_0\(0),
      O => \FSM_onehot_state[10]_i_3_n_0\
    );
\FSM_onehot_state[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \FSM_onehot_state_reg_n_0_[8]\,
      O => \FSM_onehot_state[10]_i_4_n_0\
    );
\FSM_onehot_state[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => ram_swap,
      I1 => \^q\(2),
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => mlp_start,
      O => \FSM_onehot_state[10]_i_5_n_0\
    );
\FSM_onehot_state[10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000200"
    )
        port map (
      I0 => \FSM_onehot_state[7]_i_2_n_0\,
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \FSM_onehot_state[7]_i_3_n_0\,
      I3 => \neuron_counter_reg[1]_rep__0_n_0\,
      I4 => \neuron_counter_reg[2]_rep_n_0\,
      O => \FSM_onehot_state[10]_i_6_n_0\
    );
\FSM_onehot_state[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7FFF7FFFFF7FFF"
    )
        port map (
      I0 => \^input_counter_reg[5]_0\(0),
      I1 => \^i_rd_addr\(1),
      I2 => \^i_rd_addr\(0),
      I3 => layer_idx(1),
      I4 => \^layer_counter_reg[2]_0\(0),
      I5 => \^input_counter_reg[5]_0\(3),
      O => \FSM_onehot_state[10]_i_7_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \compare_counter_reg_n_0_[1]\,
      I1 => \compare_counter_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[9]\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \^q\(2),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state[10]_i_6_n_0\,
      I4 => ram_swap,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => output_addr(2),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \^neuron_counter_reg[5]_0\(0),
      I3 => \FSM_onehot_state[7]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state[7]_i_3_n_0\,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8082818801000000"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(1),
      I1 => \^neuron_counter_reg[5]_0\(2),
      I2 => \^layer_counter_reg[2]_0\(0),
      I3 => layer_idx(1),
      I4 => layer_idx(0),
      I5 => \neuron_counter_reg[3]_rep__5_n_0\,
      O => \FSM_onehot_state[7]_i_2_n_0\
    );
\FSM_onehot_state[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^layer_counter_reg[2]_0\(0),
      I1 => layer_idx(1),
      I2 => layer_idx(0),
      O => \FSM_onehot_state[7]_i_3_n_0\
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \compare_counter_reg_n_0_[1]\,
      I2 => \compare_counter_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      O => \FSM_onehot_state[8]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      D => mac_enable,
      Q => \^q\(0),
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      D => \FSM_onehot_state[10]_i_2_n_0\,
      Q => ram_swap,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      D => \^q\(0),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      D => \^q\(1),
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      D => mac_clear,
      Q => mac_enable,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \^q\(2),
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => mac_clear,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      D => \FSM_onehot_state[8]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[8]\,
      Q => \FSM_onehot_state_reg_n_0_[9]\,
      R => \^sr\(0)
    );
accumulator_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => mac_enable,
      I1 => \^q\(0),
      O => \FSM_onehot_state_reg[3]_1\
    );
accumulator_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => mac_enable,
      I1 => \^q\(0),
      I2 => mac_clear,
      I3 => S_AXI_ARESETN,
      O => \FSM_onehot_state_reg[3]_0\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata_reg[1]\(1),
      I2 => \axi_rdata_reg[1]\(0),
      O => D(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^o_class_result\(0),
      I1 => \axi_rdata_reg[1]_0\(0),
      I2 => \axi_rdata_reg[1]\(3),
      I3 => \^q\(2),
      I4 => \axi_rdata_reg[1]\(2),
      I5 => \axi_rdata_reg[1]_2\(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata_reg[1]\(3),
      I2 => \axi_rdata_reg[1]_0\(1),
      I3 => \axi_rdata_reg[1]\(2),
      I4 => \^o_class_result\(1),
      I5 => \axi_rdata_reg[1]_1\,
      O => D(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \^q\(2),
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \axi_rdata_reg[1]\(2),
      I3 => \axi_rdata_reg[1]_2\(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\compare_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0C181C"
    )
        port map (
      I0 => \FSM_onehot_state[7]_i_1_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \compare_counter_reg_n_0_[0]\,
      I3 => \compare_counter_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \compare_counter[0]_i_1_n_0\
    );
\compare_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CC01DC0"
    )
        port map (
      I0 => \FSM_onehot_state[7]_i_1_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \compare_counter_reg_n_0_[0]\,
      I3 => \compare_counter_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \compare_counter[1]_i_1_n_0\
    );
\compare_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \compare_counter[0]_i_1_n_0\,
      Q => \compare_counter_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\compare_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \compare_counter[1]_i_1_n_0\,
      Q => \compare_counter_reg_n_0_[1]\,
      R => \^sr\(0)
    );
g0_b0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6443620B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => g0_b0_n_0
    );
\g0_b0__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6D6DBD5F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__0_n_0\
    );
\g0_b0__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B1F13CA2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__1_n_0\
    );
\g0_b0__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1703C9A3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__10_n_0\
    );
\g0_b0__100\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F62A77666ABD091E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__100_n_0\
    );
\g0_b0__101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2F1C21CEEF6A87C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__101_n_0\
    );
\g0_b0__102\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06C8EF08A12A6DC6"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__102_n_0\
    );
\g0_b0__103\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE7F2EA1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \weight_rom_inst/p_0_out\(0)
    );
\g0_b0__104\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C7D1097C6C33554"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__104_n_0\
    );
\g0_b0__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41DEF60A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__11_n_0\
    );
\g0_b0__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0D40A66"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__12_n_0\
    );
\g0_b0__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D48C76F0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__13_n_0\
    );
\g0_b0__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3EA44248"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__14_n_0\
    );
\g0_b0__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C6FDA4A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__15_n_0\
    );
\g0_b0__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE8E5EA"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__16_n_0\
    );
\g0_b0__17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"702EAA5B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__17_n_0\
    );
\g0_b0__18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1B9EE3F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__18_n_0\
    );
\g0_b0__19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E659828"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__19_n_0\
    );
\g0_b0__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4661C32C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__2_n_0\
    );
\g0_b0__20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14384428"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__20_n_0\
    );
\g0_b0__21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90D826A4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__21_n_0\
    );
\g0_b0__22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"52B93808"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__22_n_0\
    );
\g0_b0__23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6563B0F7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__23_n_0\
    );
\g0_b0__24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BCCA38F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__24_n_0\
    );
\g0_b0__25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ADEF9F2B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__25_n_0\
    );
\g0_b0__26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88F0629"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__26_n_0\
    );
\g0_b0__27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C74C662E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__27_n_0\
    );
\g0_b0__28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2CD0815D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__28_n_0\
    );
\g0_b0__29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CB53A3DC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__29_n_0\
    );
\g0_b0__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2CB924B4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__3_n_0\
    );
\g0_b0__30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D6424D84"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__30_n_0\
    );
\g0_b0__31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"67BF44F1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__31_n_0\
    );
\g0_b0__32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50596347"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__32_n_0\
    );
\g0_b0__33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3D2F555E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__33_n_0\
    );
\g0_b0__34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D03B2177"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__34_n_0\
    );
\g0_b0__35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1C38BA24"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__35_n_0\
    );
\g0_b0__36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C89B3ED"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__36_n_0\
    );
\g0_b0__37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8BB01C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__37_n_0\
    );
\g0_b0__38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"53F6D277"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__38_n_0\
    );
\g0_b0__39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"704CE0D5"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__39_n_0\
    );
\g0_b0__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A007E0F4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__4_n_0\
    );
\g0_b0__40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A508FDC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__40_n_0\
    );
\g0_b0__41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"604A1D6C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__41_n_0\
    );
\g0_b0__42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F73117E1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__42_n_0\
    );
\g0_b0__43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E50EF548"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__43_n_0\
    );
\g0_b0__44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0B07C24"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__44_n_0\
    );
\g0_b0__45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"095E069E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__45_n_0\
    );
\g0_b0__46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4C49EC2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__46_n_0\
    );
\g0_b0__47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EC09BF16"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__47_n_0\
    );
\g0_b0__48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DC2D0E17"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__48_n_0\
    );
\g0_b0__49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5918F398"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__49_n_0\
    );
\g0_b0__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"227F209D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__5_n_0\
    );
\g0_b0__50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCB1E15"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__50_n_0\
    );
\g0_b0__51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22E4F1B6"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__51_n_0\
    );
\g0_b0__52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F951958D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__52_n_0\
    );
\g0_b0__53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06BF7209"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__53_n_0\
    );
\g0_b0__54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D5E3217"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__54_n_0\
    );
\g0_b0__55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F168253E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__55_n_0\
    );
\g0_b0__56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF902A37"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__56_n_0\
    );
\g0_b0__57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E3FA8B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__57_n_0\
    );
\g0_b0__58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2EF9225"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__58_n_0\
    );
\g0_b0__59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3012B5A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__59_n_0\
    );
\g0_b0__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABF0FA5A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__6_n_0\
    );
\g0_b0__60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECC2EEDC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__60_n_0\
    );
\g0_b0__61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6BD613D8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__61_n_0\
    );
\g0_b0__62\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3E641F6"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__62_n_0\
    );
\g0_b0__63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E242C671E197DE32"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__63_n_0\
    );
\g0_b0__64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B9446E4006446984"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__64_n_0\
    );
\g0_b0__65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D92814BDBD4C05ED"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__65_n_0\
    );
\g0_b0__66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"211490FE5D0C8848"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__66_n_0\
    );
\g0_b0__67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFC2DC87CDDAA7B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__67_n_0\
    );
\g0_b0__68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE3E83E63B32A194"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__68_n_0\
    );
\g0_b0__69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28A1AD264A88F014"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__69_n_0\
    );
\g0_b0__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C853846B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__7_n_0\
    );
\g0_b0__70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F006E56647862526"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__70_n_0\
    );
\g0_b0__71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A78CD982776E983"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__71_n_0\
    );
\g0_b0__72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A78ACCD6786735C3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__72_n_0\
    );
\g0_b0__73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F1FBF4CDD308999"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__73_n_0\
    );
\g0_b0__74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"13807CFA9D1F1E51"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__74_n_0\
    );
\g0_b0__75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B6F4F87F80C1EF54"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__75_n_0\
    );
\g0_b0__76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"13105AAEF13A2B6C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__76_n_0\
    );
\g0_b0__77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B612D25071F9421C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__77_n_0\
    );
\g0_b0__78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFF220C8C192F7AB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__78_n_0\
    );
\g0_b0__79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"325E142549AC3631"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__79_n_0\
    );
\g0_b0__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"658848C8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__8_n_0\
    );
\g0_b0__80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03CEDFFF1F5D56F7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__80_n_0\
    );
\g0_b0__81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C73964287B0D4B7E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__81_n_0\
    );
\g0_b0__82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"76213B31F90FA075"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__82_n_0\
    );
\g0_b0__83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B604655CDC2B8AB8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__83_n_0\
    );
\g0_b0__84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDB965AA5C5DCFD1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__84_n_0\
    );
\g0_b0__85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEDEF39662EF340"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__85_n_0\
    );
\g0_b0__86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2DFADA5ED9D3B9EE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__86_n_0\
    );
\g0_b0__87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"16C3186FA981E579"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__87_n_0\
    );
\g0_b0__88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A7F908C9A10200D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__88_n_0\
    );
\g0_b0__89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"408E6CB70319309C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__89_n_0\
    );
\g0_b0__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70EB1881"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b0__9_n_0\
    );
\g0_b0__90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"90FEA154B3E8AD75"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__90_n_0\
    );
\g0_b0__91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB7EE1193A3CB461"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__91_n_0\
    );
\g0_b0__92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B7DE82E9E164DF9"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__92_n_0\
    );
\g0_b0__93\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C158C288B9B2F371"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__93_n_0\
    );
\g0_b0__94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8902D5339E3A3620"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__94_n_0\
    );
\g0_b0__95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E738EB93CC012BB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__95_n_0\
    );
\g0_b0__96\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A887F76C5938D43"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__96_n_0\
    );
\g0_b0__97\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E348DCF60C1F838"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__97_n_0\
    );
\g0_b0__98\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F597824828D5649"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__98_n_0\
    );
\g0_b0__99\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"055D534A826F15B8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b0__99_n_0\
    );
g0_b1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B80EE54"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => g0_b1_n_0
    );
\g0_b1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75441FA2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__0_n_0\
    );
\g0_b1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3A18A3E2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__1_n_0\
    );
\g0_b1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC198C37"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__10_n_0\
    );
\g0_b1__100\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75EE2C727B7A3727"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__100_n_0\
    );
\g0_b1__101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"97CF168D2BA1AE32"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__101_n_0\
    );
\g0_b1__102\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"382AAD74F7C41AEE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__102_n_0\
    );
\g0_b1__103\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"37DE9D35"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \weight_rom_inst/p_0_out\(1)
    );
\g0_b1__104\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E83D6985C664FE13"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__104_n_0\
    );
\g0_b1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EEE4D03"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__11_n_0\
    );
\g0_b1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0D736CF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__12_n_0\
    );
\g0_b1__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66DEE7CB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__13_n_0\
    );
\g0_b1__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFD55AB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__14_n_0\
    );
\g0_b1__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"469AA799"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__15_n_0\
    );
\g0_b1__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"53E86FFC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__16_n_0\
    );
\g0_b1__17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F39B00A4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__17_n_0\
    );
\g0_b1__18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A5E299AE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__18_n_0\
    );
\g0_b1__19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D4310E5E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__19_n_0\
    );
\g0_b1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80F2C688"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__2_n_0\
    );
\g0_b1__20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4BD57D3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__20_n_0\
    );
\g0_b1__21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C54A738D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__21_n_0\
    );
\g0_b1__22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3934FDD7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__22_n_0\
    );
\g0_b1__23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"589E0256"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__23_n_0\
    );
\g0_b1__24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FE296D0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__24_n_0\
    );
\g0_b1__25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"49893F05"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__25_n_0\
    );
\g0_b1__26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9CAA59A7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__26_n_0\
    );
\g0_b1__27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6F87D88"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__27_n_0\
    );
\g0_b1__28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E74AC216"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__28_n_0\
    );
\g0_b1__29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E47C067"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__29_n_0\
    );
\g0_b1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"43B3BFC4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__3_n_0\
    );
\g0_b1__30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CD35BD9E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__30_n_0\
    );
\g0_b1__31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"19E5CE2E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__31_n_0\
    );
\g0_b1__32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB94B0BC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__32_n_0\
    );
\g0_b1__33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1812AC1A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__33_n_0\
    );
\g0_b1__34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"39FBB45C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__34_n_0\
    );
\g0_b1__35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3544D778"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__35_n_0\
    );
\g0_b1__36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F793D7D1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__36_n_0\
    );
\g0_b1__37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3299F03F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__37_n_0\
    );
\g0_b1__38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3DD0556"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__38_n_0\
    );
\g0_b1__39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E71EF50"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__39_n_0\
    );
\g0_b1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F01C53D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__4_n_0\
    );
\g0_b1__40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AC420C5"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__40_n_0\
    );
\g0_b1__41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13FBD979"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__41_n_0\
    );
\g0_b1__42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B99DA490"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__42_n_0\
    );
\g0_b1__43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"154EF473"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__43_n_0\
    );
\g0_b1__44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8DEBD595"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__44_n_0\
    );
\g0_b1__45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B132877E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__45_n_0\
    );
\g0_b1__46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"242070FE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__46_n_0\
    );
\g0_b1__47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4732D19C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__47_n_0\
    );
\g0_b1__48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F1FE303"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__48_n_0\
    );
\g0_b1__49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"89DC85AB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__49_n_0\
    );
\g0_b1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C32F906C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__5_n_0\
    );
\g0_b1__50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF2F09B9"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__50_n_0\
    );
\g0_b1__51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8FCF63E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__51_n_0\
    );
\g0_b1__52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B8313D0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__52_n_0\
    );
\g0_b1__53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30A122C3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__53_n_0\
    );
\g0_b1__54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"828BAE9C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__54_n_0\
    );
\g0_b1__55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"36F42B7C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__55_n_0\
    );
\g0_b1__56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0098D844"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__56_n_0\
    );
\g0_b1__57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09CFE4F8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__57_n_0\
    );
\g0_b1__58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFC2687C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__58_n_0\
    );
\g0_b1__59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CF1BE3C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__59_n_0\
    );
\g0_b1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A97E0FB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__6_n_0\
    );
\g0_b1__60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"26049352"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__60_n_0\
    );
\g0_b1__61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F1C08E3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__61_n_0\
    );
\g0_b1__62\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6B2E9D1D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__62_n_0\
    );
\g0_b1__63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D9EFE70CCDC082B6"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__63_n_0\
    );
\g0_b1__64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8882E9FA4FDEF22F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__64_n_0\
    );
\g0_b1__65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C6AC4204537FDBF7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__65_n_0\
    );
\g0_b1__66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25EF6A5867A41DD7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__66_n_0\
    );
\g0_b1__67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2CF350B8A741CA17"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__67_n_0\
    );
\g0_b1__68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"94EAFF36A89AC357"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__68_n_0\
    );
\g0_b1__69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"26341FC1AC18D4CC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__69_n_0\
    );
\g0_b1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A1C6559B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__7_n_0\
    );
\g0_b1__70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"58AC2D1DED35D693"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__70_n_0\
    );
\g0_b1__71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A49F35783F8BD426"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__71_n_0\
    );
\g0_b1__72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6ED53622E8F37725"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__72_n_0\
    );
\g0_b1__73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C7C3D215F2A4FE0B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__73_n_0\
    );
\g0_b1__74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"970D4DFA685E8D6C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__74_n_0\
    );
\g0_b1__75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73514386880EE1BB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__75_n_0\
    );
\g0_b1__76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EE4C953CE1C3534"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__76_n_0\
    );
\g0_b1__77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEE52BB24BF9B59"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__77_n_0\
    );
\g0_b1__78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66DEDB3ABB1351B8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__78_n_0\
    );
\g0_b1__79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B842135460AA15"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__79_n_0\
    );
\g0_b1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DFCDF7C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__8_n_0\
    );
\g0_b1__80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C0B1B2CE1FE9B5E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__80_n_0\
    );
\g0_b1__81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D769CE0C3BD64728"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__81_n_0\
    );
\g0_b1__82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E343B79DB5A44E78"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__82_n_0\
    );
\g0_b1__83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07D9F30FBF600B7E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__83_n_0\
    );
\g0_b1__84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F498327CF8CC8ED1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__84_n_0\
    );
\g0_b1__85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42D2148C38A83CB3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__85_n_0\
    );
\g0_b1__86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A1C90E543CC35AFF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__86_n_0\
    );
\g0_b1__87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AE10145EC5B0CA1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__87_n_0\
    );
\g0_b1__88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EB9EFF8CCB1ACB9"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__88_n_0\
    );
\g0_b1__89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FA23E9931247617"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__89_n_0\
    );
\g0_b1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7BA9BF27"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b1__9_n_0\
    );
\g0_b1__90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"29862AF1EB27EC32"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__90_n_0\
    );
\g0_b1__91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3719A81C49F4791"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__91_n_0\
    );
\g0_b1__92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA5DA796CE09FFE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__92_n_0\
    );
\g0_b1__93\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FCB31C9844BBBC6"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__93_n_0\
    );
\g0_b1__94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A4D6D0F5BD8C97B1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__94_n_0\
    );
\g0_b1__95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"21F33B2D7DCB959C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__95_n_0\
    );
\g0_b1__96\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"351271A8DE47374E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__96_n_0\
    );
\g0_b1__97\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"61219D6CA4F001D4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__97_n_0\
    );
\g0_b1__98\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"276744C194A9C583"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__98_n_0\
    );
\g0_b1__99\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB7D1CE517AABE03"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b1__99_n_0\
    );
g0_b2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"132CCEC2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => g0_b2_n_0
    );
\g0_b2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"91F40A4A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__0_n_0\
    );
\g0_b2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2594A76"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__1_n_0\
    );
\g0_b2__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"746F16C4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__10_n_0\
    );
\g0_b2__100\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EFA7048773CB1EC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__100_n_0\
    );
\g0_b2__101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"89074718563AABA2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__101_n_0\
    );
\g0_b2__102\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A118A524AF5DBFD6"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__102_n_0\
    );
\g0_b2__103\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C1116AB5"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \weight_rom_inst/p_0_out\(2)
    );
\g0_b2__104\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"424C8E1086C2782C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__104_n_0\
    );
\g0_b2__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"94ABC309"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__11_n_0\
    );
\g0_b2__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9D909512"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__12_n_0\
    );
\g0_b2__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2539D724"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__13_n_0\
    );
\g0_b2__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9B636F94"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__14_n_0\
    );
\g0_b2__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3D1F8FBE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__15_n_0\
    );
\g0_b2__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ADE3625"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__16_n_0\
    );
\g0_b2__17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FBF2400"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__17_n_0\
    );
\g0_b2__18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6D6F9BBC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__18_n_0\
    );
\g0_b2__19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FBA2CD5"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__19_n_0\
    );
\g0_b2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D4E3D88"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__2_n_0\
    );
\g0_b2__20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F39D7BA6"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__20_n_0\
    );
\g0_b2__21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F44C948"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__21_n_0\
    );
\g0_b2__22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A4206B65"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__22_n_0\
    );
\g0_b2__23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"91BF8014"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__23_n_0\
    );
\g0_b2__24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48B20F07"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__24_n_0\
    );
\g0_b2__25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B5FA2D5E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__25_n_0\
    );
\g0_b2__26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04B9D8B1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__26_n_0\
    );
\g0_b2__27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C67E418"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__27_n_0\
    );
\g0_b2__28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B1C0569"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__28_n_0\
    );
\g0_b2__29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50933484"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__29_n_0\
    );
\g0_b2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A3A92438"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__3_n_0\
    );
\g0_b2__30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"330460FB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__30_n_0\
    );
\g0_b2__31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"25D036F2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__31_n_0\
    );
\g0_b2__32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"881E7F00"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__32_n_0\
    );
\g0_b2__33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EB8F29C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__33_n_0\
    );
\g0_b2__34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFB21433"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__34_n_0\
    );
\g0_b2__35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E9B69CB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__35_n_0\
    );
\g0_b2__36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAF92E5B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__36_n_0\
    );
\g0_b2__37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6375014"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__37_n_0\
    );
\g0_b2__38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7C09358C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__38_n_0\
    );
\g0_b2__39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D57686F3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__39_n_0\
    );
\g0_b2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"837BB657"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__4_n_0\
    );
\g0_b2__40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7011EBE4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__40_n_0\
    );
\g0_b2__41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48D8F75E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__41_n_0\
    );
\g0_b2__42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3949B16E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__42_n_0\
    );
\g0_b2__43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"142E9B00"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__43_n_0\
    );
\g0_b2__44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5BE0BCB3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__44_n_0\
    );
\g0_b2__45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06AF358E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__45_n_0\
    );
\g0_b2__46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06057FE3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__46_n_0\
    );
\g0_b2__47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C9C32AC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__47_n_0\
    );
\g0_b2__48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A71D7684"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__48_n_0\
    );
\g0_b2__49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20DF632E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__49_n_0\
    );
\g0_b2__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1AFEA4B0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__5_n_0\
    );
\g0_b2__50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4C637BA4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__50_n_0\
    );
\g0_b2__51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3A90CEEB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__51_n_0\
    );
\g0_b2__52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B6FF929D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__52_n_0\
    );
\g0_b2__53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CB59C1A7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__53_n_0\
    );
\g0_b2__54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE8B106A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__54_n_0\
    );
\g0_b2__55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FAC3F6F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__55_n_0\
    );
\g0_b2__56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"46B6450E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__56_n_0\
    );
\g0_b2__57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF746847"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__57_n_0\
    );
\g0_b2__58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"071E9DCC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__58_n_0\
    );
\g0_b2__59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5488EA37"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__59_n_0\
    );
\g0_b2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2E05A00F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__6_n_0\
    );
\g0_b2__60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8396A3AE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__60_n_0\
    );
\g0_b2__61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2EBE8B6D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__61_n_0\
    );
\g0_b2__62\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA12CD56"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__62_n_0\
    );
\g0_b2__63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3BEC6AB1E90D6DD4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__63_n_0\
    );
\g0_b2__64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"865A18636D734CC8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__64_n_0\
    );
\g0_b2__65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"48C93D5877101AE5"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__65_n_0\
    );
\g0_b2__66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8174CEF21BFDF1EE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__66_n_0\
    );
\g0_b2__67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40CE52B897EDBDE5"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__67_n_0\
    );
\g0_b2__68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"49E0B4089D849DB0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__68_n_0\
    );
\g0_b2__69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C036E9DFF6EEC868"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__69_n_0\
    );
\g0_b2__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"784421B9"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__7_n_0\
    );
\g0_b2__70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70074DA7F977814F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__70_n_0\
    );
\g0_b2__71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"457D9CDEA194695A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__71_n_0\
    );
\g0_b2__72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06E5C112773BF1AA"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__72_n_0\
    );
\g0_b2__73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"954902793D376F05"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__73_n_0\
    );
\g0_b2__74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA98D9D652BC1679"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__74_n_0\
    );
\g0_b2__75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E61F45403CE8E7FB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__75_n_0\
    );
\g0_b2__76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCF4FE170D76B3FB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__76_n_0\
    );
\g0_b2__77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C630B76CA57F9BF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__77_n_0\
    );
\g0_b2__78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DE7A2617221AC6DA"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__78_n_0\
    );
\g0_b2__79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6420FAE09B4BE1A0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__79_n_0\
    );
\g0_b2__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F90FE0D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__8_n_0\
    );
\g0_b2__80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"796A509C69D2403B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__80_n_0\
    );
\g0_b2__81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2C720988351D6060"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__81_n_0\
    );
\g0_b2__82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BC30DAD51334ACC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__82_n_0\
    );
\g0_b2__83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F9DE77F6F1F1121"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__83_n_0\
    );
\g0_b2__84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CA89E85C909DA12"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__84_n_0\
    );
\g0_b2__85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44E8652C9DF5C5D8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__85_n_0\
    );
\g0_b2__86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"356DB2FBCC2DA08E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__86_n_0\
    );
\g0_b2__87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F41A76B9C40E5E96"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__87_n_0\
    );
\g0_b2__88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB386F9671BDF0F4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__88_n_0\
    );
\g0_b2__89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"055A4F8773FE11A1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__89_n_0\
    );
\g0_b2__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2E3A49A2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b2__9_n_0\
    );
\g0_b2__90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956B33F8D4C53284"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__90_n_0\
    );
\g0_b2__91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F2E7B7D489FA555"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__91_n_0\
    );
\g0_b2__92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07620CAC22B3DA0F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__92_n_0\
    );
\g0_b2__93\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BDFEA74E3D2C641"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__93_n_0\
    );
\g0_b2__94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD010E3ADBA25464"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__94_n_0\
    );
\g0_b2__95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAE68137FEF2253F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__95_n_0\
    );
\g0_b2__96\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"656A08DB346314DF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__96_n_0\
    );
\g0_b2__97\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B12F876B9871E521"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__97_n_0\
    );
\g0_b2__98\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65EDE4ABE1D85D7C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__98_n_0\
    );
\g0_b2__99\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BAF6434F111535E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b2__99_n_0\
    );
g0_b3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C631CA11"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => g0_b3_n_0
    );
\g0_b3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08D5FFE4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__0_n_0\
    );
\g0_b3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A72CDFF8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__1_n_0\
    );
\g0_b3__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1583025C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__10_n_0\
    );
\g0_b3__100\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C6CAACAA52E4509"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__100_n_0\
    );
\g0_b3__101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFDD7D40EC3C03DF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__101_n_0\
    );
\g0_b3__102\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"082F5B4549B5BDC8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__102_n_0\
    );
\g0_b3__103\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CE621E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \weight_rom_inst/p_0_out\(3)
    );
\g0_b3__104\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"524D14DFFD554B26"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__104_n_0\
    );
\g0_b3__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F5E4F46"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__11_n_0\
    );
\g0_b3__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4971BB30"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__12_n_0\
    );
\g0_b3__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"919E6265"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__13_n_0\
    );
\g0_b3__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A93F1BA1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__14_n_0\
    );
\g0_b3__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0AF2DD1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__15_n_0\
    );
\g0_b3__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE3750D3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__16_n_0\
    );
\g0_b3__17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"041694B4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__17_n_0\
    );
\g0_b3__18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B402D37D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__18_n_0\
    );
\g0_b3__19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8328EED1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__19_n_0\
    );
\g0_b3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B2C95FF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__2_n_0\
    );
\g0_b3__20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"713825EE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__20_n_0\
    );
\g0_b3__21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C46592AB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__21_n_0\
    );
\g0_b3__22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A63ADE7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__22_n_0\
    );
\g0_b3__23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"72CF78A5"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__23_n_0\
    );
\g0_b3__24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69AC2665"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__24_n_0\
    );
\g0_b3__25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34C767AD"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__25_n_0\
    );
\g0_b3__26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7EA2B69A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__26_n_0\
    );
\g0_b3__27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B348383C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__27_n_0\
    );
\g0_b3__28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C262732D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__28_n_0\
    );
\g0_b3__29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B5B4536B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__29_n_0\
    );
\g0_b3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CE810544"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__3_n_0\
    );
\g0_b3__30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E9FCFD6"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__30_n_0\
    );
\g0_b3__31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"64BDC802"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__31_n_0\
    );
\g0_b3__32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5E137342"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__32_n_0\
    );
\g0_b3__33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AB3DF3E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__33_n_0\
    );
\g0_b3__34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DEC88519"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__34_n_0\
    );
\g0_b3__35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96B5C04B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__35_n_0\
    );
\g0_b3__36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B9BCF7DA"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__36_n_0\
    );
\g0_b3__37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCF3B612"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__37_n_0\
    );
\g0_b3__38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FF78212"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__38_n_0\
    );
\g0_b3__39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9EC9158E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__39_n_0\
    );
\g0_b3__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"280BE899"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__4_n_0\
    );
\g0_b3__40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5EED8EB5"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__40_n_0\
    );
\g0_b3__41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B11DCC94"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__41_n_0\
    );
\g0_b3__42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"104DD330"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__42_n_0\
    );
\g0_b3__43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4DAA24A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__43_n_0\
    );
\g0_b3__44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2F327E2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__44_n_0\
    );
\g0_b3__45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C08BEB76"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__45_n_0\
    );
\g0_b3__46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"29F7A022"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__46_n_0\
    );
\g0_b3__47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3D03F70F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__47_n_0\
    );
\g0_b3__48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8978B0B9"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__48_n_0\
    );
\g0_b3__49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A08CD0F4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__49_n_0\
    );
\g0_b3__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"39532BF3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__5_n_0\
    );
\g0_b3__50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DC39F220"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__50_n_0\
    );
\g0_b3__51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0BF67F45"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__51_n_0\
    );
\g0_b3__52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D47DFE20"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__52_n_0\
    );
\g0_b3__53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14571450"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__53_n_0\
    );
\g0_b3__54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8452F40F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__54_n_0\
    );
\g0_b3__55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2144614E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__55_n_0\
    );
\g0_b3__56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6E31615B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__56_n_0\
    );
\g0_b3__57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC34995B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__57_n_0\
    );
\g0_b3__58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"723C731A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__58_n_0\
    );
\g0_b3__59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF5714FA"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__59_n_0\
    );
\g0_b3__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D9DDBF88"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__6_n_0\
    );
\g0_b3__60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A25DB9FD"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__60_n_0\
    );
\g0_b3__61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"238AA910"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__61_n_0\
    );
\g0_b3__62\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"695E2631"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__62_n_0\
    );
\g0_b3__63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6D8E97F9EBBD06"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__63_n_0\
    );
\g0_b3__64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"901FA01BEDA88389"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__64_n_0\
    );
\g0_b3__65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6E78721AE2AACBD8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__65_n_0\
    );
\g0_b3__66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B65FED455E9D8D1E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__66_n_0\
    );
\g0_b3__67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A9B485CA6D659F0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__67_n_0\
    );
\g0_b3__68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F12C4FABE37C07B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__68_n_0\
    );
\g0_b3__69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F543A0D68DEE1449"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__69_n_0\
    );
\g0_b3__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6699FBDE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__7_n_0\
    );
\g0_b3__70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D67D03784C896E45"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__70_n_0\
    );
\g0_b3__71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3BDCF057F50E228"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__71_n_0\
    );
\g0_b3__72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8013E02AAEDA44D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__72_n_0\
    );
\g0_b3__73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9ECDE1672841F19B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__73_n_0\
    );
\g0_b3__74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06C737D17E76142A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__74_n_0\
    );
\g0_b3__75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B9967C0269558B7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__75_n_0\
    );
\g0_b3__76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0448D6E224CD5913"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__76_n_0\
    );
\g0_b3__77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C03BD5E438D46BB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__77_n_0\
    );
\g0_b3__78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B6D8A12B1FDC97B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__78_n_0\
    );
\g0_b3__79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2BCC58234E582B3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__79_n_0\
    );
\g0_b3__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D0DCAB4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__8_n_0\
    );
\g0_b3__80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB86FC14CC5DEBCE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__80_n_0\
    );
\g0_b3__81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D7E3E3DB770D6D74"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__81_n_0\
    );
\g0_b3__82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD95502EECD468F3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__82_n_0\
    );
\g0_b3__83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59F7942F4173AE37"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__83_n_0\
    );
\g0_b3__84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEACBE45555C16F6"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__84_n_0\
    );
\g0_b3__85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71B4EE23BE1AA577"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__85_n_0\
    );
\g0_b3__86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"919EC0255CA49511"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__86_n_0\
    );
\g0_b3__87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5B23E7F41F4DF137"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__87_n_0\
    );
\g0_b3__88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D98296D8D60663"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__88_n_0\
    );
\g0_b3__89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3ACF844E4007CD16"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__89_n_0\
    );
\g0_b3__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7327F60F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep_n_0\,
      I2 => output_addr(2),
      I3 => \neuron_counter_reg[3]_rep_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b3__9_n_0\
    );
\g0_b3__90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E559F445077F1E5D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__90_n_0\
    );
\g0_b3__91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1A4570114B27617B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__91_n_0\
    );
\g0_b3__92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"716ED131A1B01CA4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__92_n_0\
    );
\g0_b3__93\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E9C7EF52FC78C66"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__93_n_0\
    );
\g0_b3__94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF5193914BD83667"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__94_n_0\
    );
\g0_b3__95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB90B3037714B404"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__95_n_0\
    );
\g0_b3__96\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC960169A189DFD0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__96_n_0\
    );
\g0_b3__97\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"099F5916F08862D8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__97_n_0\
    );
\g0_b3__98\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"262E74F46346E722"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__98_n_0\
    );
\g0_b3__99\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"48B5B6383A16D4E6"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b3__99_n_0\
    );
g0_b4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"42D8F841"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => g0_b4_n_0
    );
\g0_b4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB3989DF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__0_n_0\
    );
\g0_b4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2CFE7DE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__1_n_0\
    );
\g0_b4__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2E38544D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__10_n_0\
    );
\g0_b4__100\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2CD80091A6381137"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__100_n_0\
    );
\g0_b4__101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9115F5891160A73A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__101_n_0\
    );
\g0_b4__102\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7956E35AFABDBD7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__102_n_0\
    );
\g0_b4__103\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5357BEE4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \weight_rom_inst/p_0_out\(4)
    );
\g0_b4__104\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A70E10CC92E40BB7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__104_n_0\
    );
\g0_b4__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8D8738FB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__11_n_0\
    );
\g0_b4__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A4459BE4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__12_n_0\
    );
\g0_b4__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F5B40F6"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__13_n_0\
    );
\g0_b4__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05CB40D3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__14_n_0\
    );
\g0_b4__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09A2C332"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__15_n_0\
    );
\g0_b4__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"596C843D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__16_n_0\
    );
\g0_b4__17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9ACA4C42"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__17_n_0\
    );
\g0_b4__18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"558AD01F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__18_n_0\
    );
\g0_b4__19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4429D431"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__19_n_0\
    );
\g0_b4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"73B97B53"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__2_n_0\
    );
\g0_b4__20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E08EAE4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__20_n_0\
    );
\g0_b4__21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EB36A947"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__21_n_0\
    );
\g0_b4__22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4174D71B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__22_n_0\
    );
\g0_b4__23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"672BABEF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__23_n_0\
    );
\g0_b4__24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE8BD984"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__24_n_0\
    );
\g0_b4__25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4D6CEE7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__25_n_0\
    );
\g0_b4__26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05F43A30"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__26_n_0\
    );
\g0_b4__27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B915B6EF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__27_n_0\
    );
\g0_b4__28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9E82618E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__28_n_0\
    );
\g0_b4__29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C27BF8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__29_n_0\
    );
\g0_b4__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B6C5884E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__3_n_0\
    );
\g0_b4__30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75F6FD1C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__30_n_0\
    );
\g0_b4__31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AD9FC68"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__31_n_0\
    );
\g0_b4__32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E23DB392"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__32_n_0\
    );
\g0_b4__33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99F20746"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__33_n_0\
    );
\g0_b4__34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1C098894"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__34_n_0\
    );
\g0_b4__35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"938E1BF1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__35_n_0\
    );
\g0_b4__36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555E092A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__36_n_0\
    );
\g0_b4__37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FDC6CD3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__37_n_0\
    );
\g0_b4__38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5624CA6D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__38_n_0\
    );
\g0_b4__39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2EF4B371"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__39_n_0\
    );
\g0_b4__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF7E3304"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__4_n_0\
    );
\g0_b4__40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"568CFDF7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__40_n_0\
    );
\g0_b4__41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8048D1E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__41_n_0\
    );
\g0_b4__42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20E919E1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__42_n_0\
    );
\g0_b4__43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E63E67A0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__43_n_0\
    );
\g0_b4__44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03E1A09C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__44_n_0\
    );
\g0_b4__45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2B390D46"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__45_n_0\
    );
\g0_b4__46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3C0D09D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__46_n_0\
    );
\g0_b4__47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"067905BE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__47_n_0\
    );
\g0_b4__48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD5C943C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__48_n_0\
    );
\g0_b4__49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BCA4DEBB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__49_n_0\
    );
\g0_b4__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"19A8D556"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__5_n_0\
    );
\g0_b4__50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D5ABA9C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__50_n_0\
    );
\g0_b4__51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3216BB66"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__51_n_0\
    );
\g0_b4__52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E7927EAF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__52_n_0\
    );
\g0_b4__53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7C623AB8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__53_n_0\
    );
\g0_b4__54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DE83A30A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__54_n_0\
    );
\g0_b4__55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3B6F83B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__55_n_0\
    );
\g0_b4__56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DE115A60"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__56_n_0\
    );
\g0_b4__57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"896E2AF2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__57_n_0\
    );
\g0_b4__58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"98DF9F86"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__58_n_0\
    );
\g0_b4__59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D4D1536"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__59_n_0\
    );
\g0_b4__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE95F019"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__6_n_0\
    );
\g0_b4__60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9D02E0EC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__60_n_0\
    );
\g0_b4__61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"208CA726"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__61_n_0\
    );
\g0_b4__62\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B3EBCB4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__1_n_0\,
      I2 => \neuron_counter_reg[2]_rep__3_n_0\,
      I3 => \neuron_counter_reg[3]_rep__1_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__62_n_0\
    );
\g0_b4__63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB653B459C3DBAD2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__63_n_0\
    );
\g0_b4__64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7505805DA1ECA60B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__64_n_0\
    );
\g0_b4__65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DEE7832683A757C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__65_n_0\
    );
\g0_b4__66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"695664CC0B0B6B57"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__66_n_0\
    );
\g0_b4__67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"022B4F9DCCD53080"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__67_n_0\
    );
\g0_b4__68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8DD8C06D22EDABA3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__68_n_0\
    );
\g0_b4__69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"873B215C5BA136A0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__69_n_0\
    );
\g0_b4__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA2328E7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__7_n_0\
    );
\g0_b4__70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A5CF3AC00D2647"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__70_n_0\
    );
\g0_b4__71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9AAFF1578C84652"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__71_n_0\
    );
\g0_b4__72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1602972FAF9E0E1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__72_n_0\
    );
\g0_b4__73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"31DC53AD1655CDD5"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__73_n_0\
    );
\g0_b4__74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"179E71726BF31184"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__74_n_0\
    );
\g0_b4__75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"095BFB3526984CB0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__75_n_0\
    );
\g0_b4__76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC5CDFC2197F28E9"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__76_n_0\
    );
\g0_b4__77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4FBFB14CE29E14A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__77_n_0\
    );
\g0_b4__78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8ACC0395A1D3E623"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__78_n_0\
    );
\g0_b4__79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FD152B2E15B6DA"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__79_n_0\
    );
\g0_b4__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55DE9431"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__8_n_0\
    );
\g0_b4__80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7293F2D84EDD08CF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__80_n_0\
    );
\g0_b4__81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5B1BF888C4FA160"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__81_n_0\
    );
\g0_b4__82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DAA4F38AFAA66EAB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__82_n_0\
    );
\g0_b4__83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDE19936EE71E60C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__83_n_0\
    );
\g0_b4__84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ADAA3628F5D40E76"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__84_n_0\
    );
\g0_b4__85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D588E223B410219F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__85_n_0\
    );
\g0_b4__86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF82BFE4469AF22C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__86_n_0\
    );
\g0_b4__87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C901F0B8972F9284"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__87_n_0\
    );
\g0_b4__88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFDD35C25DE30E6E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__88_n_0\
    );
\g0_b4__89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6ABDD577CA777820"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__89_n_0\
    );
\g0_b4__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"130C00BB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__0_n_0\,
      I2 => \neuron_counter_reg[2]_rep__4_n_0\,
      I3 => \neuron_counter_reg[3]_rep__0_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b4__9_n_0\
    );
\g0_b4__90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"76FBB0F6F64B0F84"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__90_n_0\
    );
\g0_b4__91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAF2D923820F81FB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__91_n_0\
    );
\g0_b4__92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73BA90AD29324DAE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__92_n_0\
    );
\g0_b4__93\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CBE1E3C0034E4373"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__93_n_0\
    );
\g0_b4__94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07D1117B9014AF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__94_n_0\
    );
\g0_b4__95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEB1F142769696A3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__95_n_0\
    );
\g0_b4__96\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D008194D489B8FC2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__96_n_0\
    );
\g0_b4__97\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBD42952389A17C0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__97_n_0\
    );
\g0_b4__98\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"29CE57BF16A093A9"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__98_n_0\
    );
\g0_b4__99\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E35A67AAB26DE766"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b4__99_n_0\
    );
g0_b5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"527DF176"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => g0_b5_n_0
    );
\g0_b5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38CC9CEA"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__0_n_0\
    );
\g0_b5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60A8E4DF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__1_n_0\
    );
\g0_b5__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D9E6F16C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__10_n_0\
    );
\g0_b5__100\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CB9344605227E6C9"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__100_n_0\
    );
\g0_b5__101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FDF807E374CFEE4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__101_n_0\
    );
\g0_b5__102\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE7A1F7800EEC70E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__102_n_0\
    );
\g0_b5__103\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D450B3ED"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \weight_rom_inst/p_0_out\(5)
    );
\g0_b5__104\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"94556DEC239B9551"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__104_n_0\
    );
\g0_b5__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"29D1FC34"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__11_n_0\
    );
\g0_b5__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1B5D2FAC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__12_n_0\
    );
\g0_b5__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"37798422"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__13_n_0\
    );
\g0_b5__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F821F04"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__14_n_0\
    );
\g0_b5__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F67418F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__15_n_0\
    );
\g0_b5__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06CC1227"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__16_n_0\
    );
\g0_b5__17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0EA708"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__17_n_0\
    );
\g0_b5__18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6E488B24"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__18_n_0\
    );
\g0_b5__19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BF0209E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__19_n_0\
    );
\g0_b5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F3E5DDB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__2_n_0\
    );
\g0_b5__20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"29FFECDD"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__20_n_0\
    );
\g0_b5__21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"918FB2C5"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__21_n_0\
    );
\g0_b5__22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04DA3382"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__22_n_0\
    );
\g0_b5__23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CD2F81A8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__23_n_0\
    );
\g0_b5__24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BA9CE7B0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__24_n_0\
    );
\g0_b5__25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"97713C8E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__25_n_0\
    );
\g0_b5__26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"112C815F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__26_n_0\
    );
\g0_b5__27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEC8201B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__27_n_0\
    );
\g0_b5__28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF4BCFDA"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__28_n_0\
    );
\g0_b5__29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"736ACB68"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__29_n_0\
    );
\g0_b5__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9D5B70D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__3_n_0\
    );
\g0_b5__30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0FB8674"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__30_n_0\
    );
\g0_b5__31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C752436F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__31_n_0\
    );
\g0_b5__32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"64CDEE74"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__32_n_0\
    );
\g0_b5__33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BA1F95B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__33_n_0\
    );
\g0_b5__34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D6F43BF2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__34_n_0\
    );
\g0_b5__35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AE7E735"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__35_n_0\
    );
\g0_b5__36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07775EF8"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__36_n_0\
    );
\g0_b5__37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5E070C01"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__37_n_0\
    );
\g0_b5__38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F8D9EC3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__38_n_0\
    );
\g0_b5__39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78051A2F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__39_n_0\
    );
\g0_b5__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E7614C0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__4_n_0\
    );
\g0_b5__40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D8883A04"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__40_n_0\
    );
\g0_b5__41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9865BF36"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__41_n_0\
    );
\g0_b5__42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EDA36144"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__42_n_0\
    );
\g0_b5__43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA38A3EB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__43_n_0\
    );
\g0_b5__44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22EA0A2A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__44_n_0\
    );
\g0_b5__45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47555302"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__45_n_0\
    );
\g0_b5__46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CF3BA46"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__46_n_0\
    );
\g0_b5__47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"894A55E9"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__47_n_0\
    );
\g0_b5__48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"53A60929"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__48_n_0\
    );
\g0_b5__49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"92533A0C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__49_n_0\
    );
\g0_b5__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B951C3F5"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__5_n_0\
    );
\g0_b5__50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CBFC3490"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__50_n_0\
    );
\g0_b5__51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FCFF270"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__51_n_0\
    );
\g0_b5__52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D5C4611"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__52_n_0\
    );
\g0_b5__53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2E6CBC6F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__53_n_0\
    );
\g0_b5__54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDAD2986"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__54_n_0\
    );
\g0_b5__55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38039E86"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__55_n_0\
    );
\g0_b5__56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AB01919E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__56_n_0\
    );
\g0_b5__57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C896A9F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__57_n_0\
    );
\g0_b5__58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5361844B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__58_n_0\
    );
\g0_b5__59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4DD0041"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__59_n_0\
    );
\g0_b5__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A7E2852"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__6_n_0\
    );
\g0_b5__60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8D744B96"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__60_n_0\
    );
\g0_b5__61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F83A02BA"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__61_n_0\
    );
\g0_b5__62\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8D248C0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__62_n_0\
    );
\g0_b5__63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4698023C26181FAF"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__63_n_0\
    );
\g0_b5__64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8ECE1F738E3001FD"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__64_n_0\
    );
\g0_b5__65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DB530FCD1E559502"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__65_n_0\
    );
\g0_b5__66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2C19336B574A7B1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__66_n_0\
    );
\g0_b5__67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C752B66C972A262C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__67_n_0\
    );
\g0_b5__68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EAFB337F0D29A5C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__68_n_0\
    );
\g0_b5__69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6635DF2873FBBF57"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__69_n_0\
    );
\g0_b5__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4132367D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__7_n_0\
    );
\g0_b5__70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEC648BBA0CC8A3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__70_n_0\
    );
\g0_b5__71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7B6C11F08F6B0DEB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__71_n_0\
    );
\g0_b5__72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F70EC7212FA4C92E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__72_n_0\
    );
\g0_b5__73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6E75FEDADE679A45"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__73_n_0\
    );
\g0_b5__74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CB6C8B39D170CE0A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__74_n_0\
    );
\g0_b5__75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBC581B85B65F347"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__75_n_0\
    );
\g0_b5__76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C93D0D19FFBA76DD"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__76_n_0\
    );
\g0_b5__77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B7C440A216E3103"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__77_n_0\
    );
\g0_b5__78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"936B307A0A4E67B4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__78_n_0\
    );
\g0_b5__79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E847A43CDADCED9D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__79_n_0\
    );
\g0_b5__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"68A77E5F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__8_n_0\
    );
\g0_b5__80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAD8B5E0978678A4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__80_n_0\
    );
\g0_b5__81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2C9F4077F729230A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__81_n_0\
    );
\g0_b5__82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2877CE356D63BDC4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__82_n_0\
    );
\g0_b5__83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"492C64D8A680A9E3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__83_n_0\
    );
\g0_b5__84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF6343D31F3B7B82"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__84_n_0\
    );
\g0_b5__85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A723DD878B5AE85"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__85_n_0\
    );
\g0_b5__86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA29EB032074FA0B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__86_n_0\
    );
\g0_b5__87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A1789964920AF69"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__87_n_0\
    );
\g0_b5__88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B662FFBAAEB76A1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__88_n_0\
    );
\g0_b5__89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87A3ED59A9BF30F9"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__89_n_0\
    );
\g0_b5__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4CA6101B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b5__9_n_0\
    );
\g0_b5__90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"112A393810847A73"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__90_n_0\
    );
\g0_b5__91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1567023515D18B18"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__91_n_0\
    );
\g0_b5__92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D135F3BADECE606A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__92_n_0\
    );
\g0_b5__93\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"704E0C8BB8587131"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__93_n_0\
    );
\g0_b5__94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AE28FB89DAFE9B1"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__94_n_0\
    );
\g0_b5__95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"441E4E269F236B15"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__95_n_0\
    );
\g0_b5__96\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"610866F29F7C493D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__96_n_0\
    );
\g0_b5__97\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B43674FD163FC99E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__97_n_0\
    );
\g0_b5__98\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4F9A89319E1D97D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__98_n_0\
    );
\g0_b5__99\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D9236EF9DAEAAE25"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b5__99_n_0\
    );
g0_b6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"527DF056"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => g0_b6_n_0
    );
\g0_b6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60A8E4DE"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__0_n_0\
    );
\g0_b6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9D5B70C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__1_n_0\
    );
\g0_b6__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4752426F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__10_n_0\
    );
\g0_b6__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BA1F95A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__11_n_0\
    );
\g0_b6__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D6F439F2"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__12_n_0\
    );
\g0_b6__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1AE7E735"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__13_n_0\
    );
\g0_b6__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5E070C11"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__14_n_0\
    );
\g0_b6__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"58883A04"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__15_n_0\
    );
\g0_b6__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ADA36144"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__16_n_0\
    );
\g0_b6__17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90533A0C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__17_n_0\
    );
\g0_b6__18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3BCFF270"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__18_n_0\
    );
\g0_b6__19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC8D2986"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__19_n_0\
    );
\g0_b6__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"68A77E5D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__2_n_0\
    );
\g0_b6__20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38039E06"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__20_n_0\
    );
\g0_b6__21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AB01911E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__21_n_0\
    );
\g0_b6__22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"783A02BA"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__22_n_0\
    );
\g0_b6__23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"62280235AC381F8F"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__23_n_0\
    );
\g0_b6__24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9E0F177B8F3803DD"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__24_n_0\
    );
\g0_b6__25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DB6B2ADC0A1FD548"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__25_n_0\
    );
\g0_b6__26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0D5A0141F55A795"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__26_n_0\
    );
\g0_b6__27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"435A165C872822AC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__27_n_0\
    );
\g0_b6__28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EBFA077B0D39A58"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__28_n_0\
    );
\g0_b6__29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6631E15C73EBB653"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__29_n_0\
    );
\g0_b6__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"19552FAC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__3_n_0\
    );
\g0_b6__30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAD453BF80D6C67"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__30_n_0\
    );
\g0_b6__31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAC17501F684EEB"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__31_n_0\
    );
\g0_b6__32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E70A0722AFEDE92C"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__32_n_0\
    );
\g0_b6__33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EFDFEDE1E65DBD5"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__33_n_0\
    );
\g0_b6__34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F4C8379D972140A"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__34_n_0\
    );
\g0_b6__35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BD9C3B01765DAC3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__35_n_0\
    );
\g0_b6__36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DC7DDF8BBDFA70D9"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__36_n_0\
    );
\g0_b6__37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A7A4B1A216E210B"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__37_n_0\
    );
\g0_b6__38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B6B105A0A4BE7B4"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__2_n_0\,
      I2 => \neuron_counter_reg[2]_rep__2_n_0\,
      I3 => \neuron_counter_reg[3]_rep__2_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__38_n_0\
    );
\g0_b6__39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAC585283EDCA49D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__39_n_0\
    );
\g0_b6__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F821F04"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__4_n_0\
    );
\g0_b6__40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A9AB5C0D7CC688E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__40_n_0\
    );
\g0_b6__41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2DB740C6F72D2340"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__41_n_0\
    );
\g0_b6__42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8E7CA2F6DE6BCE3"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__42_n_0\
    );
\g0_b6__43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"596CA49EA6C1AB67"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__43_n_0\
    );
\g0_b6__44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ADE306C3151F3A86"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__44_n_0\
    );
\g0_b6__45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0332F5007C14AD97"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__45_n_0\
    );
\g0_b6__46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AEB032034FA09"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__46_n_0\
    );
\g0_b6__47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A0781944D24B76D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__47_n_0\
    );
\g0_b6__48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF42FF3FAEB2663"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__48_n_0\
    );
\g0_b6__49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AFED59E83778B0"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__49_n_0\
    );
\g0_b6__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0EA608"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__5_n_0\
    );
\g0_b6__50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"716B3034160F7A30"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__50_n_0\
    );
\g0_b6__51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1967523101558939"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__51_n_0\
    );
\g0_b6__52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F135D3B89ABE4CAA"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__52_n_0\
    );
\g0_b6__53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"734E2CC1A8586131"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__53_n_0\
    );
\g0_b6__54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A638399DD9D35B7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \neuron_counter_reg[1]_rep__3_n_0\,
      I2 => \neuron_counter_reg[2]_rep__1_n_0\,
      I3 => \neuron_counter_reg[3]_rep__3_n_0\,
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__54_n_0\
    );
\g0_b6__55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E49A5626DF37A315"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__55_n_0\
    );
\g0_b6__56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60082070893D0D38"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__56_n_0\
    );
\g0_b6__57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B6307D303E4B92"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__57_n_0\
    );
\g0_b6__58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24FE74B719E1D379"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__58_n_0\
    );
\g0_b6__59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9236EB8DAEAEE66"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__59_n_0\
    );
\g0_b6__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C488B24"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__6_n_0\
    );
\g0_b6__60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EADA0040962E470D"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__60_n_0\
    );
\g0_b6__61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FDFB128356CE7FC"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__61_n_0\
    );
\g0_b6__62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE7B0F7808EFD78E"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__62_n_0\
    );
\g0_b6__63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"964D2DEC02870733"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[2]_rep__0_0\,
      I3 => \^i_wr_addr\(0),
      I4 => \^neuron_counter_reg[5]_0\(1),
      I5 => \^neuron_counter_reg[5]_0\(2),
      O => \g0_b6__63_n_0\
    );
\g0_b6__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"29BFECDD"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__7_n_0\
    );
\g0_b6__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04D23382"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__8_n_0\
    );
\g0_b6__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF4ACFDA"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => output_addr(1),
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => output_addr(3),
      I4 => \^neuron_counter_reg[5]_0\(1),
      O => \g0_b6__9_n_0\
    );
\input_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \compare_counter_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => fsm_input_addr(0),
      I3 => mac_enable,
      O => \input_counter[0]_i_1_n_0\
    );
\input_counter[0]_rep_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \compare_counter_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => fsm_input_addr(0),
      I3 => mac_enable,
      O => \input_counter[0]_rep_i_1_n_0\
    );
\input_counter[0]_rep_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \compare_counter_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => fsm_input_addr(0),
      I3 => mac_enable,
      O => \input_counter[0]_rep_i_1__0_n_0\
    );
\input_counter[0]_rep_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \compare_counter_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => fsm_input_addr(0),
      I3 => mac_enable,
      O => \input_counter[0]_rep_i_1__1_n_0\
    );
\input_counter[0]_rep_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \compare_counter_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => fsm_input_addr(0),
      I3 => mac_enable,
      O => \input_counter[0]_rep_i_1__2_n_0\
    );
\input_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2828FF28FF282828"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \compare_counter_reg_n_0_[0]\,
      I2 => \compare_counter_reg_n_0_[1]\,
      I3 => mac_enable,
      I4 => fsm_input_addr(1),
      I5 => fsm_input_addr(0),
      O => \input_counter[1]_i_1_n_0\
    );
\input_counter[1]_rep_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2828FF28FF282828"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \compare_counter_reg_n_0_[0]\,
      I2 => \compare_counter_reg_n_0_[1]\,
      I3 => mac_enable,
      I4 => fsm_input_addr(1),
      I5 => fsm_input_addr(0),
      O => \input_counter[1]_rep_i_1_n_0\
    );
\input_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => mac_enable,
      I1 => fsm_input_addr(1),
      I2 => fsm_input_addr(0),
      I3 => \^input_counter_reg[5]_0\(0),
      O => \input_counter[2]_i_1_n_0\
    );
\input_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => mac_enable,
      I1 => \^i_rd_addr\(0),
      I2 => fsm_input_addr(1),
      I3 => \^input_counter_reg[5]_0\(0),
      I4 => \^input_counter_reg[5]_0\(1),
      O => \input_counter[3]_i_1_n_0\
    );
\input_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => mac_enable,
      I1 => \^input_counter_reg[5]_0\(1),
      I2 => \^input_counter_reg[5]_0\(0),
      I3 => \^i_rd_addr\(1),
      I4 => \^i_rd_addr\(0),
      I5 => \^input_counter_reg[5]_0\(2),
      O => \input_counter[4]_i_1_n_0\
    );
\input_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF444F4F4"
    )
        port map (
      I0 => \FSM_onehot_state[10]_i_3_n_0\,
      I1 => mac_enable,
      I2 => \FSM_onehot_state_reg_n_0_[9]\,
      I3 => \compare_counter_reg_n_0_[0]\,
      I4 => \compare_counter_reg_n_0_[1]\,
      I5 => \input_counter[5]_i_3_n_0\,
      O => \input_counter[5]_i_1_n_0\
    );
\input_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA2000"
    )
        port map (
      I0 => mac_enable,
      I1 => \input_counter[5]_i_4_n_0\,
      I2 => \^input_counter_reg[5]_0\(1),
      I3 => \^input_counter_reg[5]_0\(2),
      I4 => \^input_counter_reg[5]_0\(3),
      O => \input_counter[5]_i_2_n_0\
    );
\input_counter[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFA8"
    )
        port map (
      I0 => mlp_start,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \^q\(2),
      I3 => ram_swap,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => mac_clear,
      O => \input_counter[5]_i_3_n_0\
    );
\input_counter[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^i_rd_addr\(0),
      I1 => \^i_rd_addr\(1),
      I2 => \^input_counter_reg[5]_0\(0),
      O => \input_counter[5]_i_4_n_0\
    );
\input_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \input_counter[5]_i_1_n_0\,
      D => \input_counter[0]_i_1_n_0\,
      Q => fsm_input_addr(0),
      R => \^sr\(0)
    );
\input_counter_reg[0]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \input_counter[5]_i_1_n_0\,
      D => \input_counter[0]_rep_i_1_n_0\,
      Q => \input_counter_reg[0]_rep_n_0\,
      R => \^sr\(0)
    );
\input_counter_reg[0]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \input_counter[5]_i_1_n_0\,
      D => \input_counter[0]_rep_i_1__0_n_0\,
      Q => \^i_rd_addr\(0),
      R => \^sr\(0)
    );
\input_counter_reg[0]_rep__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \input_counter[5]_i_1_n_0\,
      D => \input_counter[0]_rep_i_1__1_n_0\,
      Q => \input_counter_reg[0]_rep__1_n_0\,
      R => \^sr\(0)
    );
\input_counter_reg[0]_rep__2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \input_counter[5]_i_1_n_0\,
      D => \input_counter[0]_rep_i_1__2_n_0\,
      Q => \input_counter_reg[0]_rep__2_n_0\,
      R => \^sr\(0)
    );
\input_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \input_counter[5]_i_1_n_0\,
      D => \input_counter[1]_i_1_n_0\,
      Q => fsm_input_addr(1),
      R => \^sr\(0)
    );
\input_counter_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \input_counter[5]_i_1_n_0\,
      D => \input_counter[1]_rep_i_1_n_0\,
      Q => \^i_rd_addr\(1),
      R => \^sr\(0)
    );
\input_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \input_counter[5]_i_1_n_0\,
      D => \input_counter[2]_i_1_n_0\,
      Q => \^input_counter_reg[5]_0\(0),
      R => \^sr\(0)
    );
\input_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \input_counter[5]_i_1_n_0\,
      D => \input_counter[3]_i_1_n_0\,
      Q => \^input_counter_reg[5]_0\(1),
      R => \^sr\(0)
    );
\input_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \input_counter[5]_i_1_n_0\,
      D => \input_counter[4]_i_1_n_0\,
      Q => \^input_counter_reg[5]_0\(2),
      R => \^sr\(0)
    );
\input_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \input_counter[5]_i_1_n_0\,
      D => \input_counter[5]_i_2_n_0\,
      Q => \^input_counter_reg[5]_0\(3),
      R => \^sr\(0)
    );
\layer_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0155AAAA"
    )
        port map (
      I0 => ram_swap,
      I1 => \^q\(2),
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => mlp_start,
      I4 => layer_idx(0),
      O => \layer_counter[0]_i_1_n_0\
    );
\layer_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4447777788888888"
    )
        port map (
      I0 => layer_idx(0),
      I1 => ram_swap,
      I2 => \^q\(2),
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => mlp_start,
      I5 => layer_idx(1),
      O => \layer_counter[1]_i_1_n_0\
    );
\layer_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => ram_swap,
      I1 => layer_idx(0),
      I2 => layer_idx(1),
      I3 => \FSM_onehot_state[10]_i_5_n_0\,
      I4 => \^layer_counter_reg[2]_0\(0),
      O => \layer_counter[2]_i_1_n_0\
    );
\layer_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \layer_counter[0]_i_1_n_0\,
      Q => layer_idx(0),
      R => \^sr\(0)
    );
\layer_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \layer_counter[1]_i_1_n_0\,
      Q => layer_idx(1),
      R => \^sr\(0)
    );
\layer_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \layer_counter[2]_i_1_n_0\,
      Q => \^layer_counter_reg[2]_0\(0),
      R => \^sr\(0)
    );
max_index0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => max_index0_carry_n_0,
      CO(2) => max_index0_carry_n_1,
      CO(1) => max_index0_carry_n_2,
      CO(0) => max_index0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_max_index0_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\max_index0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => max_index0_carry_n_0,
      CO(3) => \max_index0_carry__0_n_0\,
      CO(2) => \max_index0_carry__0_n_1\,
      CO(1) => \max_index0_carry__0_n_2\,
      CO(0) => \max_index0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \max_value[15]_i_4_0\(3 downto 0),
      O(3 downto 0) => \NLW_max_index0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \max_value[15]_i_4_1\(3 downto 0)
    );
\max_index[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \compare_counter_reg_n_0_[0]\,
      I2 => \max_value[15]_i_4_n_0\,
      I3 => \^o_class_result\(0),
      O => \max_index[0]_i_1_n_0\
    );
\max_index[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \compare_counter_reg_n_0_[1]\,
      I2 => \max_value[15]_i_4_n_0\,
      I3 => \^o_class_result\(1),
      O => \max_index[1]_i_1_n_0\
    );
\max_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \max_index[0]_i_1_n_0\,
      Q => \^o_class_result\(0),
      R => \^sr\(0)
    );
\max_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \max_index[1]_i_1_n_0\,
      Q => \^o_class_result\(1),
      R => \^sr\(0)
    );
\max_value[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => \max_value[15]_i_4_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[9]\,
      O => \max_value[15]_i_1_n_0\
    );
\max_value[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \max_value[15]_i_4_n_0\,
      I1 => S_AXI_ARESETN,
      O => \max_value[15]_i_2_n_0\
    );
\max_value[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAEAEE"
    )
        port map (
      I0 => \FSM_onehot_state[7]_i_1_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \max_index0_carry__0_n_0\,
      I3 => \compare_counter_reg_n_0_[0]\,
      I4 => \compare_counter_reg_n_0_[1]\,
      I5 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \max_value[15]_i_4_n_0\
    );
\max_value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[0]_0\,
      Q => max_value(0),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[10]_0\,
      Q => max_value(10),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[11]_0\,
      Q => max_value(11),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[12]_0\,
      Q => max_value(12),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[13]_0\,
      Q => max_value(13),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[14]_0\,
      Q => max_value(14),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[15]_0\,
      Q => max_value(15),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[1]_0\,
      Q => max_value(1),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[2]_0\,
      Q => max_value(2),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[3]_0\,
      Q => max_value(3),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[4]_0\,
      Q => max_value(4),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[5]_0\,
      Q => max_value(5),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[6]_0\,
      Q => max_value(6),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[7]_0\,
      Q => max_value(7),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[8]_0\,
      Q => max_value(8),
      R => \max_value[15]_i_1_n_0\
    );
\max_value_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \max_value[15]_i_2_n_0\,
      D => \max_value_reg[9]_0\,
      Q => max_value(9),
      R => \max_value[15]_i_1_n_0\
    );
\neuron_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[5]_0\(0),
      O => \neuron_counter[0]_i_1_n_0\
    );
\neuron_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => output_addr(1),
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \neuron_counter[1]_i_1_n_0\
    );
\neuron_counter[1]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => output_addr(1),
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \neuron_counter[1]_rep_i_1_n_0\
    );
\neuron_counter[1]_rep_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => output_addr(1),
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \neuron_counter[1]_rep_i_1__0_n_0\
    );
\neuron_counter[1]_rep_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => output_addr(1),
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \neuron_counter[1]_rep_i_1__1_n_0\
    );
\neuron_counter[1]_rep_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => output_addr(1),
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \neuron_counter[1]_rep_i_1__2_n_0\
    );
\neuron_counter[1]_rep_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => output_addr(1),
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \neuron_counter[1]_rep_i_1__3_n_0\
    );
\neuron_counter[1]_rep_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => output_addr(1),
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \neuron_counter[1]_rep_i_1__4_n_0\
    );
\neuron_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \neuron_counter_reg[1]_rep__0_n_0\,
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      O => \neuron_counter[2]_i_1_n_0\
    );
\neuron_counter[2]_rep_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \neuron_counter_reg[1]_rep__3_n_0\,
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      O => \neuron_counter[2]_rep_i_1_n_0\
    );
\neuron_counter[2]_rep_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \neuron_counter_reg[1]_rep__0_n_0\,
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      O => \neuron_counter[2]_rep_i_1__0_n_0\
    );
\neuron_counter[2]_rep_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \neuron_counter_reg[1]_rep__2_n_0\,
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      O => \neuron_counter[2]_rep_i_1__1_n_0\
    );
\neuron_counter[2]_rep_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \neuron_counter_reg[1]_rep__1_n_0\,
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      O => \neuron_counter[2]_rep_i_1__2_n_0\
    );
\neuron_counter[2]_rep_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \neuron_counter_reg[1]_rep__1_n_0\,
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      O => \neuron_counter[2]_rep_i_1__3_n_0\
    );
\neuron_counter[2]_rep_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[5]_0\(0),
      I2 => \neuron_counter_reg[1]_rep__0_n_0\,
      I3 => \^neuron_counter_reg[2]_rep__0_0\,
      O => \neuron_counter[2]_rep_i_1__4_n_0\
    );
\neuron_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[5]_0\(0),
      I3 => \neuron_counter_reg[2]_rep_n_0\,
      I4 => \neuron_counter_reg[3]_rep__5_n_0\,
      O => \neuron_counter[3]_i_1_n_0\
    );
\neuron_counter[3]_rep_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[5]_0\(0),
      I3 => \neuron_counter_reg[2]_rep_n_0\,
      I4 => \neuron_counter_reg[3]_rep__5_n_0\,
      O => \neuron_counter[3]_rep_i_1_n_0\
    );
\neuron_counter[3]_rep_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[5]_0\(0),
      I3 => \neuron_counter_reg[2]_rep_n_0\,
      I4 => \neuron_counter_reg[3]_rep__5_n_0\,
      O => \neuron_counter[3]_rep_i_1__0_n_0\
    );
\neuron_counter[3]_rep_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[5]_0\(0),
      I3 => \neuron_counter_reg[2]_rep_n_0\,
      I4 => \neuron_counter_reg[3]_rep__5_n_0\,
      O => \neuron_counter[3]_rep_i_1__1_n_0\
    );
\neuron_counter[3]_rep_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[5]_0\(0),
      I3 => \neuron_counter_reg[2]_rep_n_0\,
      I4 => \neuron_counter_reg[3]_rep__5_n_0\,
      O => \neuron_counter[3]_rep_i_1__2_n_0\
    );
\neuron_counter[3]_rep_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[5]_0\(0),
      I3 => \neuron_counter_reg[2]_rep_n_0\,
      I4 => \neuron_counter_reg[3]_rep__5_n_0\,
      O => \neuron_counter[3]_rep_i_1__3_n_0\
    );
\neuron_counter[3]_rep_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[5]_0\(0),
      I3 => \neuron_counter_reg[2]_rep_n_0\,
      I4 => \neuron_counter_reg[3]_rep__5_n_0\,
      O => \neuron_counter[3]_rep_i_1__4_n_0\
    );
\neuron_counter[3]_rep_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      I2 => \^neuron_counter_reg[5]_0\(0),
      I3 => \neuron_counter_reg[2]_rep_n_0\,
      I4 => \neuron_counter_reg[3]_rep__5_n_0\,
      O => \neuron_counter[3]_rep_i_1__5_n_0\
    );
\neuron_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \neuron_counter_reg[3]_rep__5_n_0\,
      I2 => \neuron_counter_reg[2]_rep_n_0\,
      I3 => \^neuron_counter_reg[5]_0\(0),
      I4 => output_addr(1),
      I5 => \^neuron_counter_reg[5]_0\(1),
      O => \neuron_counter[4]_i_1_n_0\
    );
\neuron_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8FFFFFFA8FFA8"
    )
        port map (
      I0 => mlp_start,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \^q\(2),
      I3 => ram_swap,
      I4 => \FSM_onehot_state[10]_i_6_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \__9\
    );
\neuron_counter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF400000000000"
    )
        port map (
      I0 => \neuron_counter[5]_i_3_n_0\,
      I1 => \neuron_counter_reg[2]_rep_n_0\,
      I2 => \neuron_counter_reg[3]_rep__5_n_0\,
      I3 => \^neuron_counter_reg[5]_0\(1),
      I4 => \^neuron_counter_reg[5]_0\(2),
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \neuron_counter[5]_i_2_n_0\
    );
\neuron_counter[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^neuron_counter_reg[5]_0\(0),
      I1 => \^neuron_counter_reg[1]_rep__4_0\,
      O => \neuron_counter[5]_i_3_n_0\
    );
\neuron_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[0]_i_1_n_0\,
      Q => \^neuron_counter_reg[5]_0\(0),
      R => \^sr\(0)
    );
\neuron_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[1]_i_1_n_0\,
      Q => output_addr(1),
      R => \^sr\(0)
    );
\neuron_counter_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[1]_rep_i_1_n_0\,
      Q => \neuron_counter_reg[1]_rep_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[1]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[1]_rep_i_1__0_n_0\,
      Q => \neuron_counter_reg[1]_rep__0_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[1]_rep__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[1]_rep_i_1__1_n_0\,
      Q => \neuron_counter_reg[1]_rep__1_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[1]_rep__2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[1]_rep_i_1__2_n_0\,
      Q => \neuron_counter_reg[1]_rep__2_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[1]_rep__3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[1]_rep_i_1__3_n_0\,
      Q => \neuron_counter_reg[1]_rep__3_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[1]_rep__4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[1]_rep_i_1__4_n_0\,
      Q => \^neuron_counter_reg[1]_rep__4_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[2]_i_1_n_0\,
      Q => output_addr(2),
      R => \^sr\(0)
    );
\neuron_counter_reg[2]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[2]_rep_i_1_n_0\,
      Q => \neuron_counter_reg[2]_rep_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[2]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[2]_rep_i_1__0_n_0\,
      Q => \^neuron_counter_reg[2]_rep__0_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[2]_rep__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[2]_rep_i_1__1_n_0\,
      Q => \neuron_counter_reg[2]_rep__1_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[2]_rep__2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[2]_rep_i_1__2_n_0\,
      Q => \neuron_counter_reg[2]_rep__2_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[2]_rep__3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[2]_rep_i_1__3_n_0\,
      Q => \neuron_counter_reg[2]_rep__3_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[2]_rep__4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[2]_rep_i_1__4_n_0\,
      Q => \neuron_counter_reg[2]_rep__4_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[3]_i_1_n_0\,
      Q => output_addr(3),
      R => \^sr\(0)
    );
\neuron_counter_reg[3]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[3]_rep_i_1_n_0\,
      Q => \neuron_counter_reg[3]_rep_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[3]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[3]_rep_i_1__0_n_0\,
      Q => \neuron_counter_reg[3]_rep__0_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[3]_rep__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[3]_rep_i_1__1_n_0\,
      Q => \neuron_counter_reg[3]_rep__1_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[3]_rep__2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[3]_rep_i_1__2_n_0\,
      Q => \neuron_counter_reg[3]_rep__2_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[3]_rep__3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[3]_rep_i_1__3_n_0\,
      Q => \neuron_counter_reg[3]_rep__3_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[3]_rep__4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[3]_rep_i_1__4_n_0\,
      Q => \^i_wr_addr\(0),
      R => \^sr\(0)
    );
\neuron_counter_reg[3]_rep__5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[3]_rep_i_1__5_n_0\,
      Q => \neuron_counter_reg[3]_rep__5_n_0\,
      R => \^sr\(0)
    );
\neuron_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[4]_i_1_n_0\,
      Q => \^neuron_counter_reg[5]_0\(1),
      R => \^sr\(0)
    );
\neuron_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \__9\,
      D => \neuron_counter[5]_i_2_n_0\,
      Q => \^neuron_counter_reg[5]_0\(2),
      R => \^sr\(0)
    );
ram_b_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001F1F1F00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \FSM_onehot_state[7]_i_3_n_0\,
      I3 => P(0),
      I4 => CO(0),
      I5 => ram_a_reg(0),
      O => i_wr_data(0)
    );
ram_b_reg_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1F1F1FFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \FSM_onehot_state[7]_i_3_n_0\,
      I3 => P(0),
      I4 => CO(0),
      I5 => ram_a_reg(0),
      O => \FSM_onehot_state_reg[0]_0\
    );
select_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ram_swap,
      I1 => select_reg,
      O => \FSM_onehot_state_reg[10]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mlp_system_mlp_axi_wrapper_0_0_MAC_Unit is
  port (
    P : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    accumulator_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_wr_data : out STD_LOGIC_VECTOR ( 14 downto 0 );
    accumulator_reg_1 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    accumulator_reg_2 : in STD_LOGIC;
    ram_b_reg : in STD_LOGIC;
    ARG_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    C : in STD_LOGIC_VECTOR ( 6 downto 0 );
    DUMMY_MUX_Z : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mlp_system_mlp_axi_wrapper_0_0_MAC_Unit : entity is "MAC_Unit";
end mlp_system_mlp_axi_wrapper_0_0_MAC_Unit;

architecture STRUCTURE of mlp_system_mlp_axi_wrapper_0_0_MAC_Unit is
  signal ARG_i_32_n_0 : STD_LOGIC;
  signal ARG_n_100 : STD_LOGIC;
  signal ARG_n_101 : STD_LOGIC;
  signal ARG_n_102 : STD_LOGIC;
  signal ARG_n_103 : STD_LOGIC;
  signal ARG_n_104 : STD_LOGIC;
  signal ARG_n_105 : STD_LOGIC;
  signal ARG_n_106 : STD_LOGIC;
  signal ARG_n_107 : STD_LOGIC;
  signal ARG_n_108 : STD_LOGIC;
  signal ARG_n_109 : STD_LOGIC;
  signal ARG_n_110 : STD_LOGIC;
  signal ARG_n_111 : STD_LOGIC;
  signal ARG_n_112 : STD_LOGIC;
  signal ARG_n_113 : STD_LOGIC;
  signal ARG_n_114 : STD_LOGIC;
  signal ARG_n_115 : STD_LOGIC;
  signal ARG_n_116 : STD_LOGIC;
  signal ARG_n_117 : STD_LOGIC;
  signal ARG_n_118 : STD_LOGIC;
  signal ARG_n_119 : STD_LOGIC;
  signal ARG_n_120 : STD_LOGIC;
  signal ARG_n_121 : STD_LOGIC;
  signal ARG_n_122 : STD_LOGIC;
  signal ARG_n_123 : STD_LOGIC;
  signal ARG_n_124 : STD_LOGIC;
  signal ARG_n_125 : STD_LOGIC;
  signal ARG_n_126 : STD_LOGIC;
  signal ARG_n_127 : STD_LOGIC;
  signal ARG_n_128 : STD_LOGIC;
  signal ARG_n_129 : STD_LOGIC;
  signal ARG_n_130 : STD_LOGIC;
  signal ARG_n_131 : STD_LOGIC;
  signal ARG_n_132 : STD_LOGIC;
  signal ARG_n_133 : STD_LOGIC;
  signal ARG_n_134 : STD_LOGIC;
  signal ARG_n_135 : STD_LOGIC;
  signal ARG_n_136 : STD_LOGIC;
  signal ARG_n_137 : STD_LOGIC;
  signal ARG_n_138 : STD_LOGIC;
  signal ARG_n_139 : STD_LOGIC;
  signal ARG_n_140 : STD_LOGIC;
  signal ARG_n_141 : STD_LOGIC;
  signal ARG_n_142 : STD_LOGIC;
  signal ARG_n_143 : STD_LOGIC;
  signal ARG_n_144 : STD_LOGIC;
  signal ARG_n_145 : STD_LOGIC;
  signal ARG_n_146 : STD_LOGIC;
  signal ARG_n_147 : STD_LOGIC;
  signal ARG_n_148 : STD_LOGIC;
  signal ARG_n_149 : STD_LOGIC;
  signal ARG_n_150 : STD_LOGIC;
  signal ARG_n_151 : STD_LOGIC;
  signal ARG_n_152 : STD_LOGIC;
  signal ARG_n_153 : STD_LOGIC;
  signal ARG_n_73 : STD_LOGIC;
  signal ARG_n_74 : STD_LOGIC;
  signal ARG_n_75 : STD_LOGIC;
  signal ARG_n_76 : STD_LOGIC;
  signal ARG_n_77 : STD_LOGIC;
  signal ARG_n_78 : STD_LOGIC;
  signal ARG_n_79 : STD_LOGIC;
  signal ARG_n_80 : STD_LOGIC;
  signal ARG_n_81 : STD_LOGIC;
  signal ARG_n_82 : STD_LOGIC;
  signal ARG_n_83 : STD_LOGIC;
  signal ARG_n_84 : STD_LOGIC;
  signal ARG_n_85 : STD_LOGIC;
  signal ARG_n_86 : STD_LOGIC;
  signal ARG_n_87 : STD_LOGIC;
  signal ARG_n_88 : STD_LOGIC;
  signal ARG_n_89 : STD_LOGIC;
  signal ARG_n_90 : STD_LOGIC;
  signal ARG_n_91 : STD_LOGIC;
  signal ARG_n_92 : STD_LOGIC;
  signal ARG_n_93 : STD_LOGIC;
  signal ARG_n_94 : STD_LOGIC;
  signal ARG_n_95 : STD_LOGIC;
  signal ARG_n_96 : STD_LOGIC;
  signal ARG_n_97 : STD_LOGIC;
  signal ARG_n_98 : STD_LOGIC;
  signal ARG_n_99 : STD_LOGIC;
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^p\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^accumulator_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal accumulator_reg_n_100 : STD_LOGIC;
  signal accumulator_reg_n_101 : STD_LOGIC;
  signal accumulator_reg_n_102 : STD_LOGIC;
  signal accumulator_reg_n_103 : STD_LOGIC;
  signal accumulator_reg_n_104 : STD_LOGIC;
  signal accumulator_reg_n_105 : STD_LOGIC;
  signal accumulator_reg_n_67 : STD_LOGIC;
  signal accumulator_reg_n_68 : STD_LOGIC;
  signal accumulator_reg_n_69 : STD_LOGIC;
  signal accumulator_reg_n_70 : STD_LOGIC;
  signal accumulator_reg_n_71 : STD_LOGIC;
  signal accumulator_reg_n_72 : STD_LOGIC;
  signal accumulator_reg_n_73 : STD_LOGIC;
  signal accumulator_reg_n_74 : STD_LOGIC;
  signal accumulator_reg_n_75 : STD_LOGIC;
  signal accumulator_reg_n_76 : STD_LOGIC;
  signal accumulator_reg_n_77 : STD_LOGIC;
  signal accumulator_reg_n_78 : STD_LOGIC;
  signal accumulator_reg_n_79 : STD_LOGIC;
  signal accumulator_reg_n_80 : STD_LOGIC;
  signal accumulator_reg_n_81 : STD_LOGIC;
  signal accumulator_reg_n_82 : STD_LOGIC;
  signal accumulator_reg_n_83 : STD_LOGIC;
  signal accumulator_reg_n_84 : STD_LOGIC;
  signal accumulator_reg_n_85 : STD_LOGIC;
  signal accumulator_reg_n_86 : STD_LOGIC;
  signal accumulator_reg_n_87 : STD_LOGIC;
  signal accumulator_reg_n_88 : STD_LOGIC;
  signal accumulator_reg_n_89 : STD_LOGIC;
  signal accumulator_reg_n_90 : STD_LOGIC;
  signal accumulator_reg_n_91 : STD_LOGIC;
  signal accumulator_reg_n_92 : STD_LOGIC;
  signal accumulator_reg_n_93 : STD_LOGIC;
  signal accumulator_reg_n_94 : STD_LOGIC;
  signal accumulator_reg_n_95 : STD_LOGIC;
  signal accumulator_reg_n_96 : STD_LOGIC;
  signal accumulator_reg_n_97 : STD_LOGIC;
  signal accumulator_reg_n_98 : STD_LOGIC;
  signal accumulator_reg_n_99 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \o_result1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \o_result1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \o_result1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \o_result1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \o_result1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \o_result1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \o_result1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \o_result1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \o_result1_carry__0_n_0\ : STD_LOGIC;
  signal \o_result1_carry__0_n_1\ : STD_LOGIC;
  signal \o_result1_carry__0_n_2\ : STD_LOGIC;
  signal \o_result1_carry__0_n_3\ : STD_LOGIC;
  signal \o_result1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \o_result1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \o_result1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \o_result1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \o_result1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \o_result1_carry__1_n_0\ : STD_LOGIC;
  signal \o_result1_carry__1_n_1\ : STD_LOGIC;
  signal \o_result1_carry__1_n_2\ : STD_LOGIC;
  signal \o_result1_carry__1_n_3\ : STD_LOGIC;
  signal o_result1_carry_i_1_n_0 : STD_LOGIC;
  signal o_result1_carry_i_2_n_0 : STD_LOGIC;
  signal o_result1_carry_i_3_n_0 : STD_LOGIC;
  signal o_result1_carry_i_4_n_0 : STD_LOGIC;
  signal o_result1_carry_i_5_n_0 : STD_LOGIC;
  signal o_result1_carry_i_6_n_0 : STD_LOGIC;
  signal o_result1_carry_i_7_n_0 : STD_LOGIC;
  signal o_result1_carry_i_8_n_0 : STD_LOGIC;
  signal o_result1_carry_n_0 : STD_LOGIC;
  signal o_result1_carry_n_1 : STD_LOGIC;
  signal o_result1_carry_n_2 : STD_LOGIC;
  signal o_result1_carry_n_3 : STD_LOGIC;
  signal \o_result1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \o_result1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \o_result1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \o_result1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \o_result1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \o_result1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \o_result1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \o_result1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \o_result1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \o_result1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \o_result1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \o_result1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal NLW_ARG_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_ARG_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_ARG_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_ARG_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_ARG_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_ARG_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_ARG_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_ARG_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_ARG_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ARG_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 33 );
  signal NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_accumulator_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_accumulator_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_accumulator_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal NLW_accumulator_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_o_result1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_result1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_result1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_result1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_o_result1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_result1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_result1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_result1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_result1_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_o_result1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ARG : label is "{SYNTH-11 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of accumulator_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of o_result1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_result1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_result1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_result1_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_result1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_result1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_result1_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_result1_inferred__0/i__carry__2\ : label is 11;
begin
  CO(0) <= \^co\(0);
  P(0) <= \^p\(0);
  accumulator_reg_0(0) <= \^accumulator_reg_0\(0);
ARG: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_ARG_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(7),
      B(16) => B(7),
      B(15) => B(7),
      B(14) => B(7),
      B(13) => B(7),
      B(12) => B(7),
      B(11) => B(7),
      B(10) => B(7),
      B(9) => B(7),
      B(8) => B(7),
      B(7 downto 0) => B(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_ARG_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => C(6),
      C(46) => C(6),
      C(45) => C(6),
      C(44) => C(6),
      C(43) => C(6),
      C(42) => C(6),
      C(41) => C(6),
      C(40) => C(6),
      C(39) => C(6),
      C(38) => C(6),
      C(37) => C(6),
      C(36) => C(6),
      C(35) => C(6),
      C(34) => C(6),
      C(33) => C(6),
      C(32) => C(6),
      C(31) => C(6),
      C(30) => C(6),
      C(29) => C(6),
      C(28) => C(6),
      C(27) => C(6),
      C(26) => C(6),
      C(25) => C(6),
      C(24) => C(6),
      C(23) => C(6),
      C(22) => C(6),
      C(21) => C(6),
      C(20) => C(6),
      C(19) => C(6),
      C(18) => C(6),
      C(17) => C(6),
      C(16) => C(6),
      C(15) => C(6),
      C(14 downto 8) => C(6 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_ARG_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_ARG_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '1',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => S_AXI_ACLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_ARG_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6) => '0',
      OPMODE(5) => DUMMY_MUX_Z(0),
      OPMODE(4) => DUMMY_MUX_Z(0),
      OPMODE(3) => '0',
      OPMODE(2) => ARG_i_32_n_0,
      OPMODE(1) => '0',
      OPMODE(0) => ARG_i_32_n_0,
      OVERFLOW => NLW_ARG_OVERFLOW_UNCONNECTED,
      P(47 downto 33) => NLW_ARG_P_UNCONNECTED(47 downto 33),
      P(32) => ARG_n_73,
      P(31) => ARG_n_74,
      P(30) => ARG_n_75,
      P(29) => ARG_n_76,
      P(28) => ARG_n_77,
      P(27) => ARG_n_78,
      P(26) => ARG_n_79,
      P(25) => ARG_n_80,
      P(24) => ARG_n_81,
      P(23) => ARG_n_82,
      P(22) => ARG_n_83,
      P(21) => ARG_n_84,
      P(20) => ARG_n_85,
      P(19) => ARG_n_86,
      P(18) => ARG_n_87,
      P(17) => ARG_n_88,
      P(16) => ARG_n_89,
      P(15) => ARG_n_90,
      P(14) => ARG_n_91,
      P(13) => ARG_n_92,
      P(12) => ARG_n_93,
      P(11) => ARG_n_94,
      P(10) => ARG_n_95,
      P(9) => ARG_n_96,
      P(8) => ARG_n_97,
      P(7) => ARG_n_98,
      P(6) => ARG_n_99,
      P(5) => ARG_n_100,
      P(4) => ARG_n_101,
      P(3) => ARG_n_102,
      P(2) => ARG_n_103,
      P(1) => ARG_n_104,
      P(0) => ARG_n_105,
      PATTERNBDETECT => NLW_ARG_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_ARG_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => ARG_n_106,
      PCOUT(46) => ARG_n_107,
      PCOUT(45) => ARG_n_108,
      PCOUT(44) => ARG_n_109,
      PCOUT(43) => ARG_n_110,
      PCOUT(42) => ARG_n_111,
      PCOUT(41) => ARG_n_112,
      PCOUT(40) => ARG_n_113,
      PCOUT(39) => ARG_n_114,
      PCOUT(38) => ARG_n_115,
      PCOUT(37) => ARG_n_116,
      PCOUT(36) => ARG_n_117,
      PCOUT(35) => ARG_n_118,
      PCOUT(34) => ARG_n_119,
      PCOUT(33) => ARG_n_120,
      PCOUT(32) => ARG_n_121,
      PCOUT(31) => ARG_n_122,
      PCOUT(30) => ARG_n_123,
      PCOUT(29) => ARG_n_124,
      PCOUT(28) => ARG_n_125,
      PCOUT(27) => ARG_n_126,
      PCOUT(26) => ARG_n_127,
      PCOUT(25) => ARG_n_128,
      PCOUT(24) => ARG_n_129,
      PCOUT(23) => ARG_n_130,
      PCOUT(22) => ARG_n_131,
      PCOUT(21) => ARG_n_132,
      PCOUT(20) => ARG_n_133,
      PCOUT(19) => ARG_n_134,
      PCOUT(18) => ARG_n_135,
      PCOUT(17) => ARG_n_136,
      PCOUT(16) => ARG_n_137,
      PCOUT(15) => ARG_n_138,
      PCOUT(14) => ARG_n_139,
      PCOUT(13) => ARG_n_140,
      PCOUT(12) => ARG_n_141,
      PCOUT(11) => ARG_n_142,
      PCOUT(10) => ARG_n_143,
      PCOUT(9) => ARG_n_144,
      PCOUT(8) => ARG_n_145,
      PCOUT(7) => ARG_n_146,
      PCOUT(6) => ARG_n_147,
      PCOUT(5) => ARG_n_148,
      PCOUT(4) => ARG_n_149,
      PCOUT(3) => ARG_n_150,
      PCOUT(2) => ARG_n_151,
      PCOUT(1) => ARG_n_152,
      PCOUT(0) => ARG_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => ARG_0(0),
      RSTC => ARG_0(0),
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_ARG_UNDERFLOW_UNCONNECTED
    );
ARG_i_32: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DUMMY_MUX_Z(0),
      O => ARG_i_32_n_0
    );
accumulator_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "NONE",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_accumulator_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111111111111111111",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_accumulator_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_accumulator_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => accumulator_reg_1,
      CLK => S_AXI_ACLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010010",
      OVERFLOW => NLW_accumulator_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 40) => NLW_accumulator_reg_P_UNCONNECTED(47 downto 40),
      P(39) => \^p\(0),
      P(38) => accumulator_reg_n_67,
      P(37) => accumulator_reg_n_68,
      P(36) => accumulator_reg_n_69,
      P(35) => accumulator_reg_n_70,
      P(34) => accumulator_reg_n_71,
      P(33) => accumulator_reg_n_72,
      P(32) => accumulator_reg_n_73,
      P(31) => accumulator_reg_n_74,
      P(30) => accumulator_reg_n_75,
      P(29) => accumulator_reg_n_76,
      P(28) => accumulator_reg_n_77,
      P(27) => accumulator_reg_n_78,
      P(26) => accumulator_reg_n_79,
      P(25) => accumulator_reg_n_80,
      P(24) => accumulator_reg_n_81,
      P(23) => accumulator_reg_n_82,
      P(22) => accumulator_reg_n_83,
      P(21) => accumulator_reg_n_84,
      P(20) => accumulator_reg_n_85,
      P(19) => accumulator_reg_n_86,
      P(18) => accumulator_reg_n_87,
      P(17) => accumulator_reg_n_88,
      P(16) => accumulator_reg_n_89,
      P(15) => accumulator_reg_n_90,
      P(14) => accumulator_reg_n_91,
      P(13) => accumulator_reg_n_92,
      P(12) => accumulator_reg_n_93,
      P(11) => accumulator_reg_n_94,
      P(10) => accumulator_reg_n_95,
      P(9) => accumulator_reg_n_96,
      P(8) => accumulator_reg_n_97,
      P(7) => accumulator_reg_n_98,
      P(6) => accumulator_reg_n_99,
      P(5) => accumulator_reg_n_100,
      P(4) => accumulator_reg_n_101,
      P(3) => accumulator_reg_n_102,
      P(2) => accumulator_reg_n_103,
      P(1) => accumulator_reg_n_104,
      P(0) => accumulator_reg_n_105,
      PATTERNBDETECT => NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => ARG_n_106,
      PCIN(46) => ARG_n_107,
      PCIN(45) => ARG_n_108,
      PCIN(44) => ARG_n_109,
      PCIN(43) => ARG_n_110,
      PCIN(42) => ARG_n_111,
      PCIN(41) => ARG_n_112,
      PCIN(40) => ARG_n_113,
      PCIN(39) => ARG_n_114,
      PCIN(38) => ARG_n_115,
      PCIN(37) => ARG_n_116,
      PCIN(36) => ARG_n_117,
      PCIN(35) => ARG_n_118,
      PCIN(34) => ARG_n_119,
      PCIN(33) => ARG_n_120,
      PCIN(32) => ARG_n_121,
      PCIN(31) => ARG_n_122,
      PCIN(30) => ARG_n_123,
      PCIN(29) => ARG_n_124,
      PCIN(28) => ARG_n_125,
      PCIN(27) => ARG_n_126,
      PCIN(26) => ARG_n_127,
      PCIN(25) => ARG_n_128,
      PCIN(24) => ARG_n_129,
      PCIN(23) => ARG_n_130,
      PCIN(22) => ARG_n_131,
      PCIN(21) => ARG_n_132,
      PCIN(20) => ARG_n_133,
      PCIN(19) => ARG_n_134,
      PCIN(18) => ARG_n_135,
      PCIN(17) => ARG_n_136,
      PCIN(16) => ARG_n_137,
      PCIN(15) => ARG_n_138,
      PCIN(14) => ARG_n_139,
      PCIN(13) => ARG_n_140,
      PCIN(12) => ARG_n_141,
      PCIN(11) => ARG_n_142,
      PCIN(10) => ARG_n_143,
      PCIN(9) => ARG_n_144,
      PCIN(8) => ARG_n_145,
      PCIN(7) => ARG_n_146,
      PCIN(6) => ARG_n_147,
      PCIN(5) => ARG_n_148,
      PCIN(4) => ARG_n_149,
      PCIN(3) => ARG_n_150,
      PCIN(2) => ARG_n_151,
      PCIN(1) => ARG_n_152,
      PCIN(0) => ARG_n_153,
      PCOUT(47 downto 0) => NLW_accumulator_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => accumulator_reg_2,
      UNDERFLOW => NLW_accumulator_reg_UNDERFLOW_UNCONNECTED
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => accumulator_reg_n_69,
      I1 => accumulator_reg_n_68,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => accumulator_reg_n_71,
      I1 => accumulator_reg_n_70,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => accumulator_reg_n_73,
      I1 => accumulator_reg_n_72,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => accumulator_reg_n_75,
      I1 => accumulator_reg_n_74,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => accumulator_reg_n_68,
      I1 => accumulator_reg_n_69,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => accumulator_reg_n_70,
      I1 => accumulator_reg_n_71,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => accumulator_reg_n_72,
      I1 => accumulator_reg_n_73,
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => accumulator_reg_n_74,
      I1 => accumulator_reg_n_75,
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => accumulator_reg_n_67,
      I1 => \^p\(0),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p\(0),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p\(0),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p\(0),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p\(0),
      I1 => accumulator_reg_n_67,
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p\(0),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => accumulator_reg_n_77,
      I1 => accumulator_reg_n_76,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => accumulator_reg_n_79,
      I1 => accumulator_reg_n_78,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => accumulator_reg_n_81,
      I1 => accumulator_reg_n_80,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => accumulator_reg_n_76,
      I1 => accumulator_reg_n_77,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => accumulator_reg_n_78,
      I1 => accumulator_reg_n_79,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => accumulator_reg_n_80,
      I1 => accumulator_reg_n_81,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => accumulator_reg_n_83,
      I1 => accumulator_reg_n_82,
      O => \i__carry_i_7_n_0\
    );
o_result1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => o_result1_carry_n_0,
      CO(2) => o_result1_carry_n_1,
      CO(1) => o_result1_carry_n_2,
      CO(0) => o_result1_carry_n_3,
      CYINIT => '0',
      DI(3) => o_result1_carry_i_1_n_0,
      DI(2) => o_result1_carry_i_2_n_0,
      DI(1) => o_result1_carry_i_3_n_0,
      DI(0) => o_result1_carry_i_4_n_0,
      O(3 downto 0) => NLW_o_result1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => o_result1_carry_i_5_n_0,
      S(2) => o_result1_carry_i_6_n_0,
      S(1) => o_result1_carry_i_7_n_0,
      S(0) => o_result1_carry_i_8_n_0
    );
\o_result1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => o_result1_carry_n_0,
      CO(3) => \o_result1_carry__0_n_0\,
      CO(2) => \o_result1_carry__0_n_1\,
      CO(1) => \o_result1_carry__0_n_2\,
      CO(0) => \o_result1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \o_result1_carry__0_i_1_n_0\,
      DI(2) => \o_result1_carry__0_i_2_n_0\,
      DI(1) => \o_result1_carry__0_i_3_n_0\,
      DI(0) => \o_result1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_o_result1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_result1_carry__0_i_5_n_0\,
      S(2) => \o_result1_carry__0_i_6_n_0\,
      S(1) => \o_result1_carry__0_i_7_n_0\,
      S(0) => \o_result1_carry__0_i_8_n_0\
    );
\o_result1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => accumulator_reg_n_69,
      I1 => accumulator_reg_n_68,
      O => \o_result1_carry__0_i_1_n_0\
    );
\o_result1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => accumulator_reg_n_71,
      I1 => accumulator_reg_n_70,
      O => \o_result1_carry__0_i_2_n_0\
    );
\o_result1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => accumulator_reg_n_73,
      I1 => accumulator_reg_n_72,
      O => \o_result1_carry__0_i_3_n_0\
    );
\o_result1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => accumulator_reg_n_75,
      I1 => accumulator_reg_n_74,
      O => \o_result1_carry__0_i_4_n_0\
    );
\o_result1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => accumulator_reg_n_68,
      I1 => accumulator_reg_n_69,
      O => \o_result1_carry__0_i_5_n_0\
    );
\o_result1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => accumulator_reg_n_70,
      I1 => accumulator_reg_n_71,
      O => \o_result1_carry__0_i_6_n_0\
    );
\o_result1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => accumulator_reg_n_72,
      I1 => accumulator_reg_n_73,
      O => \o_result1_carry__0_i_7_n_0\
    );
\o_result1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => accumulator_reg_n_74,
      I1 => accumulator_reg_n_75,
      O => \o_result1_carry__0_i_8_n_0\
    );
\o_result1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_result1_carry__0_n_0\,
      CO(3) => \o_result1_carry__1_n_0\,
      CO(2) => \o_result1_carry__1_n_1\,
      CO(1) => \o_result1_carry__1_n_2\,
      CO(0) => \o_result1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \o_result1_carry__1_i_1_n_0\,
      DI(2) => \o_result1_carry__1_i_2_n_0\,
      DI(1) => \o_result1_carry__1_i_3_n_0\,
      DI(0) => \o_result1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_o_result1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \^p\(0),
      S(2) => \^p\(0),
      S(1) => \^p\(0),
      S(0) => \o_result1_carry__1_i_5_n_0\
    );
\o_result1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p\(0),
      O => \o_result1_carry__1_i_1_n_0\
    );
\o_result1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p\(0),
      O => \o_result1_carry__1_i_2_n_0\
    );
\o_result1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p\(0),
      O => \o_result1_carry__1_i_3_n_0\
    );
\o_result1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => accumulator_reg_n_67,
      I1 => \^p\(0),
      O => \o_result1_carry__1_i_4_n_0\
    );
\o_result1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(0),
      I1 => accumulator_reg_n_67,
      O => \o_result1_carry__1_i_5_n_0\
    );
\o_result1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_result1_carry__1_n_0\,
      CO(3 downto 1) => \NLW_o_result1_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^co\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_o_result1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \^p\(0)
    );
o_result1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => accumulator_reg_n_77,
      I1 => accumulator_reg_n_76,
      O => o_result1_carry_i_1_n_0
    );
o_result1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => accumulator_reg_n_79,
      I1 => accumulator_reg_n_78,
      O => o_result1_carry_i_2_n_0
    );
o_result1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => accumulator_reg_n_81,
      I1 => accumulator_reg_n_80,
      O => o_result1_carry_i_3_n_0
    );
o_result1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => accumulator_reg_n_82,
      O => o_result1_carry_i_4_n_0
    );
o_result1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => accumulator_reg_n_76,
      I1 => accumulator_reg_n_77,
      O => o_result1_carry_i_5_n_0
    );
o_result1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => accumulator_reg_n_78,
      I1 => accumulator_reg_n_79,
      O => o_result1_carry_i_6_n_0
    );
o_result1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => accumulator_reg_n_80,
      I1 => accumulator_reg_n_81,
      O => o_result1_carry_i_7_n_0
    );
o_result1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => accumulator_reg_n_82,
      I1 => accumulator_reg_n_83,
      O => o_result1_carry_i_8_n_0
    );
\o_result1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_result1_inferred__0/i__carry_n_0\,
      CO(2) => \o_result1_inferred__0/i__carry_n_1\,
      CO(1) => \o_result1_inferred__0/i__carry_n_2\,
      CO(0) => \o_result1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => accumulator_reg_n_82,
      O(3 downto 0) => \NLW_o_result1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_4_n_0\,
      S(2) => \i__carry_i_5_n_0\,
      S(1) => \i__carry_i_6_n_0\,
      S(0) => \i__carry_i_7_n_0\
    );
\o_result1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_result1_inferred__0/i__carry_n_0\,
      CO(3) => \o_result1_inferred__0/i__carry__0_n_0\,
      CO(2) => \o_result1_inferred__0/i__carry__0_n_1\,
      CO(1) => \o_result1_inferred__0/i__carry__0_n_2\,
      CO(0) => \o_result1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_o_result1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\o_result1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_result1_inferred__0/i__carry__0_n_0\,
      CO(3) => \o_result1_inferred__0/i__carry__1_n_0\,
      CO(2) => \o_result1_inferred__0/i__carry__1_n_1\,
      CO(1) => \o_result1_inferred__0/i__carry__1_n_2\,
      CO(0) => \o_result1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \^p\(0),
      DI(2) => \^p\(0),
      DI(1) => \^p\(0),
      DI(0) => \i__carry__1_i_1_n_0\,
      O(3 downto 0) => \NLW_o_result1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_2_n_0\,
      S(2) => \i__carry__1_i_3_n_0\,
      S(1) => \i__carry__1_i_4_n_0\,
      S(0) => \i__carry__1_i_5_n_0\
    );
\o_result1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_result1_inferred__0/i__carry__1_n_0\,
      CO(3 downto 1) => \NLW_o_result1_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^accumulator_reg_0\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_o_result1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__2_i_1_n_0\
    );
ram_b_reg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_91,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(6)
    );
ram_b_reg_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_92,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(5)
    );
ram_b_reg_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_93,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(4)
    );
ram_b_reg_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_94,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(3)
    );
ram_b_reg_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_95,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(2)
    );
ram_b_reg_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_96,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(1)
    );
ram_b_reg_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_97,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(0)
    );
ram_b_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_83,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(14)
    );
ram_b_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_84,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(13)
    );
ram_b_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_85,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(12)
    );
ram_b_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_86,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(11)
    );
ram_b_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_87,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(10)
    );
ram_b_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_88,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(9)
    );
ram_b_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_89,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(8)
    );
ram_b_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => ram_b_reg,
      I1 => accumulator_reg_n_90,
      I2 => \^co\(0),
      I3 => \^accumulator_reg_0\(0),
      O => i_wr_data(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mlp_system_mlp_axi_wrapper_0_0_PingPong_RAM is
  port (
    select_reg : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_b_reg_0 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_b_reg_1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ram_b_reg_2 : out STD_LOGIC;
    ram_b_reg_3 : out STD_LOGIC;
    ram_b_reg_4 : out STD_LOGIC;
    ram_b_reg_5 : out STD_LOGIC;
    ram_b_reg_6 : out STD_LOGIC;
    ram_b_reg_7 : out STD_LOGIC;
    \max_value_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_b_reg_8 : out STD_LOGIC;
    ram_b_reg_9 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_b_reg_10 : out STD_LOGIC;
    ram_b_reg_11 : out STD_LOGIC;
    ram_b_reg_12 : out STD_LOGIC;
    ram_b_reg_13 : out STD_LOGIC;
    ram_b_reg_14 : out STD_LOGIC;
    ram_b_reg_15 : out STD_LOGIC;
    ram_b_reg_16 : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    i_wr_en : in STD_LOGIC;
    i_wr_addr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    i_rd_addr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    i_wr_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    select_reg_reg_0 : in STD_LOGIC;
    max_value : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ARG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mlp_system_mlp_axi_wrapper_0_0_PingPong_RAM : entity is "PingPong_RAM";
end mlp_system_mlp_axi_wrapper_0_0_PingPong_RAM;

architecture STRUCTURE of mlp_system_mlp_axi_wrapper_0_0_PingPong_RAM is
  signal \^ram_b_reg_0\ : STD_LOGIC;
  signal \^ram_b_reg_1\ : STD_LOGIC;
  signal \^ram_b_reg_10\ : STD_LOGIC;
  signal \^ram_b_reg_11\ : STD_LOGIC;
  signal \^ram_b_reg_12\ : STD_LOGIC;
  signal \^ram_b_reg_13\ : STD_LOGIC;
  signal \^ram_b_reg_14\ : STD_LOGIC;
  signal \^ram_b_reg_15\ : STD_LOGIC;
  signal \^ram_b_reg_16\ : STD_LOGIC;
  signal \^ram_b_reg_2\ : STD_LOGIC;
  signal \^ram_b_reg_3\ : STD_LOGIC;
  signal \^ram_b_reg_4\ : STD_LOGIC;
  signal \^ram_b_reg_5\ : STD_LOGIC;
  signal \^ram_b_reg_6\ : STD_LOGIC;
  signal \^ram_b_reg_7\ : STD_LOGIC;
  signal \^ram_b_reg_8\ : STD_LOGIC;
  signal ram_b_reg_i_17_n_0 : STD_LOGIC;
  signal rd_data_a : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rd_data_b : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^select_reg\ : STD_LOGIC;
  signal NLW_ram_a_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_a_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_a_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_b_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_b_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_b_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \max_value[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \max_value[10]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \max_value[11]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \max_value[12]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \max_value[13]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \max_value[14]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \max_value[15]_i_3\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \max_value[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \max_value[2]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \max_value[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \max_value[4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \max_value[5]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \max_value[6]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \max_value[7]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \max_value[8]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \max_value[9]_i_1\ : label is "soft_lutpair60";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_a_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_a_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_a_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_a_reg : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_a_reg : label is "mlp_system_mlp_axi_wrapper_0_0/U0/mlp_inst/pp_ram_inst/ram_a_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of ram_a_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_a_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_a_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_a_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of ram_a_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_a_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_a_reg : label is 15;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_b_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_b_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS of ram_b_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_b_reg : label is 1024;
  attribute RTL_RAM_NAME of ram_b_reg : label is "mlp_system_mlp_axi_wrapper_0_0/U0/mlp_inst/pp_ram_inst/ram_b_reg";
  attribute RTL_RAM_STYLE of ram_b_reg : label is "auto";
  attribute RTL_RAM_TYPE of ram_b_reg : label is "RAM_SDP";
  attribute ram_addr_begin of ram_b_reg : label is 0;
  attribute ram_addr_end of ram_b_reg : label is 1023;
  attribute ram_offset of ram_b_reg : label is 0;
  attribute ram_slice_begin of ram_b_reg : label is 0;
  attribute ram_slice_end of ram_b_reg : label is 15;
begin
  ram_b_reg_0 <= \^ram_b_reg_0\;
  ram_b_reg_1 <= \^ram_b_reg_1\;
  ram_b_reg_10 <= \^ram_b_reg_10\;
  ram_b_reg_11 <= \^ram_b_reg_11\;
  ram_b_reg_12 <= \^ram_b_reg_12\;
  ram_b_reg_13 <= \^ram_b_reg_13\;
  ram_b_reg_14 <= \^ram_b_reg_14\;
  ram_b_reg_15 <= \^ram_b_reg_15\;
  ram_b_reg_16 <= \^ram_b_reg_16\;
  ram_b_reg_2 <= \^ram_b_reg_2\;
  ram_b_reg_3 <= \^ram_b_reg_3\;
  ram_b_reg_4 <= \^ram_b_reg_4\;
  ram_b_reg_5 <= \^ram_b_reg_5\;
  ram_b_reg_6 <= \^ram_b_reg_6\;
  ram_b_reg_7 <= \^ram_b_reg_7\;
  ram_b_reg_8 <= \^ram_b_reg_8\;
  select_reg <= \^select_reg\;
ARG_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(14),
      I1 => ARG,
      I2 => rd_data_b(14),
      I3 => \^select_reg\,
      I4 => rd_data_a(14),
      O => A(14)
    );
ARG_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(13),
      I1 => ARG,
      I2 => rd_data_b(13),
      I3 => \^select_reg\,
      I4 => rd_data_a(13),
      O => A(13)
    );
ARG_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(12),
      I1 => ARG,
      I2 => rd_data_b(12),
      I3 => \^select_reg\,
      I4 => rd_data_a(12),
      O => A(12)
    );
ARG_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(11),
      I1 => ARG,
      I2 => rd_data_b(11),
      I3 => \^select_reg\,
      I4 => rd_data_a(11),
      O => A(11)
    );
ARG_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(10),
      I1 => ARG,
      I2 => rd_data_b(10),
      I3 => \^select_reg\,
      I4 => rd_data_a(10),
      O => A(10)
    );
ARG_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(9),
      I1 => ARG,
      I2 => rd_data_b(9),
      I3 => \^select_reg\,
      I4 => rd_data_a(9),
      O => A(9)
    );
ARG_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(8),
      I1 => ARG,
      I2 => rd_data_b(8),
      I3 => \^select_reg\,
      I4 => rd_data_a(8),
      O => A(8)
    );
ARG_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(7),
      I1 => ARG,
      I2 => rd_data_b(7),
      I3 => \^select_reg\,
      I4 => rd_data_a(7),
      O => A(7)
    );
ARG_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(6),
      I1 => ARG,
      I2 => rd_data_b(6),
      I3 => \^select_reg\,
      I4 => rd_data_a(6),
      O => A(6)
    );
ARG_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(5),
      I1 => ARG,
      I2 => rd_data_b(5),
      I3 => \^select_reg\,
      I4 => rd_data_a(5),
      O => A(5)
    );
ARG_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(4),
      I1 => ARG,
      I2 => rd_data_b(4),
      I3 => \^select_reg\,
      I4 => rd_data_a(4),
      O => A(4)
    );
ARG_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(3),
      I1 => ARG,
      I2 => rd_data_b(3),
      I3 => \^select_reg\,
      I4 => rd_data_a(3),
      O => A(3)
    );
ARG_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(2),
      I1 => ARG,
      I2 => rd_data_b(2),
      I3 => \^select_reg\,
      I4 => rd_data_a(2),
      O => A(2)
    );
ARG_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(1),
      I1 => ARG,
      I2 => rd_data_b(1),
      I3 => \^select_reg\,
      I4 => rd_data_a(1),
      O => A(1)
    );
ARG_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(0),
      I1 => ARG,
      I2 => rd_data_b(0),
      I3 => \^select_reg\,
      I4 => rd_data_a(0),
      O => A(0)
    );
ARG_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => DOBDO(15),
      I1 => ARG,
      I2 => rd_data_b(15),
      I3 => \^select_reg\,
      I4 => rd_data_a(15),
      O => A(15)
    );
\max_index0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222BBB222B2"
    )
        port map (
      I0 => max_value(15),
      I1 => \^ram_b_reg_15\,
      I2 => rd_data_a(14),
      I3 => \^select_reg\,
      I4 => rd_data_b(14),
      I5 => max_value(14),
      O => \max_value_reg[15]\(3)
    );
\max_index0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444DDD444D4"
    )
        port map (
      I0 => max_value(13),
      I1 => \^ram_b_reg_13\,
      I2 => rd_data_a(12),
      I3 => \^select_reg\,
      I4 => rd_data_b(12),
      I5 => max_value(12),
      O => \max_value_reg[15]\(2)
    );
\max_index0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444DDD444D4"
    )
        port map (
      I0 => max_value(11),
      I1 => \^ram_b_reg_11\,
      I2 => rd_data_a(10),
      I3 => \^select_reg\,
      I4 => rd_data_b(10),
      I5 => max_value(10),
      O => \max_value_reg[15]\(1)
    );
\max_index0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444DDD444D4"
    )
        port map (
      I0 => max_value(9),
      I1 => \^ram_b_reg_8\,
      I2 => rd_data_a(8),
      I3 => \^select_reg\,
      I4 => rd_data_b(8),
      I5 => max_value(8),
      O => \max_value_reg[15]\(0)
    );
\max_index0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => rd_data_b(15),
      I1 => \^select_reg\,
      I2 => rd_data_a(15),
      I3 => max_value(15),
      I4 => \^ram_b_reg_16\,
      I5 => max_value(14),
      O => ram_b_reg_9(3)
    );
\max_index0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => rd_data_b(13),
      I1 => \^select_reg\,
      I2 => rd_data_a(13),
      I3 => max_value(13),
      I4 => \^ram_b_reg_14\,
      I5 => max_value(12),
      O => ram_b_reg_9(2)
    );
\max_index0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => rd_data_b(11),
      I1 => \^select_reg\,
      I2 => rd_data_a(11),
      I3 => max_value(11),
      I4 => \^ram_b_reg_12\,
      I5 => max_value(10),
      O => ram_b_reg_9(1)
    );
\max_index0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => rd_data_b(9),
      I1 => \^select_reg\,
      I2 => rd_data_a(9),
      I3 => max_value(9),
      I4 => \^ram_b_reg_10\,
      I5 => max_value(8),
      O => ram_b_reg_9(0)
    );
max_index0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444DDD444D4"
    )
        port map (
      I0 => max_value(7),
      I1 => \^ram_b_reg_6\,
      I2 => rd_data_a(6),
      I3 => \^select_reg\,
      I4 => rd_data_b(6),
      I5 => max_value(6),
      O => DI(3)
    );
max_index0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444DDD444D4"
    )
        port map (
      I0 => max_value(5),
      I1 => \^ram_b_reg_4\,
      I2 => rd_data_a(4),
      I3 => \^select_reg\,
      I4 => rd_data_b(4),
      I5 => max_value(4),
      O => DI(2)
    );
max_index0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444DDD444D4"
    )
        port map (
      I0 => max_value(3),
      I1 => \^ram_b_reg_2\,
      I2 => rd_data_a(2),
      I3 => \^select_reg\,
      I4 => rd_data_b(2),
      I5 => max_value(2),
      O => DI(1)
    );
max_index0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444DDD444D4"
    )
        port map (
      I0 => max_value(1),
      I1 => \^ram_b_reg_0\,
      I2 => rd_data_a(0),
      I3 => \^select_reg\,
      I4 => rd_data_b(0),
      I5 => max_value(0),
      O => DI(0)
    );
max_index0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => rd_data_b(7),
      I1 => \^select_reg\,
      I2 => rd_data_a(7),
      I3 => max_value(7),
      I4 => \^ram_b_reg_7\,
      I5 => max_value(6),
      O => S(3)
    );
max_index0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => rd_data_b(5),
      I1 => \^select_reg\,
      I2 => rd_data_a(5),
      I3 => max_value(5),
      I4 => \^ram_b_reg_5\,
      I5 => max_value(4),
      O => S(2)
    );
max_index0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => rd_data_b(3),
      I1 => \^select_reg\,
      I2 => rd_data_a(3),
      I3 => max_value(3),
      I4 => \^ram_b_reg_3\,
      I5 => max_value(2),
      O => S(1)
    );
max_index0_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => rd_data_b(1),
      I1 => \^select_reg\,
      I2 => rd_data_a(1),
      I3 => max_value(1),
      I4 => \^ram_b_reg_1\,
      I5 => max_value(0),
      O => S(0)
    );
\max_value[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(0),
      I1 => \^select_reg\,
      I2 => rd_data_a(0),
      O => \^ram_b_reg_1\
    );
\max_value[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(10),
      I1 => \^select_reg\,
      I2 => rd_data_a(10),
      O => \^ram_b_reg_12\
    );
\max_value[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(11),
      I1 => \^select_reg\,
      I2 => rd_data_a(11),
      O => \^ram_b_reg_11\
    );
\max_value[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(12),
      I1 => \^select_reg\,
      I2 => rd_data_a(12),
      O => \^ram_b_reg_14\
    );
\max_value[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(13),
      I1 => \^select_reg\,
      I2 => rd_data_a(13),
      O => \^ram_b_reg_13\
    );
\max_value[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(14),
      I1 => \^select_reg\,
      I2 => rd_data_a(14),
      O => \^ram_b_reg_16\
    );
\max_value[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(15),
      I1 => \^select_reg\,
      I2 => rd_data_a(15),
      O => \^ram_b_reg_15\
    );
\max_value[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(1),
      I1 => \^select_reg\,
      I2 => rd_data_a(1),
      O => \^ram_b_reg_0\
    );
\max_value[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(2),
      I1 => \^select_reg\,
      I2 => rd_data_a(2),
      O => \^ram_b_reg_3\
    );
\max_value[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(3),
      I1 => \^select_reg\,
      I2 => rd_data_a(3),
      O => \^ram_b_reg_2\
    );
\max_value[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(4),
      I1 => \^select_reg\,
      I2 => rd_data_a(4),
      O => \^ram_b_reg_5\
    );
\max_value[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(5),
      I1 => \^select_reg\,
      I2 => rd_data_a(5),
      O => \^ram_b_reg_4\
    );
\max_value[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(6),
      I1 => \^select_reg\,
      I2 => rd_data_a(6),
      O => \^ram_b_reg_7\
    );
\max_value[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(7),
      I1 => \^select_reg\,
      I2 => rd_data_a(7),
      O => \^ram_b_reg_6\
    );
\max_value[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(8),
      I1 => \^select_reg\,
      I2 => rd_data_a(8),
      O => \^ram_b_reg_10\
    );
\max_value[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rd_data_b(9),
      I1 => \^select_reg\,
      I2 => rd_data_a(9),
      O => \^ram_b_reg_8\
    );
ram_a_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 10) => B"0000",
      ADDRARDADDR(9 downto 4) => i_wr_addr(5 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 10) => B"0000",
      ADDRBWRADDR(9 downto 4) => i_rd_addr(5 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => S_AXI_ACLK,
      CLKBWRCLK => S_AXI_ACLK,
      DIADI(15 downto 0) => i_wr_data(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_ram_a_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 0) => rd_data_a(15 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_a_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_a_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => i_wr_en,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \^select_reg\,
      WEA(0) => \^select_reg\,
      WEBWE(3 downto 0) => B"0000"
    );
ram_b_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 10) => B"0000",
      ADDRARDADDR(9 downto 4) => i_wr_addr(5 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 10) => B"0000",
      ADDRBWRADDR(9 downto 4) => i_rd_addr(5 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => S_AXI_ACLK,
      CLKBWRCLK => S_AXI_ACLK,
      DIADI(15 downto 0) => i_wr_data(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_ram_b_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 0) => rd_data_b(15 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_b_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_b_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => i_wr_en,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => ram_b_reg_i_17_n_0,
      WEA(0) => ram_b_reg_i_17_n_0,
      WEBWE(3 downto 0) => B"0000"
    );
ram_b_reg_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^select_reg\,
      O => ram_b_reg_i_17_n_0
    );
select_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => select_reg_reg_0,
      Q => \^select_reg\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mlp_system_mlp_axi_wrapper_0_0_mlp is
  port (
    i_reset : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_led : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    input_ram_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 21 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    mlp_start : in STD_LOGIC;
    \axi_rdata_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[1]_0\ : in STD_LOGIC;
    \axi_rdata_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mlp_system_mlp_axi_wrapper_0_0_mlp : entity is "mlp";
end mlp_system_mlp_axi_wrapper_0_0_mlp;

architecture STRUCTURE of mlp_system_mlp_axi_wrapper_0_0_mlp is
  signal A : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RESIZE0 : STD_LOGIC;
  signal fsm_input_addr : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal fsm_inst_n_0 : STD_LOGIC;
  signal fsm_inst_n_15 : STD_LOGIC;
  signal fsm_inst_n_16 : STD_LOGIC;
  signal fsm_inst_n_17 : STD_LOGIC;
  signal fsm_inst_n_22 : STD_LOGIC;
  signal fsm_inst_n_23 : STD_LOGIC;
  signal fsm_inst_n_24 : STD_LOGIC;
  signal fsm_inst_n_25 : STD_LOGIC;
  signal fsm_inst_n_26 : STD_LOGIC;
  signal fsm_inst_n_4 : STD_LOGIC;
  signal fsm_inst_n_43 : STD_LOGIC;
  signal fsm_inst_n_44 : STD_LOGIC;
  signal fsm_inst_n_45 : STD_LOGIC;
  signal fsm_inst_n_46 : STD_LOGIC;
  signal fsm_inst_n_47 : STD_LOGIC;
  signal fsm_inst_n_48 : STD_LOGIC;
  signal fsm_inst_n_49 : STD_LOGIC;
  signal fsm_inst_n_5 : STD_LOGIC;
  signal fsm_inst_n_50 : STD_LOGIC;
  signal fsm_inst_n_51 : STD_LOGIC;
  signal fsm_inst_n_52 : STD_LOGIC;
  signal fsm_inst_n_53 : STD_LOGIC;
  signal fsm_inst_n_54 : STD_LOGIC;
  signal fsm_inst_n_55 : STD_LOGIC;
  signal fsm_inst_n_56 : STD_LOGIC;
  signal fsm_inst_n_57 : STD_LOGIC;
  signal \^i_reset\ : STD_LOGIC;
  signal i_wr_data : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal input_rd_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal layer_idx : STD_LOGIC_VECTOR ( 2 to 2 );
  signal mac_add_bias : STD_LOGIC;
  signal max_value : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_class_result : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal o_done : STD_LOGIC;
  signal \^o_led\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \o_led[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_led[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_led[2]_i_1_n_0\ : STD_LOGIC;
  signal o_result1 : STD_LOGIC;
  signal o_result10_in : STD_LOGIC;
  signal output_addr : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal output_wr_en : STD_LOGIC;
  signal pp_ram_inst_n_1 : STD_LOGIC;
  signal pp_ram_inst_n_10 : STD_LOGIC;
  signal pp_ram_inst_n_2 : STD_LOGIC;
  signal pp_ram_inst_n_27 : STD_LOGIC;
  signal pp_ram_inst_n_28 : STD_LOGIC;
  signal pp_ram_inst_n_29 : STD_LOGIC;
  signal pp_ram_inst_n_3 : STD_LOGIC;
  signal pp_ram_inst_n_30 : STD_LOGIC;
  signal pp_ram_inst_n_31 : STD_LOGIC;
  signal pp_ram_inst_n_32 : STD_LOGIC;
  signal pp_ram_inst_n_33 : STD_LOGIC;
  signal pp_ram_inst_n_34 : STD_LOGIC;
  signal pp_ram_inst_n_35 : STD_LOGIC;
  signal pp_ram_inst_n_36 : STD_LOGIC;
  signal pp_ram_inst_n_37 : STD_LOGIC;
  signal pp_ram_inst_n_38 : STD_LOGIC;
  signal pp_ram_inst_n_39 : STD_LOGIC;
  signal pp_ram_inst_n_4 : STD_LOGIC;
  signal pp_ram_inst_n_40 : STD_LOGIC;
  signal pp_ram_inst_n_41 : STD_LOGIC;
  signal pp_ram_inst_n_42 : STD_LOGIC;
  signal pp_ram_inst_n_43 : STD_LOGIC;
  signal pp_ram_inst_n_44 : STD_LOGIC;
  signal pp_ram_inst_n_45 : STD_LOGIC;
  signal pp_ram_inst_n_46 : STD_LOGIC;
  signal pp_ram_inst_n_47 : STD_LOGIC;
  signal pp_ram_inst_n_48 : STD_LOGIC;
  signal pp_ram_inst_n_5 : STD_LOGIC;
  signal pp_ram_inst_n_6 : STD_LOGIC;
  signal pp_ram_inst_n_7 : STD_LOGIC;
  signal pp_ram_inst_n_8 : STD_LOGIC;
  signal pp_ram_inst_n_9 : STD_LOGIC;
  signal select_reg : STD_LOGIC;
  signal NLW_input_ram_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_input_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_input_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of input_ram_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of input_ram_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of input_ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of input_ram_reg : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of input_ram_reg : label is "mlp_system_mlp_axi_wrapper_0_0/U0/mlp_inst/input_ram_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of input_ram_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of input_ram_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of input_ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of input_ram_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of input_ram_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of input_ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of input_ram_reg : label is 15;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_led[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \o_led[2]_i_1\ : label is "soft_lutpair64";
begin
  i_reset <= \^i_reset\;
  o_led(2 downto 0) <= \^o_led\(2 downto 0);
fsm_inst: entity work.mlp_system_mlp_axi_wrapper_0_0_Controller_FSM
     port map (
      B(7) => fsm_inst_n_50,
      B(6) => fsm_inst_n_51,
      B(5) => fsm_inst_n_52,
      B(4) => fsm_inst_n_53,
      B(3) => fsm_inst_n_54,
      B(2) => fsm_inst_n_55,
      B(1) => fsm_inst_n_56,
      B(0) => fsm_inst_n_57,
      C(6) => fsm_inst_n_43,
      C(5) => fsm_inst_n_44,
      C(4) => fsm_inst_n_45,
      C(3) => fsm_inst_n_46,
      C(2) => fsm_inst_n_47,
      C(1) => fsm_inst_n_48,
      C(0) => fsm_inst_n_49,
      CO(0) => o_result1,
      D(1 downto 0) => D(1 downto 0),
      DI(3) => pp_ram_inst_n_1,
      DI(2) => pp_ram_inst_n_2,
      DI(1) => pp_ram_inst_n_3,
      DI(0) => pp_ram_inst_n_4,
      \FSM_onehot_state_reg[0]_0\ => fsm_inst_n_4,
      \FSM_onehot_state_reg[10]_0\ => fsm_inst_n_25,
      \FSM_onehot_state_reg[3]_0\ => fsm_inst_n_5,
      \FSM_onehot_state_reg[3]_1\ => fsm_inst_n_17,
      P(0) => RESIZE0,
      Q(2) => o_done,
      Q(1) => output_wr_en,
      Q(0) => mac_add_bias,
      S(3) => pp_ram_inst_n_6,
      S(2) => pp_ram_inst_n_7,
      S(1) => pp_ram_inst_n_8,
      S(0) => pp_ram_inst_n_9,
      SR(0) => \^i_reset\,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      \axi_rdata_reg[1]\(3 downto 0) => \axi_rdata_reg[1]\(3 downto 0),
      \axi_rdata_reg[1]_0\(1 downto 0) => Q(1 downto 0),
      \axi_rdata_reg[1]_1\ => \axi_rdata_reg[1]_0\,
      \axi_rdata_reg[1]_2\(1 downto 0) => \axi_rdata_reg[1]_1\(1 downto 0),
      i_rd_addr(1) => fsm_inst_n_15,
      i_rd_addr(0) => fsm_inst_n_16,
      i_wr_addr(0) => fsm_inst_n_26,
      i_wr_data(0) => fsm_inst_n_0,
      \input_counter_reg[5]_0\(3 downto 0) => fsm_input_addr(5 downto 2),
      \layer_counter_reg[1]_0\ => fsm_inst_n_24,
      \layer_counter_reg[2]_0\(0) => layer_idx(2),
      max_value(15 downto 0) => max_value(15 downto 0),
      \max_value[15]_i_4_0\(3) => pp_ram_inst_n_33,
      \max_value[15]_i_4_0\(2) => pp_ram_inst_n_34,
      \max_value[15]_i_4_0\(1) => pp_ram_inst_n_35,
      \max_value[15]_i_4_0\(0) => pp_ram_inst_n_36,
      \max_value[15]_i_4_1\(3) => pp_ram_inst_n_38,
      \max_value[15]_i_4_1\(2) => pp_ram_inst_n_39,
      \max_value[15]_i_4_1\(1) => pp_ram_inst_n_40,
      \max_value[15]_i_4_1\(0) => pp_ram_inst_n_41,
      \max_value_reg[0]_0\ => pp_ram_inst_n_10,
      \max_value_reg[10]_0\ => pp_ram_inst_n_44,
      \max_value_reg[11]_0\ => pp_ram_inst_n_43,
      \max_value_reg[12]_0\ => pp_ram_inst_n_46,
      \max_value_reg[13]_0\ => pp_ram_inst_n_45,
      \max_value_reg[14]_0\ => pp_ram_inst_n_48,
      \max_value_reg[15]_0\ => pp_ram_inst_n_47,
      \max_value_reg[1]_0\ => pp_ram_inst_n_5,
      \max_value_reg[2]_0\ => pp_ram_inst_n_28,
      \max_value_reg[3]_0\ => pp_ram_inst_n_27,
      \max_value_reg[4]_0\ => pp_ram_inst_n_30,
      \max_value_reg[5]_0\ => pp_ram_inst_n_29,
      \max_value_reg[6]_0\ => pp_ram_inst_n_32,
      \max_value_reg[7]_0\ => pp_ram_inst_n_31,
      \max_value_reg[8]_0\ => pp_ram_inst_n_42,
      \max_value_reg[9]_0\ => pp_ram_inst_n_37,
      mlp_start => mlp_start,
      \neuron_counter_reg[1]_rep__4_0\ => fsm_inst_n_22,
      \neuron_counter_reg[2]_rep__0_0\ => fsm_inst_n_23,
      \neuron_counter_reg[5]_0\(2 downto 1) => output_addr(5 downto 4),
      \neuron_counter_reg[5]_0\(0) => output_addr(0),
      o_class_result(1 downto 0) => o_class_result(1 downto 0),
      ram_a_reg(0) => o_result10_in,
      select_reg => select_reg
    );
input_ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 10) => B"0000",
      ADDRARDADDR(9 downto 4) => Q(21 downto 16),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 10) => B"0000",
      ADDRBWRADDR(9 downto 6) => fsm_input_addr(5 downto 2),
      ADDRBWRADDR(5) => fsm_inst_n_15,
      ADDRBWRADDR(4) => fsm_inst_n_16,
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => S_AXI_ACLK,
      CLKBWRCLK => S_AXI_ACLK,
      DIADI(15 downto 0) => Q(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_input_ram_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 0) => input_rd_data(15 downto 0),
      DOPADOP(1 downto 0) => NLW_input_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_input_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => input_ram_reg_0,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
mac_inst: entity work.mlp_system_mlp_axi_wrapper_0_0_MAC_Unit
     port map (
      A(15 downto 0) => A(15 downto 0),
      ARG_0(0) => layer_idx(2),
      B(7) => fsm_inst_n_50,
      B(6) => fsm_inst_n_51,
      B(5) => fsm_inst_n_52,
      B(4) => fsm_inst_n_53,
      B(3) => fsm_inst_n_54,
      B(2) => fsm_inst_n_55,
      B(1) => fsm_inst_n_56,
      B(0) => fsm_inst_n_57,
      C(6) => fsm_inst_n_43,
      C(5) => fsm_inst_n_44,
      C(4) => fsm_inst_n_45,
      C(3) => fsm_inst_n_46,
      C(2) => fsm_inst_n_47,
      C(1) => fsm_inst_n_48,
      C(0) => fsm_inst_n_49,
      CO(0) => o_result1,
      DUMMY_MUX_Z(0) => mac_add_bias,
      P(0) => RESIZE0,
      S_AXI_ACLK => S_AXI_ACLK,
      accumulator_reg_0(0) => o_result10_in,
      accumulator_reg_1 => fsm_inst_n_17,
      accumulator_reg_2 => fsm_inst_n_5,
      i_wr_data(14 downto 0) => i_wr_data(14 downto 0),
      ram_b_reg => fsm_inst_n_4
    );
\o_led[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => o_class_result(1),
      I1 => o_class_result(0),
      I2 => o_done,
      I3 => \^o_led\(0),
      O => \o_led[0]_i_1_n_0\
    );
\o_led[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => o_class_result(0),
      I1 => o_class_result(1),
      I2 => o_done,
      I3 => \^o_led\(1),
      O => \o_led[1]_i_1_n_0\
    );
\o_led[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => o_class_result(1),
      I1 => o_class_result(0),
      I2 => o_done,
      I3 => \^o_led\(2),
      O => \o_led[2]_i_1_n_0\
    );
\o_led_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \o_led[0]_i_1_n_0\,
      Q => \^o_led\(0),
      R => \^i_reset\
    );
\o_led_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \o_led[1]_i_1_n_0\,
      Q => \^o_led\(1),
      R => \^i_reset\
    );
\o_led_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \o_led[2]_i_1_n_0\,
      Q => \^o_led\(2),
      R => \^i_reset\
    );
pp_ram_inst: entity work.mlp_system_mlp_axi_wrapper_0_0_PingPong_RAM
     port map (
      A(15 downto 0) => A(15 downto 0),
      ARG => fsm_inst_n_24,
      DI(3) => pp_ram_inst_n_1,
      DI(2) => pp_ram_inst_n_2,
      DI(1) => pp_ram_inst_n_3,
      DI(0) => pp_ram_inst_n_4,
      DOBDO(15 downto 0) => input_rd_data(15 downto 0),
      S(3) => pp_ram_inst_n_6,
      S(2) => pp_ram_inst_n_7,
      S(1) => pp_ram_inst_n_8,
      S(0) => pp_ram_inst_n_9,
      S_AXI_ACLK => S_AXI_ACLK,
      i_rd_addr(5 downto 2) => fsm_input_addr(5 downto 2),
      i_rd_addr(1) => fsm_inst_n_15,
      i_rd_addr(0) => fsm_inst_n_16,
      i_wr_addr(5 downto 4) => output_addr(5 downto 4),
      i_wr_addr(3) => fsm_inst_n_26,
      i_wr_addr(2) => fsm_inst_n_23,
      i_wr_addr(1) => fsm_inst_n_22,
      i_wr_addr(0) => output_addr(0),
      i_wr_data(15) => fsm_inst_n_0,
      i_wr_data(14 downto 0) => i_wr_data(14 downto 0),
      i_wr_en => output_wr_en,
      max_value(15 downto 0) => max_value(15 downto 0),
      \max_value_reg[15]\(3) => pp_ram_inst_n_33,
      \max_value_reg[15]\(2) => pp_ram_inst_n_34,
      \max_value_reg[15]\(1) => pp_ram_inst_n_35,
      \max_value_reg[15]\(0) => pp_ram_inst_n_36,
      ram_b_reg_0 => pp_ram_inst_n_5,
      ram_b_reg_1 => pp_ram_inst_n_10,
      ram_b_reg_10 => pp_ram_inst_n_42,
      ram_b_reg_11 => pp_ram_inst_n_43,
      ram_b_reg_12 => pp_ram_inst_n_44,
      ram_b_reg_13 => pp_ram_inst_n_45,
      ram_b_reg_14 => pp_ram_inst_n_46,
      ram_b_reg_15 => pp_ram_inst_n_47,
      ram_b_reg_16 => pp_ram_inst_n_48,
      ram_b_reg_2 => pp_ram_inst_n_27,
      ram_b_reg_3 => pp_ram_inst_n_28,
      ram_b_reg_4 => pp_ram_inst_n_29,
      ram_b_reg_5 => pp_ram_inst_n_30,
      ram_b_reg_6 => pp_ram_inst_n_31,
      ram_b_reg_7 => pp_ram_inst_n_32,
      ram_b_reg_8 => pp_ram_inst_n_37,
      ram_b_reg_9(3) => pp_ram_inst_n_38,
      ram_b_reg_9(2) => pp_ram_inst_n_39,
      ram_b_reg_9(1) => pp_ram_inst_n_40,
      ram_b_reg_9(0) => pp_ram_inst_n_41,
      select_reg => select_reg,
      select_reg_reg_0 => fsm_inst_n_25
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mlp_system_mlp_axi_wrapper_0_0_mlp_axi_wrapper is
  port (
    o_led : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mlp_system_mlp_axi_wrapper_0_0_mlp_axi_wrapper : entity is "mlp_axi_wrapper";
end mlp_system_mlp_axi_wrapper_0_0_mlp_axi_wrapper;

architecture STRUCTURE of mlp_system_mlp_axi_wrapper_0_0_mlp_axi_wrapper is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal araddr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal aw_en : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal awaddr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rvalid00_out__0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal i_reset : STD_LOGIC;
  signal input_wr_pulse_i_1_n_0 : STD_LOGIC;
  signal input_wr_pulse_reg_n_0 : STD_LOGIC;
  signal mlp_start : STD_LOGIC;
  signal mlp_start0 : STD_LOGIC;
  signal mlp_start_r : STD_LOGIC;
  signal mlp_wr_addr : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal mlp_wr_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_ctrl : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \reg_ctrl[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[25]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[26]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[27]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[28]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[29]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[30]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[31]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[9]\ : STD_LOGIC;
  signal reg_input : STD_LOGIC_VECTOR ( 31 downto 22 );
  signal reg_input_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \reg_ctrl[31]_i_2\ : label is "soft_lutpair65";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
\araddr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(0),
      Q => araddr_reg(0),
      R => i_reset
    );
\araddr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(1),
      Q => araddr_reg(1),
      R => i_reset
    );
\araddr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(2),
      Q => araddr_reg(2),
      R => i_reset
    );
\araddr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(3),
      Q => araddr_reg(3),
      R => i_reset
    );
aw_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8FFF8F"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => S_AXI_BREADY,
      I2 => S_AXI_ARESETN,
      I3 => aw_en,
      I4 => axi_awready0,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en,
      R => '0'
    );
\awaddr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(0),
      Q => awaddr_reg(0),
      R => i_reset
    );
\awaddr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(1),
      Q => awaddr_reg(1),
      R => i_reset
    );
\awaddr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(2),
      Q => awaddr_reg(2),
      R => i_reset
    );
\awaddr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(3),
      Q => awaddr_reg(3),
      R => i_reset
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => i_reset
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => i_reset
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \^s_axi_bvalid\,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_AWVALID,
      I5 => S_AXI_WVALID,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => i_reset
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[10]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(10),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[11]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(11),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[12]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(12),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[13]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(13),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[14]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(14),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[15]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(15),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[16]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_addr(0),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[17]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_addr(1),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[18]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_addr(2),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[19]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_addr(3),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(19)
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => araddr_reg(0),
      I1 => araddr_reg(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[20]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_addr(4),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[21]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_addr(5),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[22]\,
      I1 => araddr_reg(3),
      I2 => reg_input(22),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[23]\,
      I1 => araddr_reg(3),
      I2 => reg_input(23),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[24]\,
      I1 => araddr_reg(3),
      I2 => reg_input(24),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[25]\,
      I1 => araddr_reg(3),
      I2 => reg_input(25),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[26]\,
      I1 => araddr_reg(3),
      I2 => reg_input(26),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[27]\,
      I1 => araddr_reg(3),
      I2 => reg_input(27),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[28]\,
      I1 => araddr_reg(3),
      I2 => reg_input(28),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[29]\,
      I1 => araddr_reg(3),
      I2 => reg_input(29),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[2]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(2),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[30]\,
      I1 => araddr_reg(3),
      I2 => reg_input(30),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[31]\,
      I1 => araddr_reg(3),
      I2 => reg_input(31),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[3]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(3),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[4]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(4),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[5]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(5),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[6]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(6),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[7]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(7),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[8]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(8),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[9]\,
      I1 => araddr_reg(3),
      I2 => mlp_wr_data(9),
      I3 => araddr_reg(0),
      I4 => araddr_reg(1),
      I5 => araddr_reg(2),
      O => axi_rdata(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(0),
      Q => S_AXI_RDATA(0),
      R => i_reset
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(10),
      Q => S_AXI_RDATA(10),
      R => i_reset
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(11),
      Q => S_AXI_RDATA(11),
      R => i_reset
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(12),
      Q => S_AXI_RDATA(12),
      R => i_reset
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(13),
      Q => S_AXI_RDATA(13),
      R => i_reset
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(14),
      Q => S_AXI_RDATA(14),
      R => i_reset
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(15),
      Q => S_AXI_RDATA(15),
      R => i_reset
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(16),
      Q => S_AXI_RDATA(16),
      R => i_reset
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(17),
      Q => S_AXI_RDATA(17),
      R => i_reset
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(18),
      Q => S_AXI_RDATA(18),
      R => i_reset
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(19),
      Q => S_AXI_RDATA(19),
      R => i_reset
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(1),
      Q => S_AXI_RDATA(1),
      R => i_reset
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(20),
      Q => S_AXI_RDATA(20),
      R => i_reset
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(21),
      Q => S_AXI_RDATA(21),
      R => i_reset
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(22),
      Q => S_AXI_RDATA(22),
      R => i_reset
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(23),
      Q => S_AXI_RDATA(23),
      R => i_reset
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(24),
      Q => S_AXI_RDATA(24),
      R => i_reset
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(25),
      Q => S_AXI_RDATA(25),
      R => i_reset
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(26),
      Q => S_AXI_RDATA(26),
      R => i_reset
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(27),
      Q => S_AXI_RDATA(27),
      R => i_reset
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(28),
      Q => S_AXI_RDATA(28),
      R => i_reset
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(29),
      Q => S_AXI_RDATA(29),
      R => i_reset
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(2),
      Q => S_AXI_RDATA(2),
      R => i_reset
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(30),
      Q => S_AXI_RDATA(30),
      R => i_reset
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(31),
      Q => S_AXI_RDATA(31),
      R => i_reset
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(3),
      Q => S_AXI_RDATA(3),
      R => i_reset
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(4),
      Q => S_AXI_RDATA(4),
      R => i_reset
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(5),
      Q => S_AXI_RDATA(5),
      R => i_reset
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(6),
      Q => S_AXI_RDATA(6),
      R => i_reset
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(7),
      Q => S_AXI_RDATA(7),
      R => i_reset
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(8),
      Q => S_AXI_RDATA(8),
      R => i_reset
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => axi_rdata(9),
      Q => S_AXI_RDATA(9),
      R => i_reset
    );
axi_rvalid00_out: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \axi_rvalid00_out__0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => i_reset
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => aw_en,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => i_reset
    );
input_wr_pulse_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => \reg_ctrl[31]_i_2_n_0\,
      I2 => awaddr_reg(0),
      I3 => awaddr_reg(2),
      I4 => awaddr_reg(1),
      I5 => awaddr_reg(3),
      O => input_wr_pulse_i_1_n_0
    );
input_wr_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => input_wr_pulse_i_1_n_0,
      Q => input_wr_pulse_reg_n_0,
      R => '0'
    );
mlp_inst: entity work.mlp_system_mlp_axi_wrapper_0_0_mlp
     port map (
      D(1 downto 0) => axi_rdata(1 downto 0),
      Q(21 downto 16) => mlp_wr_addr(5 downto 0),
      Q(15 downto 0) => mlp_wr_data(15 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      \axi_rdata_reg[1]\(3 downto 0) => araddr_reg(3 downto 0),
      \axi_rdata_reg[1]_0\ => \axi_rdata[1]_i_3_n_0\,
      \axi_rdata_reg[1]_1\(1) => \reg_ctrl_reg_n_0_[1]\,
      \axi_rdata_reg[1]_1\(0) => \reg_ctrl_reg_n_0_[0]\,
      i_reset => i_reset,
      input_ram_reg_0 => input_wr_pulse_reg_n_0,
      mlp_start => mlp_start,
      o_led(2 downto 0) => o_led(2 downto 0)
    );
mlp_start_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \reg_ctrl_reg_n_0_[0]\,
      I1 => mlp_start_r,
      O => mlp_start0
    );
mlp_start_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \reg_ctrl_reg_n_0_[0]\,
      Q => mlp_start_r,
      R => i_reset
    );
mlp_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => mlp_start0,
      Q => mlp_start,
      R => i_reset
    );
\reg_ctrl[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => awaddr_reg(3),
      I1 => \reg_ctrl[31]_i_2_n_0\,
      I2 => awaddr_reg(0),
      I3 => awaddr_reg(2),
      I4 => awaddr_reg(1),
      O => reg_ctrl(0)
    );
\reg_ctrl[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => \reg_ctrl[31]_i_2_n_0\
    );
\reg_ctrl_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(0),
      Q => \reg_ctrl_reg_n_0_[0]\,
      R => i_reset
    );
\reg_ctrl_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(10),
      Q => \reg_ctrl_reg_n_0_[10]\,
      R => i_reset
    );
\reg_ctrl_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(11),
      Q => \reg_ctrl_reg_n_0_[11]\,
      R => i_reset
    );
\reg_ctrl_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(12),
      Q => \reg_ctrl_reg_n_0_[12]\,
      R => i_reset
    );
\reg_ctrl_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(13),
      Q => \reg_ctrl_reg_n_0_[13]\,
      R => i_reset
    );
\reg_ctrl_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(14),
      Q => \reg_ctrl_reg_n_0_[14]\,
      R => i_reset
    );
\reg_ctrl_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(15),
      Q => \reg_ctrl_reg_n_0_[15]\,
      R => i_reset
    );
\reg_ctrl_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(16),
      Q => \reg_ctrl_reg_n_0_[16]\,
      R => i_reset
    );
\reg_ctrl_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(17),
      Q => \reg_ctrl_reg_n_0_[17]\,
      R => i_reset
    );
\reg_ctrl_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(18),
      Q => \reg_ctrl_reg_n_0_[18]\,
      R => i_reset
    );
\reg_ctrl_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(19),
      Q => \reg_ctrl_reg_n_0_[19]\,
      R => i_reset
    );
\reg_ctrl_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(1),
      Q => \reg_ctrl_reg_n_0_[1]\,
      R => i_reset
    );
\reg_ctrl_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(20),
      Q => \reg_ctrl_reg_n_0_[20]\,
      R => i_reset
    );
\reg_ctrl_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(21),
      Q => \reg_ctrl_reg_n_0_[21]\,
      R => i_reset
    );
\reg_ctrl_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(22),
      Q => \reg_ctrl_reg_n_0_[22]\,
      R => i_reset
    );
\reg_ctrl_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(23),
      Q => \reg_ctrl_reg_n_0_[23]\,
      R => i_reset
    );
\reg_ctrl_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(24),
      Q => \reg_ctrl_reg_n_0_[24]\,
      R => i_reset
    );
\reg_ctrl_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(25),
      Q => \reg_ctrl_reg_n_0_[25]\,
      R => i_reset
    );
\reg_ctrl_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(26),
      Q => \reg_ctrl_reg_n_0_[26]\,
      R => i_reset
    );
\reg_ctrl_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(27),
      Q => \reg_ctrl_reg_n_0_[27]\,
      R => i_reset
    );
\reg_ctrl_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(28),
      Q => \reg_ctrl_reg_n_0_[28]\,
      R => i_reset
    );
\reg_ctrl_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(29),
      Q => \reg_ctrl_reg_n_0_[29]\,
      R => i_reset
    );
\reg_ctrl_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(2),
      Q => \reg_ctrl_reg_n_0_[2]\,
      R => i_reset
    );
\reg_ctrl_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(30),
      Q => \reg_ctrl_reg_n_0_[30]\,
      R => i_reset
    );
\reg_ctrl_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(31),
      Q => \reg_ctrl_reg_n_0_[31]\,
      R => i_reset
    );
\reg_ctrl_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(3),
      Q => \reg_ctrl_reg_n_0_[3]\,
      R => i_reset
    );
\reg_ctrl_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(4),
      Q => \reg_ctrl_reg_n_0_[4]\,
      R => i_reset
    );
\reg_ctrl_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(5),
      Q => \reg_ctrl_reg_n_0_[5]\,
      R => i_reset
    );
\reg_ctrl_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(6),
      Q => \reg_ctrl_reg_n_0_[6]\,
      R => i_reset
    );
\reg_ctrl_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(7),
      Q => \reg_ctrl_reg_n_0_[7]\,
      R => i_reset
    );
\reg_ctrl_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(8),
      Q => \reg_ctrl_reg_n_0_[8]\,
      R => i_reset
    );
\reg_ctrl_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_ctrl(0),
      D => S_AXI_WDATA(9),
      Q => \reg_ctrl_reg_n_0_[9]\,
      R => i_reset
    );
\reg_input[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \reg_ctrl[31]_i_2_n_0\,
      I1 => awaddr_reg(0),
      I2 => awaddr_reg(2),
      I3 => awaddr_reg(1),
      I4 => awaddr_reg(3),
      O => reg_input_0(0)
    );
\reg_input_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(0),
      Q => mlp_wr_data(0),
      R => i_reset
    );
\reg_input_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(10),
      Q => mlp_wr_data(10),
      R => i_reset
    );
\reg_input_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(11),
      Q => mlp_wr_data(11),
      R => i_reset
    );
\reg_input_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(12),
      Q => mlp_wr_data(12),
      R => i_reset
    );
\reg_input_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(13),
      Q => mlp_wr_data(13),
      R => i_reset
    );
\reg_input_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(14),
      Q => mlp_wr_data(14),
      R => i_reset
    );
\reg_input_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(15),
      Q => mlp_wr_data(15),
      R => i_reset
    );
\reg_input_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(16),
      Q => mlp_wr_addr(0),
      R => i_reset
    );
\reg_input_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(17),
      Q => mlp_wr_addr(1),
      R => i_reset
    );
\reg_input_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(18),
      Q => mlp_wr_addr(2),
      R => i_reset
    );
\reg_input_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(19),
      Q => mlp_wr_addr(3),
      R => i_reset
    );
\reg_input_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(1),
      Q => mlp_wr_data(1),
      R => i_reset
    );
\reg_input_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(20),
      Q => mlp_wr_addr(4),
      R => i_reset
    );
\reg_input_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(21),
      Q => mlp_wr_addr(5),
      R => i_reset
    );
\reg_input_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(22),
      Q => reg_input(22),
      R => i_reset
    );
\reg_input_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(23),
      Q => reg_input(23),
      R => i_reset
    );
\reg_input_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(24),
      Q => reg_input(24),
      R => i_reset
    );
\reg_input_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(25),
      Q => reg_input(25),
      R => i_reset
    );
\reg_input_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(26),
      Q => reg_input(26),
      R => i_reset
    );
\reg_input_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(27),
      Q => reg_input(27),
      R => i_reset
    );
\reg_input_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(28),
      Q => reg_input(28),
      R => i_reset
    );
\reg_input_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(29),
      Q => reg_input(29),
      R => i_reset
    );
\reg_input_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(2),
      Q => mlp_wr_data(2),
      R => i_reset
    );
\reg_input_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(30),
      Q => reg_input(30),
      R => i_reset
    );
\reg_input_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(31),
      Q => reg_input(31),
      R => i_reset
    );
\reg_input_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(3),
      Q => mlp_wr_data(3),
      R => i_reset
    );
\reg_input_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(4),
      Q => mlp_wr_data(4),
      R => i_reset
    );
\reg_input_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(5),
      Q => mlp_wr_data(5),
      R => i_reset
    );
\reg_input_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(6),
      Q => mlp_wr_data(6),
      R => i_reset
    );
\reg_input_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(7),
      Q => mlp_wr_data(7),
      R => i_reset
    );
\reg_input_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(8),
      Q => mlp_wr_data(8),
      R => i_reset
    );
\reg_input_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reg_input_0(0),
      D => S_AXI_WDATA(9),
      Q => mlp_wr_data(9),
      R => i_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mlp_system_mlp_axi_wrapper_0_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    o_led : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mlp_system_mlp_axi_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mlp_system_mlp_axi_wrapper_0_0 : entity is "mlp_system_mlp_axi_wrapper_0_0,mlp_axi_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mlp_system_mlp_axi_wrapper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of mlp_system_mlp_axi_wrapper_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of mlp_system_mlp_axi_wrapper_0_0 : entity is "mlp_axi_wrapper,Vivado 2025.2";
end mlp_system_mlp_axi_wrapper_0_0;

architecture STRUCTURE of mlp_system_mlp_axi_wrapper_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of S_AXI_ACLK : signal is "slave S_AXI_ACLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN mlp_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_mode of S_AXI_ARESETN : signal is "slave S_AXI_ARESETN";
  attribute x_interface_parameter of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_mode of S_AXI_AWADDR : signal is "slave S_AXI";
  attribute x_interface_parameter of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN mlp_system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.mlp_system_mlp_axi_wrapper_0_0_mlp_axi_wrapper
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(3 downto 0) => S_AXI_ARADDR(3 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 0) => S_AXI_AWADDR(3 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      o_led(2 downto 0) => o_led(2 downto 0)
    );
end STRUCTURE;
