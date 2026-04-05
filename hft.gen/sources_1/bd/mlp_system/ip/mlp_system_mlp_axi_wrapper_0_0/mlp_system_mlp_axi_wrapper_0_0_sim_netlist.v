// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Mar 12 02:28:57 2026
// Host        : Batu running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/vivado
//               projects/hft/hft.gen/sources_1/bd/mlp_system/ip/mlp_system_mlp_axi_wrapper_0_0/mlp_system_mlp_axi_wrapper_0_0_sim_netlist.v}
// Design      : mlp_system_mlp_axi_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mlp_system_mlp_axi_wrapper_0_0,mlp_axi_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mlp_axi_wrapper,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module mlp_system_mlp_axi_wrapper_0_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    o_led);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_mode = "slave S_AXI_ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN mlp_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_mode = "slave S_AXI_ARESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_mode = "slave S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN mlp_system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  output [2:0]o_led;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [2:0]o_led;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mlp_system_mlp_axi_wrapper_0_0_mlp_axi_wrapper U0
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .o_led(o_led));
endmodule

(* ORIG_REF_NAME = "Controller_FSM" *) 
module mlp_system_mlp_axi_wrapper_0_0_Controller_FSM
   (i_wr_data,
    Q,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    \neuron_counter_reg[5]_0 ,
    SR,
    \input_counter_reg[5]_0 ,
    \layer_counter_reg[2]_0 ,
    i_rd_addr,
    \FSM_onehot_state_reg[3]_1 ,
    D,
    o_class_result,
    \neuron_counter_reg[1]_rep__4_0 ,
    \neuron_counter_reg[2]_rep__0_0 ,
    \layer_counter_reg[1]_0 ,
    \FSM_onehot_state_reg[10]_0 ,
    i_wr_addr,
    max_value,
    C,
    B,
    DI,
    S,
    \max_value[15]_i_4_0 ,
    \max_value[15]_i_4_1 ,
    S_AXI_ARESETN,
    P,
    CO,
    ram_a_reg,
    mlp_start,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[1]_0 ,
    \axi_rdata_reg[1]_1 ,
    \axi_rdata_reg[1]_2 ,
    select_reg,
    S_AXI_ACLK,
    \max_value_reg[15]_0 ,
    \max_value_reg[14]_0 ,
    \max_value_reg[13]_0 ,
    \max_value_reg[12]_0 ,
    \max_value_reg[11]_0 ,
    \max_value_reg[10]_0 ,
    \max_value_reg[9]_0 ,
    \max_value_reg[8]_0 ,
    \max_value_reg[7]_0 ,
    \max_value_reg[6]_0 ,
    \max_value_reg[5]_0 ,
    \max_value_reg[4]_0 ,
    \max_value_reg[3]_0 ,
    \max_value_reg[2]_0 ,
    \max_value_reg[1]_0 ,
    \max_value_reg[0]_0 );
  output [0:0]i_wr_data;
  output [2:0]Q;
  output \FSM_onehot_state_reg[0]_0 ;
  output \FSM_onehot_state_reg[3]_0 ;
  output [2:0]\neuron_counter_reg[5]_0 ;
  output [0:0]SR;
  output [3:0]\input_counter_reg[5]_0 ;
  output [0:0]\layer_counter_reg[2]_0 ;
  output [1:0]i_rd_addr;
  output \FSM_onehot_state_reg[3]_1 ;
  output [1:0]D;
  output [1:0]o_class_result;
  output \neuron_counter_reg[1]_rep__4_0 ;
  output \neuron_counter_reg[2]_rep__0_0 ;
  output \layer_counter_reg[1]_0 ;
  output \FSM_onehot_state_reg[10]_0 ;
  output [0:0]i_wr_addr;
  output [15:0]max_value;
  output [6:0]C;
  output [7:0]B;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\max_value[15]_i_4_0 ;
  input [3:0]\max_value[15]_i_4_1 ;
  input S_AXI_ARESETN;
  input [0:0]P;
  input [0:0]CO;
  input [0:0]ram_a_reg;
  input mlp_start;
  input [3:0]\axi_rdata_reg[1] ;
  input [1:0]\axi_rdata_reg[1]_0 ;
  input \axi_rdata_reg[1]_1 ;
  input [1:0]\axi_rdata_reg[1]_2 ;
  input select_reg;
  input S_AXI_ACLK;
  input \max_value_reg[15]_0 ;
  input \max_value_reg[14]_0 ;
  input \max_value_reg[13]_0 ;
  input \max_value_reg[12]_0 ;
  input \max_value_reg[11]_0 ;
  input \max_value_reg[10]_0 ;
  input \max_value_reg[9]_0 ;
  input \max_value_reg[8]_0 ;
  input \max_value_reg[7]_0 ;
  input \max_value_reg[6]_0 ;
  input \max_value_reg[5]_0 ;
  input \max_value_reg[4]_0 ;
  input \max_value_reg[3]_0 ;
  input \max_value_reg[2]_0 ;
  input \max_value_reg[1]_0 ;
  input \max_value_reg[0]_0 ;

  wire ARG_i_100_n_0;
  wire ARG_i_101_n_0;
  wire ARG_i_102_n_0;
  wire ARG_i_103_n_0;
  wire ARG_i_105_n_0;
  wire ARG_i_106_n_0;
  wire ARG_i_107_n_0;
  wire ARG_i_108_n_0;
  wire ARG_i_109_n_0;
  wire ARG_i_110_n_0;
  wire ARG_i_111_n_0;
  wire ARG_i_112_n_0;
  wire ARG_i_113_n_0;
  wire ARG_i_115_n_0;
  wire ARG_i_116_n_0;
  wire ARG_i_117_n_0;
  wire ARG_i_118_n_0;
  wire ARG_i_119_n_0;
  wire ARG_i_120_n_0;
  wire ARG_i_121_n_0;
  wire ARG_i_122_n_0;
  wire ARG_i_123_n_0;
  wire ARG_i_125_n_0;
  wire ARG_i_126_n_0;
  wire ARG_i_127_n_0;
  wire ARG_i_128_n_0;
  wire ARG_i_129_n_0;
  wire ARG_i_130_n_0;
  wire ARG_i_131_n_0;
  wire ARG_i_132_n_0;
  wire ARG_i_133_n_0;
  wire ARG_i_135_n_0;
  wire ARG_i_136_n_0;
  wire ARG_i_137_n_0;
  wire ARG_i_138_n_0;
  wire ARG_i_139_n_0;
  wire ARG_i_140_n_0;
  wire ARG_i_141_n_0;
  wire ARG_i_142_n_0;
  wire ARG_i_143_n_0;
  wire ARG_i_145_n_0;
  wire ARG_i_146_n_0;
  wire ARG_i_147_n_0;
  wire ARG_i_148_n_0;
  wire ARG_i_149_n_0;
  wire ARG_i_150_n_0;
  wire ARG_i_151_n_0;
  wire ARG_i_152_n_0;
  wire ARG_i_153_n_0;
  wire ARG_i_154_n_0;
  wire ARG_i_155_n_0;
  wire ARG_i_156_n_0;
  wire ARG_i_157_n_0;
  wire ARG_i_158_n_0;
  wire ARG_i_159_n_0;
  wire ARG_i_160_n_0;
  wire ARG_i_161_n_0;
  wire ARG_i_162_n_0;
  wire ARG_i_163_n_0;
  wire ARG_i_164_n_0;
  wire ARG_i_165_n_0;
  wire ARG_i_166_n_0;
  wire ARG_i_167_n_0;
  wire ARG_i_168_n_0;
  wire ARG_i_169_n_0;
  wire ARG_i_170_n_0;
  wire ARG_i_171_n_0;
  wire ARG_i_172_n_0;
  wire ARG_i_173_n_0;
  wire ARG_i_174_n_0;
  wire ARG_i_175_n_0;
  wire ARG_i_176_n_0;
  wire ARG_i_177_n_0;
  wire ARG_i_178_n_0;
  wire ARG_i_179_n_0;
  wire ARG_i_180_n_0;
  wire ARG_i_181_n_0;
  wire ARG_i_182_n_0;
  wire ARG_i_183_n_0;
  wire ARG_i_184_n_0;
  wire ARG_i_185_n_0;
  wire ARG_i_186_n_0;
  wire ARG_i_187_n_0;
  wire ARG_i_188_n_0;
  wire ARG_i_189_n_0;
  wire ARG_i_190_n_0;
  wire ARG_i_191_n_0;
  wire ARG_i_192_n_0;
  wire ARG_i_193_n_0;
  wire ARG_i_194_n_0;
  wire ARG_i_195_n_0;
  wire ARG_i_196_n_0;
  wire ARG_i_197_n_0;
  wire ARG_i_198_n_0;
  wire ARG_i_199_n_0;
  wire ARG_i_200_n_0;
  wire ARG_i_201_n_0;
  wire ARG_i_202_n_0;
  wire ARG_i_203_n_0;
  wire ARG_i_204_n_0;
  wire ARG_i_205_n_0;
  wire ARG_i_206_n_0;
  wire ARG_i_207_n_0;
  wire ARG_i_208_n_0;
  wire ARG_i_209_n_0;
  wire ARG_i_210_n_0;
  wire ARG_i_211_n_0;
  wire ARG_i_212_n_0;
  wire ARG_i_213_n_0;
  wire ARG_i_214_n_0;
  wire ARG_i_215_n_0;
  wire ARG_i_216_n_0;
  wire ARG_i_217_n_0;
  wire ARG_i_218_n_0;
  wire ARG_i_219_n_0;
  wire ARG_i_220_n_0;
  wire ARG_i_221_n_0;
  wire ARG_i_222_n_0;
  wire ARG_i_223_n_0;
  wire ARG_i_224_n_0;
  wire ARG_i_225_n_0;
  wire ARG_i_226_n_0;
  wire ARG_i_227_n_0;
  wire ARG_i_228_n_0;
  wire ARG_i_229_n_0;
  wire ARG_i_230_n_0;
  wire ARG_i_231_n_0;
  wire ARG_i_232_n_0;
  wire ARG_i_233_n_0;
  wire ARG_i_234_n_0;
  wire ARG_i_235_n_0;
  wire ARG_i_236_n_0;
  wire ARG_i_237_n_0;
  wire ARG_i_238_n_0;
  wire ARG_i_239_n_0;
  wire ARG_i_240_n_0;
  wire ARG_i_241_n_0;
  wire ARG_i_242_n_0;
  wire ARG_i_243_n_0;
  wire ARG_i_244_n_0;
  wire ARG_i_245_n_0;
  wire ARG_i_246_n_0;
  wire ARG_i_247_n_0;
  wire ARG_i_248_n_0;
  wire ARG_i_249_n_0;
  wire ARG_i_250_n_0;
  wire ARG_i_251_n_0;
  wire ARG_i_252_n_0;
  wire ARG_i_253_n_0;
  wire ARG_i_254_n_0;
  wire ARG_i_255_n_0;
  wire ARG_i_256_n_0;
  wire ARG_i_257_n_0;
  wire ARG_i_258_n_0;
  wire ARG_i_259_n_0;
  wire ARG_i_260_n_0;
  wire ARG_i_261_n_0;
  wire ARG_i_262_n_0;
  wire ARG_i_263_n_0;
  wire ARG_i_264_n_0;
  wire ARG_i_265_n_0;
  wire ARG_i_266_n_0;
  wire ARG_i_267_n_0;
  wire ARG_i_268_n_0;
  wire ARG_i_269_n_0;
  wire ARG_i_270_n_0;
  wire ARG_i_271_n_0;
  wire ARG_i_272_n_0;
  wire ARG_i_273_n_0;
  wire ARG_i_274_n_0;
  wire ARG_i_275_n_0;
  wire ARG_i_276_n_0;
  wire ARG_i_277_n_0;
  wire ARG_i_278_n_0;
  wire ARG_i_279_n_0;
  wire ARG_i_280_n_0;
  wire ARG_i_281_n_0;
  wire ARG_i_282_n_0;
  wire ARG_i_283_n_0;
  wire ARG_i_284_n_0;
  wire ARG_i_285_n_0;
  wire ARG_i_286_n_0;
  wire ARG_i_287_n_0;
  wire ARG_i_288_n_0;
  wire ARG_i_289_n_0;
  wire ARG_i_290_n_0;
  wire ARG_i_291_n_0;
  wire ARG_i_292_n_0;
  wire ARG_i_293_n_0;
  wire ARG_i_294_n_0;
  wire ARG_i_295_n_0;
  wire ARG_i_296_n_0;
  wire ARG_i_297_n_0;
  wire ARG_i_298_n_0;
  wire ARG_i_299_n_0;
  wire ARG_i_300_n_0;
  wire ARG_i_301_n_0;
  wire ARG_i_302_n_0;
  wire ARG_i_303_n_0;
  wire ARG_i_304_n_0;
  wire ARG_i_305_n_0;
  wire ARG_i_306_n_0;
  wire ARG_i_307_n_0;
  wire ARG_i_308_n_0;
  wire ARG_i_309_n_0;
  wire ARG_i_310_n_0;
  wire ARG_i_311_n_0;
  wire ARG_i_312_n_0;
  wire ARG_i_313_n_0;
  wire ARG_i_314_n_0;
  wire ARG_i_315_n_0;
  wire ARG_i_316_n_0;
  wire ARG_i_317_n_0;
  wire ARG_i_318_n_0;
  wire ARG_i_319_n_0;
  wire ARG_i_320_n_0;
  wire ARG_i_321_n_0;
  wire ARG_i_322_n_0;
  wire ARG_i_323_n_0;
  wire ARG_i_324_n_0;
  wire ARG_i_325_n_0;
  wire ARG_i_326_n_0;
  wire ARG_i_327_n_0;
  wire ARG_i_328_n_0;
  wire ARG_i_329_n_0;
  wire ARG_i_330_n_0;
  wire ARG_i_331_n_0;
  wire ARG_i_332_n_0;
  wire ARG_i_333_n_0;
  wire ARG_i_334_n_0;
  wire ARG_i_335_n_0;
  wire ARG_i_336_n_0;
  wire ARG_i_337_n_0;
  wire ARG_i_338_n_0;
  wire ARG_i_339_n_0;
  wire ARG_i_340_n_0;
  wire ARG_i_341_n_0;
  wire ARG_i_342_n_0;
  wire ARG_i_343_n_0;
  wire ARG_i_344_n_0;
  wire ARG_i_345_n_0;
  wire ARG_i_346_n_0;
  wire ARG_i_347_n_0;
  wire ARG_i_348_n_0;
  wire ARG_i_349_n_0;
  wire ARG_i_350_n_0;
  wire ARG_i_351_n_0;
  wire ARG_i_352_n_0;
  wire ARG_i_353_n_0;
  wire ARG_i_354_n_0;
  wire ARG_i_355_n_0;
  wire ARG_i_356_n_0;
  wire ARG_i_357_n_0;
  wire ARG_i_358_n_0;
  wire ARG_i_359_n_0;
  wire ARG_i_360_n_0;
  wire ARG_i_361_n_0;
  wire ARG_i_362_n_0;
  wire ARG_i_363_n_0;
  wire ARG_i_364_n_0;
  wire ARG_i_365_n_0;
  wire ARG_i_366_n_0;
  wire ARG_i_367_n_0;
  wire ARG_i_368_n_0;
  wire ARG_i_369_n_0;
  wire ARG_i_36_n_0;
  wire ARG_i_370_n_0;
  wire ARG_i_371_n_0;
  wire ARG_i_372_n_0;
  wire ARG_i_373_n_0;
  wire ARG_i_374_n_0;
  wire ARG_i_375_n_0;
  wire ARG_i_376_n_0;
  wire ARG_i_377_n_0;
  wire ARG_i_378_n_0;
  wire ARG_i_379_n_0;
  wire ARG_i_380_n_0;
  wire ARG_i_381_n_0;
  wire ARG_i_382_n_0;
  wire ARG_i_383_n_0;
  wire ARG_i_384_n_0;
  wire ARG_i_385_n_0;
  wire ARG_i_386_n_0;
  wire ARG_i_387_n_0;
  wire ARG_i_388_n_0;
  wire ARG_i_389_n_0;
  wire ARG_i_390_n_0;
  wire ARG_i_391_n_0;
  wire ARG_i_392_n_0;
  wire ARG_i_393_n_0;
  wire ARG_i_394_n_0;
  wire ARG_i_395_n_0;
  wire ARG_i_396_n_0;
  wire ARG_i_397_n_0;
  wire ARG_i_398_n_0;
  wire ARG_i_399_n_0;
  wire ARG_i_400_n_0;
  wire ARG_i_401_n_0;
  wire ARG_i_402_n_0;
  wire ARG_i_403_n_0;
  wire ARG_i_404_n_0;
  wire ARG_i_405_n_0;
  wire ARG_i_406_n_0;
  wire ARG_i_407_n_0;
  wire ARG_i_408_n_0;
  wire ARG_i_409_n_0;
  wire ARG_i_410_n_0;
  wire ARG_i_411_n_0;
  wire ARG_i_412_n_0;
  wire ARG_i_413_n_0;
  wire ARG_i_414_n_0;
  wire ARG_i_415_n_0;
  wire ARG_i_416_n_0;
  wire ARG_i_417_n_0;
  wire ARG_i_418_n_0;
  wire ARG_i_419_n_0;
  wire ARG_i_41_n_0;
  wire ARG_i_420_n_0;
  wire ARG_i_421_n_0;
  wire ARG_i_422_n_0;
  wire ARG_i_423_n_0;
  wire ARG_i_424_n_0;
  wire ARG_i_425_n_0;
  wire ARG_i_426_n_0;
  wire ARG_i_427_n_0;
  wire ARG_i_428_n_0;
  wire ARG_i_429_n_0;
  wire ARG_i_42_n_0;
  wire ARG_i_430_n_0;
  wire ARG_i_431_n_0;
  wire ARG_i_432_n_0;
  wire ARG_i_433_n_0;
  wire ARG_i_434_n_0;
  wire ARG_i_435_n_0;
  wire ARG_i_436_n_0;
  wire ARG_i_437_n_0;
  wire ARG_i_438_n_0;
  wire ARG_i_439_n_0;
  wire ARG_i_43_n_0;
  wire ARG_i_440_n_0;
  wire ARG_i_441_n_0;
  wire ARG_i_442_n_0;
  wire ARG_i_443_n_0;
  wire ARG_i_444_n_0;
  wire ARG_i_445_n_0;
  wire ARG_i_446_n_0;
  wire ARG_i_447_n_0;
  wire ARG_i_448_n_0;
  wire ARG_i_449_n_0;
  wire ARG_i_44_n_0;
  wire ARG_i_450_n_0;
  wire ARG_i_451_n_0;
  wire ARG_i_452_n_0;
  wire ARG_i_453_n_0;
  wire ARG_i_454_n_0;
  wire ARG_i_455_n_0;
  wire ARG_i_456_n_0;
  wire ARG_i_457_n_0;
  wire ARG_i_458_n_0;
  wire ARG_i_459_n_0;
  wire ARG_i_45_n_0;
  wire ARG_i_460_n_0;
  wire ARG_i_461_n_0;
  wire ARG_i_462_n_0;
  wire ARG_i_463_n_0;
  wire ARG_i_464_n_0;
  wire ARG_i_465_n_0;
  wire ARG_i_466_n_0;
  wire ARG_i_467_n_0;
  wire ARG_i_468_n_0;
  wire ARG_i_469_n_0;
  wire ARG_i_46_n_0;
  wire ARG_i_470_n_0;
  wire ARG_i_471_n_0;
  wire ARG_i_472_n_0;
  wire ARG_i_473_n_0;
  wire ARG_i_474_n_0;
  wire ARG_i_475_n_0;
  wire ARG_i_476_n_0;
  wire ARG_i_477_n_0;
  wire ARG_i_478_n_0;
  wire ARG_i_479_n_0;
  wire ARG_i_47_n_0;
  wire ARG_i_480_n_0;
  wire ARG_i_481_n_0;
  wire ARG_i_482_n_0;
  wire ARG_i_483_n_0;
  wire ARG_i_484_n_0;
  wire ARG_i_485_n_0;
  wire ARG_i_486_n_0;
  wire ARG_i_487_n_0;
  wire ARG_i_488_n_0;
  wire ARG_i_489_n_0;
  wire ARG_i_48_n_0;
  wire ARG_i_490_n_0;
  wire ARG_i_491_n_0;
  wire ARG_i_492_n_0;
  wire ARG_i_493_n_0;
  wire ARG_i_494_n_0;
  wire ARG_i_495_n_0;
  wire ARG_i_496_n_0;
  wire ARG_i_497_n_0;
  wire ARG_i_498_n_0;
  wire ARG_i_499_n_0;
  wire ARG_i_49_n_0;
  wire ARG_i_500_n_0;
  wire ARG_i_501_n_0;
  wire ARG_i_502_n_0;
  wire ARG_i_503_n_0;
  wire ARG_i_504_n_0;
  wire ARG_i_505_n_0;
  wire ARG_i_506_n_0;
  wire ARG_i_507_n_0;
  wire ARG_i_508_n_0;
  wire ARG_i_509_n_0;
  wire ARG_i_50_n_0;
  wire ARG_i_510_n_0;
  wire ARG_i_511_n_0;
  wire ARG_i_512_n_0;
  wire ARG_i_513_n_0;
  wire ARG_i_514_n_0;
  wire ARG_i_515_n_0;
  wire ARG_i_516_n_0;
  wire ARG_i_517_n_0;
  wire ARG_i_518_n_0;
  wire ARG_i_519_n_0;
  wire ARG_i_51_n_0;
  wire ARG_i_520_n_0;
  wire ARG_i_521_n_0;
  wire ARG_i_522_n_0;
  wire ARG_i_523_n_0;
  wire ARG_i_524_n_0;
  wire ARG_i_525_n_0;
  wire ARG_i_526_n_0;
  wire ARG_i_527_n_0;
  wire ARG_i_528_n_0;
  wire ARG_i_529_n_0;
  wire ARG_i_52_n_0;
  wire ARG_i_530_n_0;
  wire ARG_i_531_n_0;
  wire ARG_i_532_n_0;
  wire ARG_i_533_n_0;
  wire ARG_i_534_n_0;
  wire ARG_i_535_n_0;
  wire ARG_i_536_n_0;
  wire ARG_i_537_n_0;
  wire ARG_i_538_n_0;
  wire ARG_i_539_n_0;
  wire ARG_i_53_n_0;
  wire ARG_i_540_n_0;
  wire ARG_i_541_n_0;
  wire ARG_i_542_n_0;
  wire ARG_i_543_n_0;
  wire ARG_i_544_n_0;
  wire ARG_i_545_n_0;
  wire ARG_i_546_n_0;
  wire ARG_i_547_n_0;
  wire ARG_i_548_n_0;
  wire ARG_i_549_n_0;
  wire ARG_i_54_n_0;
  wire ARG_i_550_n_0;
  wire ARG_i_551_n_0;
  wire ARG_i_552_n_0;
  wire ARG_i_553_n_0;
  wire ARG_i_554_n_0;
  wire ARG_i_555_n_0;
  wire ARG_i_556_n_0;
  wire ARG_i_557_n_0;
  wire ARG_i_558_n_0;
  wire ARG_i_559_n_0;
  wire ARG_i_55_n_0;
  wire ARG_i_560_n_0;
  wire ARG_i_561_n_0;
  wire ARG_i_562_n_0;
  wire ARG_i_563_n_0;
  wire ARG_i_564_n_0;
  wire ARG_i_565_n_0;
  wire ARG_i_566_n_0;
  wire ARG_i_567_n_0;
  wire ARG_i_568_n_0;
  wire ARG_i_569_n_0;
  wire ARG_i_56_n_0;
  wire ARG_i_570_n_0;
  wire ARG_i_571_n_0;
  wire ARG_i_572_n_0;
  wire ARG_i_573_n_0;
  wire ARG_i_574_n_0;
  wire ARG_i_575_n_0;
  wire ARG_i_576_n_0;
  wire ARG_i_577_n_0;
  wire ARG_i_578_n_0;
  wire ARG_i_579_n_0;
  wire ARG_i_57_n_0;
  wire ARG_i_580_n_0;
  wire ARG_i_581_n_0;
  wire ARG_i_582_n_0;
  wire ARG_i_583_n_0;
  wire ARG_i_584_n_0;
  wire ARG_i_585_n_0;
  wire ARG_i_586_n_0;
  wire ARG_i_587_n_0;
  wire ARG_i_588_n_0;
  wire ARG_i_589_n_0;
  wire ARG_i_58_n_0;
  wire ARG_i_590_n_0;
  wire ARG_i_591_n_0;
  wire ARG_i_592_n_0;
  wire ARG_i_593_n_0;
  wire ARG_i_594_n_0;
  wire ARG_i_595_n_0;
  wire ARG_i_596_n_0;
  wire ARG_i_597_n_0;
  wire ARG_i_598_n_0;
  wire ARG_i_599_n_0;
  wire ARG_i_59_n_0;
  wire ARG_i_600_n_0;
  wire ARG_i_601_n_0;
  wire ARG_i_602_n_0;
  wire ARG_i_603_n_0;
  wire ARG_i_604_n_0;
  wire ARG_i_605_n_0;
  wire ARG_i_606_n_0;
  wire ARG_i_607_n_0;
  wire ARG_i_608_n_0;
  wire ARG_i_609_n_0;
  wire ARG_i_60_n_0;
  wire ARG_i_610_n_0;
  wire ARG_i_611_n_0;
  wire ARG_i_612_n_0;
  wire ARG_i_613_n_0;
  wire ARG_i_614_n_0;
  wire ARG_i_615_n_0;
  wire ARG_i_616_n_0;
  wire ARG_i_617_n_0;
  wire ARG_i_618_n_0;
  wire ARG_i_619_n_0;
  wire ARG_i_61_n_0;
  wire ARG_i_620_n_0;
  wire ARG_i_621_n_0;
  wire ARG_i_622_n_0;
  wire ARG_i_623_n_0;
  wire ARG_i_624_n_0;
  wire ARG_i_625_n_0;
  wire ARG_i_626_n_0;
  wire ARG_i_627_n_0;
  wire ARG_i_628_n_0;
  wire ARG_i_629_n_0;
  wire ARG_i_62_n_0;
  wire ARG_i_630_n_0;
  wire ARG_i_631_n_0;
  wire ARG_i_632_n_0;
  wire ARG_i_633_n_0;
  wire ARG_i_634_n_0;
  wire ARG_i_635_n_0;
  wire ARG_i_636_n_0;
  wire ARG_i_637_n_0;
  wire ARG_i_638_n_0;
  wire ARG_i_639_n_0;
  wire ARG_i_640_n_0;
  wire ARG_i_641_n_0;
  wire ARG_i_642_n_0;
  wire ARG_i_643_n_0;
  wire ARG_i_644_n_0;
  wire ARG_i_645_n_0;
  wire ARG_i_646_n_0;
  wire ARG_i_647_n_0;
  wire ARG_i_648_n_0;
  wire ARG_i_649_n_0;
  wire ARG_i_64_n_0;
  wire ARG_i_650_n_0;
  wire ARG_i_651_n_0;
  wire ARG_i_652_n_0;
  wire ARG_i_653_n_0;
  wire ARG_i_654_n_0;
  wire ARG_i_655_n_0;
  wire ARG_i_656_n_0;
  wire ARG_i_657_n_0;
  wire ARG_i_658_n_0;
  wire ARG_i_659_n_0;
  wire ARG_i_65_n_0;
  wire ARG_i_660_n_0;
  wire ARG_i_661_n_0;
  wire ARG_i_662_n_0;
  wire ARG_i_663_n_0;
  wire ARG_i_664_n_0;
  wire ARG_i_665_n_0;
  wire ARG_i_666_n_0;
  wire ARG_i_667_n_0;
  wire ARG_i_668_n_0;
  wire ARG_i_669_n_0;
  wire ARG_i_66_n_0;
  wire ARG_i_670_n_0;
  wire ARG_i_67_n_0;
  wire ARG_i_68_n_0;
  wire ARG_i_69_n_0;
  wire ARG_i_70_n_0;
  wire ARG_i_71_n_0;
  wire ARG_i_72_n_0;
  wire ARG_i_73_n_0;
  wire ARG_i_74_n_0;
  wire ARG_i_75_n_0;
  wire ARG_i_76_n_0;
  wire ARG_i_77_n_0;
  wire ARG_i_78_n_0;
  wire ARG_i_79_n_0;
  wire ARG_i_80_n_0;
  wire ARG_i_81_n_0;
  wire ARG_i_82_n_0;
  wire ARG_i_83_n_0;
  wire ARG_i_84_n_0;
  wire ARG_i_85_n_0;
  wire ARG_i_86_n_0;
  wire ARG_i_87_n_0;
  wire ARG_i_88_n_0;
  wire ARG_i_89_n_0;
  wire ARG_i_90_n_0;
  wire ARG_i_91_n_0;
  wire ARG_i_92_n_0;
  wire ARG_i_93_n_0;
  wire ARG_i_94_n_0;
  wire ARG_i_95_n_0;
  wire ARG_i_96_n_0;
  wire ARG_i_97_n_0;
  wire ARG_i_98_n_0;
  wire ARG_i_99_n_0;
  wire [7:0]B;
  wire [6:0]C;
  wire [0:0]CO;
  wire [1:0]D;
  wire [3:0]DI;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_2_n_0 ;
  wire \FSM_onehot_state[10]_i_3_n_0 ;
  wire \FSM_onehot_state[10]_i_4_n_0 ;
  wire \FSM_onehot_state[10]_i_5_n_0 ;
  wire \FSM_onehot_state[10]_i_6_n_0 ;
  wire \FSM_onehot_state[10]_i_7_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_2_n_0 ;
  wire \FSM_onehot_state[7]_i_3_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[10]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [0:0]P;
  wire [2:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire __9;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire [3:0]\axi_rdata_reg[1] ;
  wire [1:0]\axi_rdata_reg[1]_0 ;
  wire \axi_rdata_reg[1]_1 ;
  wire [1:0]\axi_rdata_reg[1]_2 ;
  wire \compare_counter[0]_i_1_n_0 ;
  wire \compare_counter[1]_i_1_n_0 ;
  wire \compare_counter_reg_n_0_[0] ;
  wire \compare_counter_reg_n_0_[1] ;
  wire [1:0]fsm_input_addr;
  wire g0_b0__0_n_0;
  wire g0_b0__100_n_0;
  wire g0_b0__101_n_0;
  wire g0_b0__102_n_0;
  wire g0_b0__104_n_0;
  wire g0_b0__10_n_0;
  wire g0_b0__11_n_0;
  wire g0_b0__12_n_0;
  wire g0_b0__13_n_0;
  wire g0_b0__14_n_0;
  wire g0_b0__15_n_0;
  wire g0_b0__16_n_0;
  wire g0_b0__17_n_0;
  wire g0_b0__18_n_0;
  wire g0_b0__19_n_0;
  wire g0_b0__1_n_0;
  wire g0_b0__20_n_0;
  wire g0_b0__21_n_0;
  wire g0_b0__22_n_0;
  wire g0_b0__23_n_0;
  wire g0_b0__24_n_0;
  wire g0_b0__25_n_0;
  wire g0_b0__26_n_0;
  wire g0_b0__27_n_0;
  wire g0_b0__28_n_0;
  wire g0_b0__29_n_0;
  wire g0_b0__2_n_0;
  wire g0_b0__30_n_0;
  wire g0_b0__31_n_0;
  wire g0_b0__32_n_0;
  wire g0_b0__33_n_0;
  wire g0_b0__34_n_0;
  wire g0_b0__35_n_0;
  wire g0_b0__36_n_0;
  wire g0_b0__37_n_0;
  wire g0_b0__38_n_0;
  wire g0_b0__39_n_0;
  wire g0_b0__3_n_0;
  wire g0_b0__40_n_0;
  wire g0_b0__41_n_0;
  wire g0_b0__42_n_0;
  wire g0_b0__43_n_0;
  wire g0_b0__44_n_0;
  wire g0_b0__45_n_0;
  wire g0_b0__46_n_0;
  wire g0_b0__47_n_0;
  wire g0_b0__48_n_0;
  wire g0_b0__49_n_0;
  wire g0_b0__4_n_0;
  wire g0_b0__50_n_0;
  wire g0_b0__51_n_0;
  wire g0_b0__52_n_0;
  wire g0_b0__53_n_0;
  wire g0_b0__54_n_0;
  wire g0_b0__55_n_0;
  wire g0_b0__56_n_0;
  wire g0_b0__57_n_0;
  wire g0_b0__58_n_0;
  wire g0_b0__59_n_0;
  wire g0_b0__5_n_0;
  wire g0_b0__60_n_0;
  wire g0_b0__61_n_0;
  wire g0_b0__62_n_0;
  wire g0_b0__63_n_0;
  wire g0_b0__64_n_0;
  wire g0_b0__65_n_0;
  wire g0_b0__66_n_0;
  wire g0_b0__67_n_0;
  wire g0_b0__68_n_0;
  wire g0_b0__69_n_0;
  wire g0_b0__6_n_0;
  wire g0_b0__70_n_0;
  wire g0_b0__71_n_0;
  wire g0_b0__72_n_0;
  wire g0_b0__73_n_0;
  wire g0_b0__74_n_0;
  wire g0_b0__75_n_0;
  wire g0_b0__76_n_0;
  wire g0_b0__77_n_0;
  wire g0_b0__78_n_0;
  wire g0_b0__79_n_0;
  wire g0_b0__7_n_0;
  wire g0_b0__80_n_0;
  wire g0_b0__81_n_0;
  wire g0_b0__82_n_0;
  wire g0_b0__83_n_0;
  wire g0_b0__84_n_0;
  wire g0_b0__85_n_0;
  wire g0_b0__86_n_0;
  wire g0_b0__87_n_0;
  wire g0_b0__88_n_0;
  wire g0_b0__89_n_0;
  wire g0_b0__8_n_0;
  wire g0_b0__90_n_0;
  wire g0_b0__91_n_0;
  wire g0_b0__92_n_0;
  wire g0_b0__93_n_0;
  wire g0_b0__94_n_0;
  wire g0_b0__95_n_0;
  wire g0_b0__96_n_0;
  wire g0_b0__97_n_0;
  wire g0_b0__98_n_0;
  wire g0_b0__99_n_0;
  wire g0_b0__9_n_0;
  wire g0_b0_n_0;
  wire g0_b1__0_n_0;
  wire g0_b1__100_n_0;
  wire g0_b1__101_n_0;
  wire g0_b1__102_n_0;
  wire g0_b1__104_n_0;
  wire g0_b1__10_n_0;
  wire g0_b1__11_n_0;
  wire g0_b1__12_n_0;
  wire g0_b1__13_n_0;
  wire g0_b1__14_n_0;
  wire g0_b1__15_n_0;
  wire g0_b1__16_n_0;
  wire g0_b1__17_n_0;
  wire g0_b1__18_n_0;
  wire g0_b1__19_n_0;
  wire g0_b1__1_n_0;
  wire g0_b1__20_n_0;
  wire g0_b1__21_n_0;
  wire g0_b1__22_n_0;
  wire g0_b1__23_n_0;
  wire g0_b1__24_n_0;
  wire g0_b1__25_n_0;
  wire g0_b1__26_n_0;
  wire g0_b1__27_n_0;
  wire g0_b1__28_n_0;
  wire g0_b1__29_n_0;
  wire g0_b1__2_n_0;
  wire g0_b1__30_n_0;
  wire g0_b1__31_n_0;
  wire g0_b1__32_n_0;
  wire g0_b1__33_n_0;
  wire g0_b1__34_n_0;
  wire g0_b1__35_n_0;
  wire g0_b1__36_n_0;
  wire g0_b1__37_n_0;
  wire g0_b1__38_n_0;
  wire g0_b1__39_n_0;
  wire g0_b1__3_n_0;
  wire g0_b1__40_n_0;
  wire g0_b1__41_n_0;
  wire g0_b1__42_n_0;
  wire g0_b1__43_n_0;
  wire g0_b1__44_n_0;
  wire g0_b1__45_n_0;
  wire g0_b1__46_n_0;
  wire g0_b1__47_n_0;
  wire g0_b1__48_n_0;
  wire g0_b1__49_n_0;
  wire g0_b1__4_n_0;
  wire g0_b1__50_n_0;
  wire g0_b1__51_n_0;
  wire g0_b1__52_n_0;
  wire g0_b1__53_n_0;
  wire g0_b1__54_n_0;
  wire g0_b1__55_n_0;
  wire g0_b1__56_n_0;
  wire g0_b1__57_n_0;
  wire g0_b1__58_n_0;
  wire g0_b1__59_n_0;
  wire g0_b1__5_n_0;
  wire g0_b1__60_n_0;
  wire g0_b1__61_n_0;
  wire g0_b1__62_n_0;
  wire g0_b1__63_n_0;
  wire g0_b1__64_n_0;
  wire g0_b1__65_n_0;
  wire g0_b1__66_n_0;
  wire g0_b1__67_n_0;
  wire g0_b1__68_n_0;
  wire g0_b1__69_n_0;
  wire g0_b1__6_n_0;
  wire g0_b1__70_n_0;
  wire g0_b1__71_n_0;
  wire g0_b1__72_n_0;
  wire g0_b1__73_n_0;
  wire g0_b1__74_n_0;
  wire g0_b1__75_n_0;
  wire g0_b1__76_n_0;
  wire g0_b1__77_n_0;
  wire g0_b1__78_n_0;
  wire g0_b1__79_n_0;
  wire g0_b1__7_n_0;
  wire g0_b1__80_n_0;
  wire g0_b1__81_n_0;
  wire g0_b1__82_n_0;
  wire g0_b1__83_n_0;
  wire g0_b1__84_n_0;
  wire g0_b1__85_n_0;
  wire g0_b1__86_n_0;
  wire g0_b1__87_n_0;
  wire g0_b1__88_n_0;
  wire g0_b1__89_n_0;
  wire g0_b1__8_n_0;
  wire g0_b1__90_n_0;
  wire g0_b1__91_n_0;
  wire g0_b1__92_n_0;
  wire g0_b1__93_n_0;
  wire g0_b1__94_n_0;
  wire g0_b1__95_n_0;
  wire g0_b1__96_n_0;
  wire g0_b1__97_n_0;
  wire g0_b1__98_n_0;
  wire g0_b1__99_n_0;
  wire g0_b1__9_n_0;
  wire g0_b1_n_0;
  wire g0_b2__0_n_0;
  wire g0_b2__100_n_0;
  wire g0_b2__101_n_0;
  wire g0_b2__102_n_0;
  wire g0_b2__104_n_0;
  wire g0_b2__10_n_0;
  wire g0_b2__11_n_0;
  wire g0_b2__12_n_0;
  wire g0_b2__13_n_0;
  wire g0_b2__14_n_0;
  wire g0_b2__15_n_0;
  wire g0_b2__16_n_0;
  wire g0_b2__17_n_0;
  wire g0_b2__18_n_0;
  wire g0_b2__19_n_0;
  wire g0_b2__1_n_0;
  wire g0_b2__20_n_0;
  wire g0_b2__21_n_0;
  wire g0_b2__22_n_0;
  wire g0_b2__23_n_0;
  wire g0_b2__24_n_0;
  wire g0_b2__25_n_0;
  wire g0_b2__26_n_0;
  wire g0_b2__27_n_0;
  wire g0_b2__28_n_0;
  wire g0_b2__29_n_0;
  wire g0_b2__2_n_0;
  wire g0_b2__30_n_0;
  wire g0_b2__31_n_0;
  wire g0_b2__32_n_0;
  wire g0_b2__33_n_0;
  wire g0_b2__34_n_0;
  wire g0_b2__35_n_0;
  wire g0_b2__36_n_0;
  wire g0_b2__37_n_0;
  wire g0_b2__38_n_0;
  wire g0_b2__39_n_0;
  wire g0_b2__3_n_0;
  wire g0_b2__40_n_0;
  wire g0_b2__41_n_0;
  wire g0_b2__42_n_0;
  wire g0_b2__43_n_0;
  wire g0_b2__44_n_0;
  wire g0_b2__45_n_0;
  wire g0_b2__46_n_0;
  wire g0_b2__47_n_0;
  wire g0_b2__48_n_0;
  wire g0_b2__49_n_0;
  wire g0_b2__4_n_0;
  wire g0_b2__50_n_0;
  wire g0_b2__51_n_0;
  wire g0_b2__52_n_0;
  wire g0_b2__53_n_0;
  wire g0_b2__54_n_0;
  wire g0_b2__55_n_0;
  wire g0_b2__56_n_0;
  wire g0_b2__57_n_0;
  wire g0_b2__58_n_0;
  wire g0_b2__59_n_0;
  wire g0_b2__5_n_0;
  wire g0_b2__60_n_0;
  wire g0_b2__61_n_0;
  wire g0_b2__62_n_0;
  wire g0_b2__63_n_0;
  wire g0_b2__64_n_0;
  wire g0_b2__65_n_0;
  wire g0_b2__66_n_0;
  wire g0_b2__67_n_0;
  wire g0_b2__68_n_0;
  wire g0_b2__69_n_0;
  wire g0_b2__6_n_0;
  wire g0_b2__70_n_0;
  wire g0_b2__71_n_0;
  wire g0_b2__72_n_0;
  wire g0_b2__73_n_0;
  wire g0_b2__74_n_0;
  wire g0_b2__75_n_0;
  wire g0_b2__76_n_0;
  wire g0_b2__77_n_0;
  wire g0_b2__78_n_0;
  wire g0_b2__79_n_0;
  wire g0_b2__7_n_0;
  wire g0_b2__80_n_0;
  wire g0_b2__81_n_0;
  wire g0_b2__82_n_0;
  wire g0_b2__83_n_0;
  wire g0_b2__84_n_0;
  wire g0_b2__85_n_0;
  wire g0_b2__86_n_0;
  wire g0_b2__87_n_0;
  wire g0_b2__88_n_0;
  wire g0_b2__89_n_0;
  wire g0_b2__8_n_0;
  wire g0_b2__90_n_0;
  wire g0_b2__91_n_0;
  wire g0_b2__92_n_0;
  wire g0_b2__93_n_0;
  wire g0_b2__94_n_0;
  wire g0_b2__95_n_0;
  wire g0_b2__96_n_0;
  wire g0_b2__97_n_0;
  wire g0_b2__98_n_0;
  wire g0_b2__99_n_0;
  wire g0_b2__9_n_0;
  wire g0_b2_n_0;
  wire g0_b3__0_n_0;
  wire g0_b3__100_n_0;
  wire g0_b3__101_n_0;
  wire g0_b3__102_n_0;
  wire g0_b3__104_n_0;
  wire g0_b3__10_n_0;
  wire g0_b3__11_n_0;
  wire g0_b3__12_n_0;
  wire g0_b3__13_n_0;
  wire g0_b3__14_n_0;
  wire g0_b3__15_n_0;
  wire g0_b3__16_n_0;
  wire g0_b3__17_n_0;
  wire g0_b3__18_n_0;
  wire g0_b3__19_n_0;
  wire g0_b3__1_n_0;
  wire g0_b3__20_n_0;
  wire g0_b3__21_n_0;
  wire g0_b3__22_n_0;
  wire g0_b3__23_n_0;
  wire g0_b3__24_n_0;
  wire g0_b3__25_n_0;
  wire g0_b3__26_n_0;
  wire g0_b3__27_n_0;
  wire g0_b3__28_n_0;
  wire g0_b3__29_n_0;
  wire g0_b3__2_n_0;
  wire g0_b3__30_n_0;
  wire g0_b3__31_n_0;
  wire g0_b3__32_n_0;
  wire g0_b3__33_n_0;
  wire g0_b3__34_n_0;
  wire g0_b3__35_n_0;
  wire g0_b3__36_n_0;
  wire g0_b3__37_n_0;
  wire g0_b3__38_n_0;
  wire g0_b3__39_n_0;
  wire g0_b3__3_n_0;
  wire g0_b3__40_n_0;
  wire g0_b3__41_n_0;
  wire g0_b3__42_n_0;
  wire g0_b3__43_n_0;
  wire g0_b3__44_n_0;
  wire g0_b3__45_n_0;
  wire g0_b3__46_n_0;
  wire g0_b3__47_n_0;
  wire g0_b3__48_n_0;
  wire g0_b3__49_n_0;
  wire g0_b3__4_n_0;
  wire g0_b3__50_n_0;
  wire g0_b3__51_n_0;
  wire g0_b3__52_n_0;
  wire g0_b3__53_n_0;
  wire g0_b3__54_n_0;
  wire g0_b3__55_n_0;
  wire g0_b3__56_n_0;
  wire g0_b3__57_n_0;
  wire g0_b3__58_n_0;
  wire g0_b3__59_n_0;
  wire g0_b3__5_n_0;
  wire g0_b3__60_n_0;
  wire g0_b3__61_n_0;
  wire g0_b3__62_n_0;
  wire g0_b3__63_n_0;
  wire g0_b3__64_n_0;
  wire g0_b3__65_n_0;
  wire g0_b3__66_n_0;
  wire g0_b3__67_n_0;
  wire g0_b3__68_n_0;
  wire g0_b3__69_n_0;
  wire g0_b3__6_n_0;
  wire g0_b3__70_n_0;
  wire g0_b3__71_n_0;
  wire g0_b3__72_n_0;
  wire g0_b3__73_n_0;
  wire g0_b3__74_n_0;
  wire g0_b3__75_n_0;
  wire g0_b3__76_n_0;
  wire g0_b3__77_n_0;
  wire g0_b3__78_n_0;
  wire g0_b3__79_n_0;
  wire g0_b3__7_n_0;
  wire g0_b3__80_n_0;
  wire g0_b3__81_n_0;
  wire g0_b3__82_n_0;
  wire g0_b3__83_n_0;
  wire g0_b3__84_n_0;
  wire g0_b3__85_n_0;
  wire g0_b3__86_n_0;
  wire g0_b3__87_n_0;
  wire g0_b3__88_n_0;
  wire g0_b3__89_n_0;
  wire g0_b3__8_n_0;
  wire g0_b3__90_n_0;
  wire g0_b3__91_n_0;
  wire g0_b3__92_n_0;
  wire g0_b3__93_n_0;
  wire g0_b3__94_n_0;
  wire g0_b3__95_n_0;
  wire g0_b3__96_n_0;
  wire g0_b3__97_n_0;
  wire g0_b3__98_n_0;
  wire g0_b3__99_n_0;
  wire g0_b3__9_n_0;
  wire g0_b3_n_0;
  wire g0_b4__0_n_0;
  wire g0_b4__100_n_0;
  wire g0_b4__101_n_0;
  wire g0_b4__102_n_0;
  wire g0_b4__104_n_0;
  wire g0_b4__10_n_0;
  wire g0_b4__11_n_0;
  wire g0_b4__12_n_0;
  wire g0_b4__13_n_0;
  wire g0_b4__14_n_0;
  wire g0_b4__15_n_0;
  wire g0_b4__16_n_0;
  wire g0_b4__17_n_0;
  wire g0_b4__18_n_0;
  wire g0_b4__19_n_0;
  wire g0_b4__1_n_0;
  wire g0_b4__20_n_0;
  wire g0_b4__21_n_0;
  wire g0_b4__22_n_0;
  wire g0_b4__23_n_0;
  wire g0_b4__24_n_0;
  wire g0_b4__25_n_0;
  wire g0_b4__26_n_0;
  wire g0_b4__27_n_0;
  wire g0_b4__28_n_0;
  wire g0_b4__29_n_0;
  wire g0_b4__2_n_0;
  wire g0_b4__30_n_0;
  wire g0_b4__31_n_0;
  wire g0_b4__32_n_0;
  wire g0_b4__33_n_0;
  wire g0_b4__34_n_0;
  wire g0_b4__35_n_0;
  wire g0_b4__36_n_0;
  wire g0_b4__37_n_0;
  wire g0_b4__38_n_0;
  wire g0_b4__39_n_0;
  wire g0_b4__3_n_0;
  wire g0_b4__40_n_0;
  wire g0_b4__41_n_0;
  wire g0_b4__42_n_0;
  wire g0_b4__43_n_0;
  wire g0_b4__44_n_0;
  wire g0_b4__45_n_0;
  wire g0_b4__46_n_0;
  wire g0_b4__47_n_0;
  wire g0_b4__48_n_0;
  wire g0_b4__49_n_0;
  wire g0_b4__4_n_0;
  wire g0_b4__50_n_0;
  wire g0_b4__51_n_0;
  wire g0_b4__52_n_0;
  wire g0_b4__53_n_0;
  wire g0_b4__54_n_0;
  wire g0_b4__55_n_0;
  wire g0_b4__56_n_0;
  wire g0_b4__57_n_0;
  wire g0_b4__58_n_0;
  wire g0_b4__59_n_0;
  wire g0_b4__5_n_0;
  wire g0_b4__60_n_0;
  wire g0_b4__61_n_0;
  wire g0_b4__62_n_0;
  wire g0_b4__63_n_0;
  wire g0_b4__64_n_0;
  wire g0_b4__65_n_0;
  wire g0_b4__66_n_0;
  wire g0_b4__67_n_0;
  wire g0_b4__68_n_0;
  wire g0_b4__69_n_0;
  wire g0_b4__6_n_0;
  wire g0_b4__70_n_0;
  wire g0_b4__71_n_0;
  wire g0_b4__72_n_0;
  wire g0_b4__73_n_0;
  wire g0_b4__74_n_0;
  wire g0_b4__75_n_0;
  wire g0_b4__76_n_0;
  wire g0_b4__77_n_0;
  wire g0_b4__78_n_0;
  wire g0_b4__79_n_0;
  wire g0_b4__7_n_0;
  wire g0_b4__80_n_0;
  wire g0_b4__81_n_0;
  wire g0_b4__82_n_0;
  wire g0_b4__83_n_0;
  wire g0_b4__84_n_0;
  wire g0_b4__85_n_0;
  wire g0_b4__86_n_0;
  wire g0_b4__87_n_0;
  wire g0_b4__88_n_0;
  wire g0_b4__89_n_0;
  wire g0_b4__8_n_0;
  wire g0_b4__90_n_0;
  wire g0_b4__91_n_0;
  wire g0_b4__92_n_0;
  wire g0_b4__93_n_0;
  wire g0_b4__94_n_0;
  wire g0_b4__95_n_0;
  wire g0_b4__96_n_0;
  wire g0_b4__97_n_0;
  wire g0_b4__98_n_0;
  wire g0_b4__99_n_0;
  wire g0_b4__9_n_0;
  wire g0_b4_n_0;
  wire g0_b5__0_n_0;
  wire g0_b5__100_n_0;
  wire g0_b5__101_n_0;
  wire g0_b5__102_n_0;
  wire g0_b5__104_n_0;
  wire g0_b5__10_n_0;
  wire g0_b5__11_n_0;
  wire g0_b5__12_n_0;
  wire g0_b5__13_n_0;
  wire g0_b5__14_n_0;
  wire g0_b5__15_n_0;
  wire g0_b5__16_n_0;
  wire g0_b5__17_n_0;
  wire g0_b5__18_n_0;
  wire g0_b5__19_n_0;
  wire g0_b5__1_n_0;
  wire g0_b5__20_n_0;
  wire g0_b5__21_n_0;
  wire g0_b5__22_n_0;
  wire g0_b5__23_n_0;
  wire g0_b5__24_n_0;
  wire g0_b5__25_n_0;
  wire g0_b5__26_n_0;
  wire g0_b5__27_n_0;
  wire g0_b5__28_n_0;
  wire g0_b5__29_n_0;
  wire g0_b5__2_n_0;
  wire g0_b5__30_n_0;
  wire g0_b5__31_n_0;
  wire g0_b5__32_n_0;
  wire g0_b5__33_n_0;
  wire g0_b5__34_n_0;
  wire g0_b5__35_n_0;
  wire g0_b5__36_n_0;
  wire g0_b5__37_n_0;
  wire g0_b5__38_n_0;
  wire g0_b5__39_n_0;
  wire g0_b5__3_n_0;
  wire g0_b5__40_n_0;
  wire g0_b5__41_n_0;
  wire g0_b5__42_n_0;
  wire g0_b5__43_n_0;
  wire g0_b5__44_n_0;
  wire g0_b5__45_n_0;
  wire g0_b5__46_n_0;
  wire g0_b5__47_n_0;
  wire g0_b5__48_n_0;
  wire g0_b5__49_n_0;
  wire g0_b5__4_n_0;
  wire g0_b5__50_n_0;
  wire g0_b5__51_n_0;
  wire g0_b5__52_n_0;
  wire g0_b5__53_n_0;
  wire g0_b5__54_n_0;
  wire g0_b5__55_n_0;
  wire g0_b5__56_n_0;
  wire g0_b5__57_n_0;
  wire g0_b5__58_n_0;
  wire g0_b5__59_n_0;
  wire g0_b5__5_n_0;
  wire g0_b5__60_n_0;
  wire g0_b5__61_n_0;
  wire g0_b5__62_n_0;
  wire g0_b5__63_n_0;
  wire g0_b5__64_n_0;
  wire g0_b5__65_n_0;
  wire g0_b5__66_n_0;
  wire g0_b5__67_n_0;
  wire g0_b5__68_n_0;
  wire g0_b5__69_n_0;
  wire g0_b5__6_n_0;
  wire g0_b5__70_n_0;
  wire g0_b5__71_n_0;
  wire g0_b5__72_n_0;
  wire g0_b5__73_n_0;
  wire g0_b5__74_n_0;
  wire g0_b5__75_n_0;
  wire g0_b5__76_n_0;
  wire g0_b5__77_n_0;
  wire g0_b5__78_n_0;
  wire g0_b5__79_n_0;
  wire g0_b5__7_n_0;
  wire g0_b5__80_n_0;
  wire g0_b5__81_n_0;
  wire g0_b5__82_n_0;
  wire g0_b5__83_n_0;
  wire g0_b5__84_n_0;
  wire g0_b5__85_n_0;
  wire g0_b5__86_n_0;
  wire g0_b5__87_n_0;
  wire g0_b5__88_n_0;
  wire g0_b5__89_n_0;
  wire g0_b5__8_n_0;
  wire g0_b5__90_n_0;
  wire g0_b5__91_n_0;
  wire g0_b5__92_n_0;
  wire g0_b5__93_n_0;
  wire g0_b5__94_n_0;
  wire g0_b5__95_n_0;
  wire g0_b5__96_n_0;
  wire g0_b5__97_n_0;
  wire g0_b5__98_n_0;
  wire g0_b5__99_n_0;
  wire g0_b5__9_n_0;
  wire g0_b5_n_0;
  wire g0_b6__0_n_0;
  wire g0_b6__10_n_0;
  wire g0_b6__11_n_0;
  wire g0_b6__12_n_0;
  wire g0_b6__13_n_0;
  wire g0_b6__14_n_0;
  wire g0_b6__15_n_0;
  wire g0_b6__16_n_0;
  wire g0_b6__17_n_0;
  wire g0_b6__18_n_0;
  wire g0_b6__19_n_0;
  wire g0_b6__1_n_0;
  wire g0_b6__20_n_0;
  wire g0_b6__21_n_0;
  wire g0_b6__22_n_0;
  wire g0_b6__23_n_0;
  wire g0_b6__24_n_0;
  wire g0_b6__25_n_0;
  wire g0_b6__26_n_0;
  wire g0_b6__27_n_0;
  wire g0_b6__28_n_0;
  wire g0_b6__29_n_0;
  wire g0_b6__2_n_0;
  wire g0_b6__30_n_0;
  wire g0_b6__31_n_0;
  wire g0_b6__32_n_0;
  wire g0_b6__33_n_0;
  wire g0_b6__34_n_0;
  wire g0_b6__35_n_0;
  wire g0_b6__36_n_0;
  wire g0_b6__37_n_0;
  wire g0_b6__38_n_0;
  wire g0_b6__39_n_0;
  wire g0_b6__3_n_0;
  wire g0_b6__40_n_0;
  wire g0_b6__41_n_0;
  wire g0_b6__42_n_0;
  wire g0_b6__43_n_0;
  wire g0_b6__44_n_0;
  wire g0_b6__45_n_0;
  wire g0_b6__46_n_0;
  wire g0_b6__47_n_0;
  wire g0_b6__48_n_0;
  wire g0_b6__49_n_0;
  wire g0_b6__4_n_0;
  wire g0_b6__50_n_0;
  wire g0_b6__51_n_0;
  wire g0_b6__52_n_0;
  wire g0_b6__53_n_0;
  wire g0_b6__54_n_0;
  wire g0_b6__55_n_0;
  wire g0_b6__56_n_0;
  wire g0_b6__57_n_0;
  wire g0_b6__58_n_0;
  wire g0_b6__59_n_0;
  wire g0_b6__5_n_0;
  wire g0_b6__60_n_0;
  wire g0_b6__61_n_0;
  wire g0_b6__62_n_0;
  wire g0_b6__63_n_0;
  wire g0_b6__6_n_0;
  wire g0_b6__7_n_0;
  wire g0_b6__8_n_0;
  wire g0_b6__9_n_0;
  wire g0_b6_n_0;
  wire [1:0]i_rd_addr;
  wire [0:0]i_wr_addr;
  wire [0:0]i_wr_data;
  wire \input_counter[0]_i_1_n_0 ;
  wire \input_counter[0]_rep_i_1__0_n_0 ;
  wire \input_counter[0]_rep_i_1__1_n_0 ;
  wire \input_counter[0]_rep_i_1__2_n_0 ;
  wire \input_counter[0]_rep_i_1_n_0 ;
  wire \input_counter[1]_i_1_n_0 ;
  wire \input_counter[1]_rep_i_1_n_0 ;
  wire \input_counter[2]_i_1_n_0 ;
  wire \input_counter[3]_i_1_n_0 ;
  wire \input_counter[4]_i_1_n_0 ;
  wire \input_counter[5]_i_1_n_0 ;
  wire \input_counter[5]_i_2_n_0 ;
  wire \input_counter[5]_i_3_n_0 ;
  wire \input_counter[5]_i_4_n_0 ;
  wire \input_counter_reg[0]_rep__1_n_0 ;
  wire \input_counter_reg[0]_rep__2_n_0 ;
  wire \input_counter_reg[0]_rep_n_0 ;
  wire [3:0]\input_counter_reg[5]_0 ;
  wire \layer_counter[0]_i_1_n_0 ;
  wire \layer_counter[1]_i_1_n_0 ;
  wire \layer_counter[2]_i_1_n_0 ;
  wire \layer_counter_reg[1]_0 ;
  wire [0:0]\layer_counter_reg[2]_0 ;
  wire [1:0]layer_idx;
  wire mac_clear;
  wire mac_enable;
  wire max_index0_carry__0_n_0;
  wire max_index0_carry__0_n_1;
  wire max_index0_carry__0_n_2;
  wire max_index0_carry__0_n_3;
  wire max_index0_carry_n_0;
  wire max_index0_carry_n_1;
  wire max_index0_carry_n_2;
  wire max_index0_carry_n_3;
  wire \max_index[0]_i_1_n_0 ;
  wire \max_index[1]_i_1_n_0 ;
  wire [15:0]max_value;
  wire \max_value[15]_i_1_n_0 ;
  wire \max_value[15]_i_2_n_0 ;
  wire [3:0]\max_value[15]_i_4_0 ;
  wire [3:0]\max_value[15]_i_4_1 ;
  wire \max_value[15]_i_4_n_0 ;
  wire \max_value_reg[0]_0 ;
  wire \max_value_reg[10]_0 ;
  wire \max_value_reg[11]_0 ;
  wire \max_value_reg[12]_0 ;
  wire \max_value_reg[13]_0 ;
  wire \max_value_reg[14]_0 ;
  wire \max_value_reg[15]_0 ;
  wire \max_value_reg[1]_0 ;
  wire \max_value_reg[2]_0 ;
  wire \max_value_reg[3]_0 ;
  wire \max_value_reg[4]_0 ;
  wire \max_value_reg[5]_0 ;
  wire \max_value_reg[6]_0 ;
  wire \max_value_reg[7]_0 ;
  wire \max_value_reg[8]_0 ;
  wire \max_value_reg[9]_0 ;
  wire mlp_start;
  wire \neuron_counter[0]_i_1_n_0 ;
  wire \neuron_counter[1]_i_1_n_0 ;
  wire \neuron_counter[1]_rep_i_1__0_n_0 ;
  wire \neuron_counter[1]_rep_i_1__1_n_0 ;
  wire \neuron_counter[1]_rep_i_1__2_n_0 ;
  wire \neuron_counter[1]_rep_i_1__3_n_0 ;
  wire \neuron_counter[1]_rep_i_1__4_n_0 ;
  wire \neuron_counter[1]_rep_i_1_n_0 ;
  wire \neuron_counter[2]_i_1_n_0 ;
  wire \neuron_counter[2]_rep_i_1__0_n_0 ;
  wire \neuron_counter[2]_rep_i_1__1_n_0 ;
  wire \neuron_counter[2]_rep_i_1__2_n_0 ;
  wire \neuron_counter[2]_rep_i_1__3_n_0 ;
  wire \neuron_counter[2]_rep_i_1__4_n_0 ;
  wire \neuron_counter[2]_rep_i_1_n_0 ;
  wire \neuron_counter[3]_i_1_n_0 ;
  wire \neuron_counter[3]_rep_i_1__0_n_0 ;
  wire \neuron_counter[3]_rep_i_1__1_n_0 ;
  wire \neuron_counter[3]_rep_i_1__2_n_0 ;
  wire \neuron_counter[3]_rep_i_1__3_n_0 ;
  wire \neuron_counter[3]_rep_i_1__4_n_0 ;
  wire \neuron_counter[3]_rep_i_1__5_n_0 ;
  wire \neuron_counter[3]_rep_i_1_n_0 ;
  wire \neuron_counter[4]_i_1_n_0 ;
  wire \neuron_counter[5]_i_2_n_0 ;
  wire \neuron_counter[5]_i_3_n_0 ;
  wire \neuron_counter_reg[1]_rep__0_n_0 ;
  wire \neuron_counter_reg[1]_rep__1_n_0 ;
  wire \neuron_counter_reg[1]_rep__2_n_0 ;
  wire \neuron_counter_reg[1]_rep__3_n_0 ;
  wire \neuron_counter_reg[1]_rep__4_0 ;
  wire \neuron_counter_reg[1]_rep_n_0 ;
  wire \neuron_counter_reg[2]_rep__0_0 ;
  wire \neuron_counter_reg[2]_rep__1_n_0 ;
  wire \neuron_counter_reg[2]_rep__2_n_0 ;
  wire \neuron_counter_reg[2]_rep__3_n_0 ;
  wire \neuron_counter_reg[2]_rep__4_n_0 ;
  wire \neuron_counter_reg[2]_rep_n_0 ;
  wire \neuron_counter_reg[3]_rep__0_n_0 ;
  wire \neuron_counter_reg[3]_rep__1_n_0 ;
  wire \neuron_counter_reg[3]_rep__2_n_0 ;
  wire \neuron_counter_reg[3]_rep__3_n_0 ;
  wire \neuron_counter_reg[3]_rep__5_n_0 ;
  wire \neuron_counter_reg[3]_rep_n_0 ;
  wire [2:0]\neuron_counter_reg[5]_0 ;
  wire [1:0]o_class_result;
  wire [3:1]output_addr;
  wire [0:0]ram_a_reg;
  wire ram_swap;
  wire select_reg;
  wire [5:0]\weight_rom_inst/p_0_out ;
  wire [15:5]\weight_rom_inst/weights_l1[0,0] ;
  wire [15:5]\weight_rom_inst/weights_l2[0,0] ;
  wire [15:0]\weight_rom_inst/weights_l4[0,0] ;
  wire [3:0]NLW_max_index0_carry_O_UNCONNECTED;
  wire [3:0]NLW_max_index0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFF000AACC)) 
    ARG_i_1
       (.I0(\weight_rom_inst/weights_l2[0,0] [15]),
        .I1(\weight_rom_inst/weights_l1[0,0] [15]),
        .I2(\weight_rom_inst/weights_l4[0,0] [15]),
        .I3(layer_idx[0]),
        .I4(layer_idx[1]),
        .I5(ARG_i_36_n_0),
        .O(B[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_100
       (.I0(ARG_i_215_n_0),
        .I1(ARG_i_216_n_0),
        .I2(ARG_i_78_n_0),
        .I3(ARG_i_217_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_218_n_0),
        .O(ARG_i_100_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ARG_i_101
       (.I0(layer_idx[0]),
        .I1(layer_idx[1]),
        .O(ARG_i_101_n_0));
  MUXF8 ARG_i_102
       (.I0(ARG_i_219_n_0),
        .I1(ARG_i_220_n_0),
        .O(ARG_i_102_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF8 ARG_i_103
       (.I0(ARG_i_221_n_0),
        .I1(ARG_i_222_n_0),
        .O(ARG_i_103_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'h00007B33A35729BF)) 
    ARG_i_104
       (.I0(\input_counter_reg[5]_0 [1]),
        .I1(\input_counter_reg[5]_0 [0]),
        .I2(i_rd_addr[0]),
        .I3(i_rd_addr[1]),
        .I4(\neuron_counter_reg[1]_rep_n_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(\weight_rom_inst/weights_l4[0,0] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_105
       (.I0(ARG_i_223_n_0),
        .I1(ARG_i_224_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_225_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_226_n_0),
        .O(ARG_i_105_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_106
       (.I0(ARG_i_227_n_0),
        .I1(ARG_i_228_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_229_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_230_n_0),
        .O(ARG_i_106_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_107
       (.I0(ARG_i_231_n_0),
        .I1(ARG_i_232_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_233_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_234_n_0),
        .O(ARG_i_107_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_108
       (.I0(ARG_i_235_n_0),
        .I1(ARG_i_236_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_237_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_238_n_0),
        .O(ARG_i_108_n_0));
  MUXF7 ARG_i_109
       (.I0(ARG_i_239_n_0),
        .I1(ARG_i_240_n_0),
        .O(ARG_i_109_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF7 ARG_i_110
       (.I0(ARG_i_241_n_0),
        .I1(ARG_i_242_n_0),
        .O(ARG_i_110_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_111
       (.I0(ARG_i_243_n_0),
        .I1(ARG_i_244_n_0),
        .I2(ARG_i_78_n_0),
        .I3(ARG_i_245_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_246_n_0),
        .O(ARG_i_111_n_0));
  MUXF8 ARG_i_112
       (.I0(ARG_i_247_n_0),
        .I1(ARG_i_248_n_0),
        .O(ARG_i_112_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF8 ARG_i_113
       (.I0(ARG_i_249_n_0),
        .I1(ARG_i_250_n_0),
        .O(ARG_i_113_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'h0077002E296351D7)) 
    ARG_i_114
       (.I0(\input_counter_reg[5]_0 [1]),
        .I1(\input_counter_reg[5]_0 [0]),
        .I2(i_rd_addr[1]),
        .I3(\neuron_counter_reg[1]_rep_n_0 ),
        .I4(i_rd_addr[0]),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(\weight_rom_inst/weights_l4[0,0] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_115
       (.I0(ARG_i_251_n_0),
        .I1(ARG_i_252_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_253_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_254_n_0),
        .O(ARG_i_115_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_116
       (.I0(ARG_i_255_n_0),
        .I1(ARG_i_256_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_257_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_258_n_0),
        .O(ARG_i_116_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_117
       (.I0(ARG_i_259_n_0),
        .I1(ARG_i_260_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_261_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_262_n_0),
        .O(ARG_i_117_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_118
       (.I0(ARG_i_263_n_0),
        .I1(ARG_i_264_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_265_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_266_n_0),
        .O(ARG_i_118_n_0));
  MUXF7 ARG_i_119
       (.I0(ARG_i_267_n_0),
        .I1(ARG_i_268_n_0),
        .O(ARG_i_119_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF7 ARG_i_120
       (.I0(ARG_i_269_n_0),
        .I1(ARG_i_270_n_0),
        .O(ARG_i_120_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_121
       (.I0(ARG_i_271_n_0),
        .I1(ARG_i_272_n_0),
        .I2(ARG_i_78_n_0),
        .I3(ARG_i_273_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_274_n_0),
        .O(ARG_i_121_n_0));
  MUXF8 ARG_i_122
       (.I0(ARG_i_275_n_0),
        .I1(ARG_i_276_n_0),
        .O(ARG_i_122_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF8 ARG_i_123
       (.I0(ARG_i_277_n_0),
        .I1(ARG_i_278_n_0),
        .O(ARG_i_123_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'h00006E6723EBB778)) 
    ARG_i_124
       (.I0(\input_counter_reg[5]_0 [1]),
        .I1(\input_counter_reg[5]_0 [0]),
        .I2(i_rd_addr[1]),
        .I3(i_rd_addr[0]),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep_n_0 ),
        .O(\weight_rom_inst/weights_l4[0,0] [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_125
       (.I0(ARG_i_279_n_0),
        .I1(ARG_i_280_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_281_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_282_n_0),
        .O(ARG_i_125_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_126
       (.I0(ARG_i_283_n_0),
        .I1(ARG_i_284_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_285_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_286_n_0),
        .O(ARG_i_126_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_127
       (.I0(ARG_i_287_n_0),
        .I1(ARG_i_288_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_289_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_290_n_0),
        .O(ARG_i_127_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_128
       (.I0(ARG_i_291_n_0),
        .I1(ARG_i_292_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_293_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_294_n_0),
        .O(ARG_i_128_n_0));
  MUXF7 ARG_i_129
       (.I0(ARG_i_295_n_0),
        .I1(ARG_i_296_n_0),
        .O(ARG_i_129_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF7 ARG_i_130
       (.I0(ARG_i_297_n_0),
        .I1(ARG_i_298_n_0),
        .O(ARG_i_130_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_131
       (.I0(ARG_i_299_n_0),
        .I1(ARG_i_300_n_0),
        .I2(ARG_i_78_n_0),
        .I3(ARG_i_301_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_302_n_0),
        .O(ARG_i_131_n_0));
  MUXF8 ARG_i_132
       (.I0(ARG_i_303_n_0),
        .I1(ARG_i_304_n_0),
        .O(ARG_i_132_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF8 ARG_i_133
       (.I0(ARG_i_305_n_0),
        .I1(ARG_i_306_n_0),
        .O(ARG_i_133_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'h000040ECE0191770)) 
    ARG_i_134
       (.I0(\input_counter_reg[5]_0 [1]),
        .I1(\input_counter_reg[5]_0 [0]),
        .I2(i_rd_addr[1]),
        .I3(i_rd_addr[0]),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep_n_0 ),
        .O(\weight_rom_inst/weights_l4[0,0] [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_135
       (.I0(ARG_i_307_n_0),
        .I1(ARG_i_308_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_309_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_310_n_0),
        .O(ARG_i_135_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_136
       (.I0(ARG_i_311_n_0),
        .I1(ARG_i_312_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_313_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_314_n_0),
        .O(ARG_i_136_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_137
       (.I0(ARG_i_315_n_0),
        .I1(ARG_i_316_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_317_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_318_n_0),
        .O(ARG_i_137_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_138
       (.I0(ARG_i_319_n_0),
        .I1(ARG_i_320_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_321_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_322_n_0),
        .O(ARG_i_138_n_0));
  MUXF7 ARG_i_139
       (.I0(ARG_i_323_n_0),
        .I1(ARG_i_324_n_0),
        .O(ARG_i_139_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF7 ARG_i_140
       (.I0(ARG_i_325_n_0),
        .I1(ARG_i_326_n_0),
        .O(ARG_i_140_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_141
       (.I0(ARG_i_327_n_0),
        .I1(ARG_i_328_n_0),
        .I2(ARG_i_78_n_0),
        .I3(ARG_i_329_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_330_n_0),
        .O(ARG_i_141_n_0));
  MUXF8 ARG_i_142
       (.I0(ARG_i_331_n_0),
        .I1(ARG_i_332_n_0),
        .O(ARG_i_142_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF8 ARG_i_143
       (.I0(ARG_i_333_n_0),
        .I1(ARG_i_334_n_0),
        .O(ARG_i_143_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'h00007D1417E9A7D4)) 
    ARG_i_144
       (.I0(\input_counter_reg[5]_0 [1]),
        .I1(\input_counter_reg[5]_0 [0]),
        .I2(i_rd_addr[1]),
        .I3(i_rd_addr[0]),
        .I4(\neuron_counter_reg[1]_rep_n_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(\weight_rom_inst/weights_l4[0,0] [0]));
  MUXF7 ARG_i_145
       (.I0(ARG_i_335_n_0),
        .I1(ARG_i_336_n_0),
        .O(ARG_i_145_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_146
       (.I0(ARG_i_337_n_0),
        .I1(ARG_i_338_n_0),
        .O(ARG_i_146_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_147
       (.I0(g0_b5__46_n_0),
        .I1(g0_b5__45_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__44_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__43_n_0),
        .O(ARG_i_147_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_148
       (.I0(g0_b6__16_n_0),
        .I1(g0_b5__41_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b6__15_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__39_n_0),
        .O(ARG_i_148_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_149
       (.I0(g0_b5__38_n_0),
        .I1(g0_b6__14_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__36_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b6__13_n_0),
        .O(ARG_i_149_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_150
       (.I0(g0_b6__12_n_0),
        .I1(g0_b6__11_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__32_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b6__10_n_0),
        .O(ARG_i_150_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_151
       (.I0(g0_b5__30_n_0),
        .I1(g0_b5__29_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b6__9_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__27_n_0),
        .O(ARG_i_151_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_152
       (.I0(g0_b5__26_n_0),
        .I1(g0_b5__25_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__24_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__23_n_0),
        .O(ARG_i_152_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_153
       (.I0(g0_b6__8_n_0),
        .I1(g0_b5__21_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b6__7_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__19_n_0),
        .O(ARG_i_153_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_154
       (.I0(g0_b6__6_n_0),
        .I1(g0_b6__5_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__16_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__15_n_0),
        .O(ARG_i_154_n_0));
  MUXF7 ARG_i_155
       (.I0(ARG_i_339_n_0),
        .I1(ARG_i_340_n_0),
        .O(ARG_i_155_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_156
       (.I0(ARG_i_341_n_0),
        .I1(ARG_i_342_n_0),
        .O(ARG_i_156_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_157
       (.I0(g0_b6__59_n_0),
        .I1(g0_b6__60_n_0),
        .O(ARG_i_157_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_158
       (.I0(g0_b6__61_n_0),
        .I1(g0_b6__62_n_0),
        .O(ARG_i_158_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_159
       (.I0(g0_b6__55_n_0),
        .I1(g0_b6__56_n_0),
        .O(ARG_i_159_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_160
       (.I0(g0_b6__57_n_0),
        .I1(g0_b6__58_n_0),
        .O(ARG_i_160_n_0),
        .S(i_rd_addr[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_161
       (.I0(ARG_i_343_n_0),
        .I1(ARG_i_344_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_345_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_346_n_0),
        .O(ARG_i_161_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_162
       (.I0(ARG_i_347_n_0),
        .I1(ARG_i_348_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_349_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_350_n_0),
        .O(ARG_i_162_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_163
       (.I0(ARG_i_351_n_0),
        .I1(ARG_i_352_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_353_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_354_n_0),
        .O(ARG_i_163_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_164
       (.I0(ARG_i_355_n_0),
        .I1(ARG_i_356_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_357_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_358_n_0),
        .O(ARG_i_164_n_0));
  MUXF7 ARG_i_165
       (.I0(ARG_i_359_n_0),
        .I1(ARG_i_360_n_0),
        .O(ARG_i_165_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_166
       (.I0(ARG_i_361_n_0),
        .I1(ARG_i_362_n_0),
        .O(ARG_i_166_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_167
       (.I0(ARG_i_363_n_0),
        .I1(ARG_i_364_n_0),
        .O(ARG_i_167_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_168
       (.I0(ARG_i_365_n_0),
        .I1(ARG_i_366_n_0),
        .O(ARG_i_168_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_169
       (.I0(ARG_i_367_n_0),
        .I1(ARG_i_368_n_0),
        .O(ARG_i_169_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_170
       (.I0(ARG_i_369_n_0),
        .I1(ARG_i_370_n_0),
        .O(ARG_i_170_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_171
       (.I0(g0_b5__42_n_0),
        .I1(g0_b5__41_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__40_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__39_n_0),
        .O(ARG_i_171_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_172
       (.I0(g0_b5__38_n_0),
        .I1(g0_b5__37_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__36_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__35_n_0),
        .O(ARG_i_172_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_173
       (.I0(g0_b5__34_n_0),
        .I1(g0_b5__33_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__32_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__31_n_0),
        .O(ARG_i_173_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_174
       (.I0(g0_b5__30_n_0),
        .I1(g0_b5__29_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__28_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__27_n_0),
        .O(ARG_i_174_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_175
       (.I0(g0_b5__22_n_0),
        .I1(g0_b5__21_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__20_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__19_n_0),
        .O(ARG_i_175_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_176
       (.I0(g0_b5__18_n_0),
        .I1(g0_b5__17_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__16_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__15_n_0),
        .O(ARG_i_176_n_0));
  MUXF7 ARG_i_177
       (.I0(ARG_i_371_n_0),
        .I1(ARG_i_372_n_0),
        .O(ARG_i_177_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_178
       (.I0(ARG_i_373_n_0),
        .I1(ARG_i_374_n_0),
        .O(ARG_i_178_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_179
       (.I0(g0_b5__99_n_0),
        .I1(g0_b5__100_n_0),
        .O(ARG_i_179_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_180
       (.I0(g0_b5__101_n_0),
        .I1(g0_b5__102_n_0),
        .O(ARG_i_180_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_181
       (.I0(g0_b5__95_n_0),
        .I1(g0_b5__96_n_0),
        .O(ARG_i_181_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_182
       (.I0(g0_b5__97_n_0),
        .I1(g0_b5__98_n_0),
        .O(ARG_i_182_n_0),
        .S(i_rd_addr[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_183
       (.I0(ARG_i_375_n_0),
        .I1(ARG_i_376_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_377_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_378_n_0),
        .O(ARG_i_183_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_184
       (.I0(ARG_i_379_n_0),
        .I1(ARG_i_380_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_381_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_382_n_0),
        .O(ARG_i_184_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_185
       (.I0(ARG_i_383_n_0),
        .I1(ARG_i_384_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_385_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_386_n_0),
        .O(ARG_i_185_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_186
       (.I0(ARG_i_387_n_0),
        .I1(ARG_i_388_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_389_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_390_n_0),
        .O(ARG_i_186_n_0));
  LUT6 #(
    .INIT(64'h5D04A3889991FE0A)) 
    ARG_i_187
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep_n_0 ),
        .I2(\neuron_counter_reg[1]_rep__4_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[2]_rep__0_0 ),
        .O(ARG_i_187_n_0));
  LUT6 #(
    .INIT(64'h6249288CD468FDD2)) 
    ARG_i_188
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_188_n_0));
  LUT6 #(
    .INIT(64'hB90CF920EB95DC76)) 
    ARG_i_189
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_189_n_0));
  LUT6 #(
    .INIT(64'h0797A8BA342D21E5)) 
    ARG_i_190
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_190_n_0));
  LUT6 #(
    .INIT(64'h2744EC1024BFED31)) 
    ARG_i_191
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[1]_rep__4_0 ),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_191_n_0));
  LUT6 #(
    .INIT(64'h1CA41EFC531AD4BF)) 
    ARG_i_192
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[2]_rep__0_0 ),
        .O(ARG_i_192_n_0));
  LUT6 #(
    .INIT(64'h9EE273EE543D3030)) 
    ARG_i_193
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_193_n_0));
  LUT6 #(
    .INIT(64'hED90665C817BC6F2)) 
    ARG_i_194
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_194_n_0));
  MUXF8 ARG_i_195
       (.I0(ARG_i_391_n_0),
        .I1(ARG_i_392_n_0),
        .O(ARG_i_195_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_196
       (.I0(ARG_i_393_n_0),
        .I1(ARG_i_394_n_0),
        .O(ARG_i_196_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_197
       (.I0(ARG_i_395_n_0),
        .I1(ARG_i_396_n_0),
        .O(ARG_i_197_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_198
       (.I0(ARG_i_397_n_0),
        .I1(ARG_i_398_n_0),
        .O(ARG_i_198_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_199
       (.I0(ARG_i_399_n_0),
        .I1(ARG_i_400_n_0),
        .O(ARG_i_199_n_0),
        .S(i_rd_addr[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF000AACC)) 
    ARG_i_2
       (.I0(\weight_rom_inst/weights_l2[0,0] [15]),
        .I1(\weight_rom_inst/weights_l1[0,0] [15]),
        .I2(\weight_rom_inst/weights_l4[0,0] [6]),
        .I3(layer_idx[0]),
        .I4(layer_idx[1]),
        .I5(ARG_i_36_n_0),
        .O(B[6]));
  MUXF8 ARG_i_200
       (.I0(ARG_i_401_n_0),
        .I1(ARG_i_402_n_0),
        .O(ARG_i_200_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_201
       (.I0(ARG_i_403_n_0),
        .I1(ARG_i_404_n_0),
        .O(ARG_i_201_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_202
       (.I0(ARG_i_405_n_0),
        .I1(ARG_i_406_n_0),
        .O(ARG_i_202_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_203
       (.I0(ARG_i_407_n_0),
        .I1(ARG_i_408_n_0),
        .O(ARG_i_203_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_204
       (.I0(ARG_i_409_n_0),
        .I1(ARG_i_410_n_0),
        .O(ARG_i_204_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_205
       (.I0(ARG_i_411_n_0),
        .I1(ARG_i_412_n_0),
        .O(ARG_i_205_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_206
       (.I0(ARG_i_413_n_0),
        .I1(ARG_i_414_n_0),
        .O(ARG_i_206_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_207
       (.I0(ARG_i_415_n_0),
        .I1(ARG_i_416_n_0),
        .O(ARG_i_207_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_208
       (.I0(ARG_i_417_n_0),
        .I1(ARG_i_418_n_0),
        .O(ARG_i_208_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_209
       (.I0(ARG_i_419_n_0),
        .I1(ARG_i_420_n_0),
        .O(ARG_i_209_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_210
       (.I0(ARG_i_421_n_0),
        .I1(ARG_i_422_n_0),
        .O(ARG_i_210_n_0),
        .S(i_rd_addr[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_211
       (.I0(ARG_i_423_n_0),
        .I1(ARG_i_424_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_425_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_426_n_0),
        .O(ARG_i_211_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_212
       (.I0(ARG_i_427_n_0),
        .I1(ARG_i_428_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_429_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_430_n_0),
        .O(ARG_i_212_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_213
       (.I0(ARG_i_431_n_0),
        .I1(ARG_i_432_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_433_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_434_n_0),
        .O(ARG_i_213_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_214
       (.I0(ARG_i_435_n_0),
        .I1(ARG_i_436_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_437_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_438_n_0),
        .O(ARG_i_214_n_0));
  MUXF7 ARG_i_215
       (.I0(g0_b4__101_n_0),
        .I1(g0_b4__102_n_0),
        .O(ARG_i_215_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_216
       (.I0(g0_b4__99_n_0),
        .I1(g0_b4__100_n_0),
        .O(ARG_i_216_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_217
       (.I0(g0_b4__97_n_0),
        .I1(g0_b4__98_n_0),
        .O(ARG_i_217_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_218
       (.I0(g0_b4__95_n_0),
        .I1(g0_b4__96_n_0),
        .O(ARG_i_218_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_219
       (.I0(ARG_i_439_n_0),
        .I1(ARG_i_440_n_0),
        .O(ARG_i_219_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_220
       (.I0(ARG_i_441_n_0),
        .I1(ARG_i_442_n_0),
        .O(ARG_i_220_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_221
       (.I0(ARG_i_443_n_0),
        .I1(ARG_i_444_n_0),
        .O(ARG_i_221_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_222
       (.I0(ARG_i_445_n_0),
        .I1(ARG_i_446_n_0),
        .O(ARG_i_222_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF8 ARG_i_223
       (.I0(ARG_i_447_n_0),
        .I1(ARG_i_448_n_0),
        .O(ARG_i_223_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_224
       (.I0(ARG_i_449_n_0),
        .I1(ARG_i_450_n_0),
        .O(ARG_i_224_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_225
       (.I0(ARG_i_451_n_0),
        .I1(ARG_i_452_n_0),
        .O(ARG_i_225_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_226
       (.I0(ARG_i_453_n_0),
        .I1(ARG_i_454_n_0),
        .O(ARG_i_226_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_227
       (.I0(ARG_i_455_n_0),
        .I1(ARG_i_456_n_0),
        .O(ARG_i_227_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_228
       (.I0(ARG_i_457_n_0),
        .I1(ARG_i_458_n_0),
        .O(ARG_i_228_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_229
       (.I0(ARG_i_459_n_0),
        .I1(ARG_i_460_n_0),
        .O(ARG_i_229_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_230
       (.I0(ARG_i_461_n_0),
        .I1(ARG_i_462_n_0),
        .O(ARG_i_230_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_231
       (.I0(ARG_i_463_n_0),
        .I1(ARG_i_464_n_0),
        .O(ARG_i_231_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_232
       (.I0(ARG_i_465_n_0),
        .I1(ARG_i_466_n_0),
        .O(ARG_i_232_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_233
       (.I0(ARG_i_467_n_0),
        .I1(ARG_i_468_n_0),
        .O(ARG_i_233_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_234
       (.I0(ARG_i_469_n_0),
        .I1(ARG_i_470_n_0),
        .O(ARG_i_234_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_235
       (.I0(ARG_i_471_n_0),
        .I1(ARG_i_472_n_0),
        .O(ARG_i_235_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_236
       (.I0(ARG_i_473_n_0),
        .I1(ARG_i_474_n_0),
        .O(ARG_i_236_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_237
       (.I0(ARG_i_475_n_0),
        .I1(ARG_i_476_n_0),
        .O(ARG_i_237_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_238
       (.I0(ARG_i_477_n_0),
        .I1(ARG_i_478_n_0),
        .O(ARG_i_238_n_0),
        .S(i_rd_addr[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_239
       (.I0(ARG_i_479_n_0),
        .I1(ARG_i_480_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_481_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_482_n_0),
        .O(ARG_i_239_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_240
       (.I0(ARG_i_483_n_0),
        .I1(ARG_i_484_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_485_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_486_n_0),
        .O(ARG_i_240_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_241
       (.I0(ARG_i_487_n_0),
        .I1(ARG_i_488_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_489_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_490_n_0),
        .O(ARG_i_241_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_242
       (.I0(ARG_i_491_n_0),
        .I1(ARG_i_492_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_493_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_494_n_0),
        .O(ARG_i_242_n_0));
  MUXF7 ARG_i_243
       (.I0(g0_b3__101_n_0),
        .I1(g0_b3__102_n_0),
        .O(ARG_i_243_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_244
       (.I0(g0_b3__99_n_0),
        .I1(g0_b3__100_n_0),
        .O(ARG_i_244_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_245
       (.I0(g0_b3__97_n_0),
        .I1(g0_b3__98_n_0),
        .O(ARG_i_245_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_246
       (.I0(g0_b3__95_n_0),
        .I1(g0_b3__96_n_0),
        .O(ARG_i_246_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_247
       (.I0(ARG_i_495_n_0),
        .I1(ARG_i_496_n_0),
        .O(ARG_i_247_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_248
       (.I0(ARG_i_497_n_0),
        .I1(ARG_i_498_n_0),
        .O(ARG_i_248_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_249
       (.I0(ARG_i_499_n_0),
        .I1(ARG_i_500_n_0),
        .O(ARG_i_249_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'h1F10FFFF1F100000)) 
    ARG_i_25
       (.I0(\neuron_counter_reg[1]_rep__4_0 ),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(layer_idx[1]),
        .I3(\weight_rom_inst/p_0_out [5]),
        .I4(layer_idx[0]),
        .I5(ARG_i_64_n_0),
        .O(C[6]));
  MUXF7 ARG_i_250
       (.I0(ARG_i_501_n_0),
        .I1(ARG_i_502_n_0),
        .O(ARG_i_250_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF8 ARG_i_251
       (.I0(ARG_i_503_n_0),
        .I1(ARG_i_504_n_0),
        .O(ARG_i_251_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_252
       (.I0(ARG_i_505_n_0),
        .I1(ARG_i_506_n_0),
        .O(ARG_i_252_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_253
       (.I0(ARG_i_507_n_0),
        .I1(ARG_i_508_n_0),
        .O(ARG_i_253_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_254
       (.I0(ARG_i_509_n_0),
        .I1(ARG_i_510_n_0),
        .O(ARG_i_254_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_255
       (.I0(ARG_i_511_n_0),
        .I1(ARG_i_512_n_0),
        .O(ARG_i_255_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_256
       (.I0(ARG_i_513_n_0),
        .I1(ARG_i_514_n_0),
        .O(ARG_i_256_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_257
       (.I0(ARG_i_515_n_0),
        .I1(ARG_i_516_n_0),
        .O(ARG_i_257_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_258
       (.I0(ARG_i_517_n_0),
        .I1(ARG_i_518_n_0),
        .O(ARG_i_258_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_259
       (.I0(ARG_i_519_n_0),
        .I1(ARG_i_520_n_0),
        .O(ARG_i_259_n_0),
        .S(i_rd_addr[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    ARG_i_26
       (.I0(\neuron_counter_reg[1]_rep__4_0 ),
        .I1(layer_idx[1]),
        .I2(\weight_rom_inst/p_0_out [5]),
        .I3(layer_idx[0]),
        .I4(ARG_i_65_n_0),
        .O(C[5]));
  MUXF8 ARG_i_260
       (.I0(ARG_i_521_n_0),
        .I1(ARG_i_522_n_0),
        .O(ARG_i_260_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_261
       (.I0(ARG_i_523_n_0),
        .I1(ARG_i_524_n_0),
        .O(ARG_i_261_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_262
       (.I0(ARG_i_525_n_0),
        .I1(ARG_i_526_n_0),
        .O(ARG_i_262_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_263
       (.I0(ARG_i_527_n_0),
        .I1(ARG_i_528_n_0),
        .O(ARG_i_263_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_264
       (.I0(ARG_i_529_n_0),
        .I1(ARG_i_530_n_0),
        .O(ARG_i_264_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_265
       (.I0(ARG_i_531_n_0),
        .I1(ARG_i_532_n_0),
        .O(ARG_i_265_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_266
       (.I0(ARG_i_533_n_0),
        .I1(ARG_i_534_n_0),
        .O(ARG_i_266_n_0),
        .S(i_rd_addr[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_267
       (.I0(ARG_i_535_n_0),
        .I1(ARG_i_536_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_537_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_538_n_0),
        .O(ARG_i_267_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_268
       (.I0(ARG_i_539_n_0),
        .I1(ARG_i_540_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_541_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_542_n_0),
        .O(ARG_i_268_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_269
       (.I0(ARG_i_543_n_0),
        .I1(ARG_i_544_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_545_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_546_n_0),
        .O(ARG_i_269_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    ARG_i_27
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(layer_idx[1]),
        .I2(\weight_rom_inst/p_0_out [4]),
        .I3(layer_idx[0]),
        .I4(ARG_i_66_n_0),
        .O(C[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_270
       (.I0(ARG_i_547_n_0),
        .I1(ARG_i_548_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_549_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_550_n_0),
        .O(ARG_i_270_n_0));
  MUXF7 ARG_i_271
       (.I0(g0_b2__101_n_0),
        .I1(g0_b2__102_n_0),
        .O(ARG_i_271_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_272
       (.I0(g0_b2__99_n_0),
        .I1(g0_b2__100_n_0),
        .O(ARG_i_272_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_273
       (.I0(g0_b2__97_n_0),
        .I1(g0_b2__98_n_0),
        .O(ARG_i_273_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_274
       (.I0(g0_b2__95_n_0),
        .I1(g0_b2__96_n_0),
        .O(ARG_i_274_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_275
       (.I0(ARG_i_551_n_0),
        .I1(ARG_i_552_n_0),
        .O(ARG_i_275_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_276
       (.I0(ARG_i_553_n_0),
        .I1(ARG_i_554_n_0),
        .O(ARG_i_276_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_277
       (.I0(ARG_i_555_n_0),
        .I1(ARG_i_556_n_0),
        .O(ARG_i_277_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_278
       (.I0(ARG_i_557_n_0),
        .I1(ARG_i_558_n_0),
        .O(ARG_i_278_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF8 ARG_i_279
       (.I0(ARG_i_559_n_0),
        .I1(ARG_i_560_n_0),
        .O(ARG_i_279_n_0),
        .S(i_rd_addr[1]));
  LUT6 #(
    .INIT(64'h1F10FFFF1F100000)) 
    ARG_i_28
       (.I0(\neuron_counter_reg[1]_rep_n_0 ),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(layer_idx[1]),
        .I3(\weight_rom_inst/p_0_out [3]),
        .I4(layer_idx[0]),
        .I5(ARG_i_67_n_0),
        .O(C[3]));
  MUXF8 ARG_i_280
       (.I0(ARG_i_561_n_0),
        .I1(ARG_i_562_n_0),
        .O(ARG_i_280_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_281
       (.I0(ARG_i_563_n_0),
        .I1(ARG_i_564_n_0),
        .O(ARG_i_281_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_282
       (.I0(ARG_i_565_n_0),
        .I1(ARG_i_566_n_0),
        .O(ARG_i_282_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_283
       (.I0(ARG_i_567_n_0),
        .I1(ARG_i_568_n_0),
        .O(ARG_i_283_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_284
       (.I0(ARG_i_569_n_0),
        .I1(ARG_i_570_n_0),
        .O(ARG_i_284_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_285
       (.I0(ARG_i_571_n_0),
        .I1(ARG_i_572_n_0),
        .O(ARG_i_285_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_286
       (.I0(ARG_i_573_n_0),
        .I1(ARG_i_574_n_0),
        .O(ARG_i_286_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_287
       (.I0(ARG_i_575_n_0),
        .I1(ARG_i_576_n_0),
        .O(ARG_i_287_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_288
       (.I0(ARG_i_577_n_0),
        .I1(ARG_i_578_n_0),
        .O(ARG_i_288_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_289
       (.I0(ARG_i_579_n_0),
        .I1(ARG_i_580_n_0),
        .O(ARG_i_289_n_0),
        .S(i_rd_addr[1]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    ARG_i_29
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(layer_idx[1]),
        .I2(\weight_rom_inst/p_0_out [2]),
        .I3(layer_idx[0]),
        .I4(ARG_i_68_n_0),
        .O(C[2]));
  MUXF8 ARG_i_290
       (.I0(ARG_i_581_n_0),
        .I1(ARG_i_582_n_0),
        .O(ARG_i_290_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_291
       (.I0(ARG_i_583_n_0),
        .I1(ARG_i_584_n_0),
        .O(ARG_i_291_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_292
       (.I0(ARG_i_585_n_0),
        .I1(ARG_i_586_n_0),
        .O(ARG_i_292_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_293
       (.I0(ARG_i_587_n_0),
        .I1(ARG_i_588_n_0),
        .O(ARG_i_293_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_294
       (.I0(ARG_i_589_n_0),
        .I1(ARG_i_590_n_0),
        .O(ARG_i_294_n_0),
        .S(i_rd_addr[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_295
       (.I0(ARG_i_591_n_0),
        .I1(ARG_i_592_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_593_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_594_n_0),
        .O(ARG_i_295_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_296
       (.I0(ARG_i_595_n_0),
        .I1(ARG_i_596_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_597_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_598_n_0),
        .O(ARG_i_296_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_297
       (.I0(ARG_i_599_n_0),
        .I1(ARG_i_600_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_601_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_602_n_0),
        .O(ARG_i_297_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_298
       (.I0(ARG_i_603_n_0),
        .I1(ARG_i_604_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_605_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_606_n_0),
        .O(ARG_i_298_n_0));
  MUXF7 ARG_i_299
       (.I0(g0_b1__101_n_0),
        .I1(g0_b1__102_n_0),
        .O(ARG_i_299_n_0),
        .S(fsm_input_addr[0]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    ARG_i_3
       (.I0(\weight_rom_inst/weights_l2[0,0] [5]),
        .I1(\weight_rom_inst/weights_l1[0,0] [5]),
        .I2(\weight_rom_inst/weights_l4[0,0] [5]),
        .I3(layer_idx[0]),
        .I4(layer_idx[1]),
        .I5(ARG_i_41_n_0),
        .O(B[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    ARG_i_30
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(layer_idx[1]),
        .I2(\weight_rom_inst/p_0_out [1]),
        .I3(layer_idx[0]),
        .I4(ARG_i_69_n_0),
        .O(C[1]));
  MUXF7 ARG_i_300
       (.I0(g0_b1__99_n_0),
        .I1(g0_b1__100_n_0),
        .O(ARG_i_300_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_301
       (.I0(g0_b1__97_n_0),
        .I1(g0_b1__98_n_0),
        .O(ARG_i_301_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_302
       (.I0(g0_b1__95_n_0),
        .I1(g0_b1__96_n_0),
        .O(ARG_i_302_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_303
       (.I0(ARG_i_607_n_0),
        .I1(ARG_i_608_n_0),
        .O(ARG_i_303_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_304
       (.I0(ARG_i_609_n_0),
        .I1(ARG_i_610_n_0),
        .O(ARG_i_304_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_305
       (.I0(ARG_i_611_n_0),
        .I1(ARG_i_612_n_0),
        .O(ARG_i_305_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_306
       (.I0(ARG_i_613_n_0),
        .I1(ARG_i_614_n_0),
        .O(ARG_i_306_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF8 ARG_i_307
       (.I0(ARG_i_615_n_0),
        .I1(ARG_i_616_n_0),
        .O(ARG_i_307_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_308
       (.I0(ARG_i_617_n_0),
        .I1(ARG_i_618_n_0),
        .O(ARG_i_308_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_309
       (.I0(ARG_i_619_n_0),
        .I1(ARG_i_620_n_0),
        .O(ARG_i_309_n_0),
        .S(i_rd_addr[1]));
  LUT5 #(
    .INIT(32'hFFBAEEBA)) 
    ARG_i_31
       (.I0(ARG_i_70_n_0),
        .I1(layer_idx[1]),
        .I2(g0_b0__104_n_0),
        .I3(layer_idx[0]),
        .I4(\weight_rom_inst/p_0_out [0]),
        .O(C[0]));
  MUXF8 ARG_i_310
       (.I0(ARG_i_621_n_0),
        .I1(ARG_i_622_n_0),
        .O(ARG_i_310_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_311
       (.I0(ARG_i_623_n_0),
        .I1(ARG_i_624_n_0),
        .O(ARG_i_311_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_312
       (.I0(ARG_i_625_n_0),
        .I1(ARG_i_626_n_0),
        .O(ARG_i_312_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_313
       (.I0(ARG_i_627_n_0),
        .I1(ARG_i_628_n_0),
        .O(ARG_i_313_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_314
       (.I0(ARG_i_629_n_0),
        .I1(ARG_i_630_n_0),
        .O(ARG_i_314_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_315
       (.I0(ARG_i_631_n_0),
        .I1(ARG_i_632_n_0),
        .O(ARG_i_315_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_316
       (.I0(ARG_i_633_n_0),
        .I1(ARG_i_634_n_0),
        .O(ARG_i_316_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_317
       (.I0(ARG_i_635_n_0),
        .I1(ARG_i_636_n_0),
        .O(ARG_i_317_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_318
       (.I0(ARG_i_637_n_0),
        .I1(ARG_i_638_n_0),
        .O(ARG_i_318_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_319
       (.I0(ARG_i_639_n_0),
        .I1(ARG_i_640_n_0),
        .O(ARG_i_319_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_320
       (.I0(ARG_i_641_n_0),
        .I1(ARG_i_642_n_0),
        .O(ARG_i_320_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_321
       (.I0(ARG_i_643_n_0),
        .I1(ARG_i_644_n_0),
        .O(ARG_i_321_n_0),
        .S(i_rd_addr[1]));
  MUXF8 ARG_i_322
       (.I0(ARG_i_645_n_0),
        .I1(ARG_i_646_n_0),
        .O(ARG_i_322_n_0),
        .S(i_rd_addr[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_323
       (.I0(ARG_i_647_n_0),
        .I1(ARG_i_648_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_649_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_650_n_0),
        .O(ARG_i_323_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_324
       (.I0(ARG_i_651_n_0),
        .I1(ARG_i_652_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_653_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_654_n_0),
        .O(ARG_i_324_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_325
       (.I0(ARG_i_655_n_0),
        .I1(ARG_i_656_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_657_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_658_n_0),
        .O(ARG_i_325_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_326
       (.I0(ARG_i_659_n_0),
        .I1(ARG_i_660_n_0),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(ARG_i_661_n_0),
        .I4(fsm_input_addr[1]),
        .I5(ARG_i_662_n_0),
        .O(ARG_i_326_n_0));
  MUXF7 ARG_i_327
       (.I0(g0_b0__101_n_0),
        .I1(g0_b0__102_n_0),
        .O(ARG_i_327_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_328
       (.I0(g0_b0__99_n_0),
        .I1(g0_b0__100_n_0),
        .O(ARG_i_328_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_329
       (.I0(g0_b0__97_n_0),
        .I1(g0_b0__98_n_0),
        .O(ARG_i_329_n_0),
        .S(fsm_input_addr[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_33
       (.I0(ARG_i_71_n_0),
        .I1(ARG_i_72_n_0),
        .I2(\input_counter_reg[5]_0 [3]),
        .I3(ARG_i_73_n_0),
        .I4(\input_counter_reg[5]_0 [2]),
        .I5(ARG_i_74_n_0),
        .O(\weight_rom_inst/weights_l2[0,0] [15]));
  MUXF7 ARG_i_330
       (.I0(g0_b0__95_n_0),
        .I1(g0_b0__96_n_0),
        .O(ARG_i_330_n_0),
        .S(fsm_input_addr[0]));
  MUXF7 ARG_i_331
       (.I0(ARG_i_663_n_0),
        .I1(ARG_i_664_n_0),
        .O(ARG_i_331_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_332
       (.I0(ARG_i_665_n_0),
        .I1(ARG_i_666_n_0),
        .O(ARG_i_332_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_333
       (.I0(ARG_i_667_n_0),
        .I1(ARG_i_668_n_0),
        .O(ARG_i_333_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_334
       (.I0(ARG_i_669_n_0),
        .I1(ARG_i_670_n_0),
        .O(ARG_i_334_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_335
       (.I0(g0_b5__50_n_0),
        .I1(g0_b6__17_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__48_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__47_n_0),
        .O(ARG_i_335_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_336
       (.I0(g0_b6__19_n_0),
        .I1(g0_b5__53_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__52_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b6__18_n_0),
        .O(ARG_i_336_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_337
       (.I0(g0_b5__58_n_0),
        .I1(g0_b5__57_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b6__21_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b6__20_n_0),
        .O(ARG_i_337_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_338
       (.I0(g0_b5__62_n_0),
        .I1(g0_b6__22_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__60_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__59_n_0),
        .O(ARG_i_338_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_339
       (.I0(g0_b5__2_n_0),
        .I1(g0_b6__0_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__0_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b6_n_0),
        .O(ARG_i_339_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_34
       (.I0(ARG_i_75_n_0),
        .I1(ARG_i_76_n_0),
        .I2(\input_counter_reg[5]_0 [3]),
        .I3(ARG_i_77_n_0),
        .I4(ARG_i_78_n_0),
        .I5(ARG_i_79_n_0),
        .O(\weight_rom_inst/weights_l1[0,0] [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_340
       (.I0(g0_b5__6_n_0),
        .I1(g0_b5__5_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__4_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b6__1_n_0),
        .O(ARG_i_340_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_341
       (.I0(g0_b5__10_n_0),
        .I1(g0_b5__9_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b6__2_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__7_n_0),
        .O(ARG_i_341_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_342
       (.I0(g0_b6__4_n_0),
        .I1(g0_b5__13_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b6__3_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__11_n_0),
        .O(ARG_i_342_n_0));
  MUXF7 ARG_i_343
       (.I0(g0_b6__45_n_0),
        .I1(g0_b6__46_n_0),
        .O(ARG_i_343_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_344
       (.I0(g0_b6__43_n_0),
        .I1(g0_b6__44_n_0),
        .O(ARG_i_344_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_345
       (.I0(g0_b6__41_n_0),
        .I1(g0_b6__42_n_0),
        .O(ARG_i_345_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_346
       (.I0(g0_b6__39_n_0),
        .I1(g0_b6__40_n_0),
        .O(ARG_i_346_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_347
       (.I0(g0_b6__53_n_0),
        .I1(g0_b6__54_n_0),
        .O(ARG_i_347_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_348
       (.I0(g0_b6__51_n_0),
        .I1(g0_b6__52_n_0),
        .O(ARG_i_348_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_349
       (.I0(g0_b6__49_n_0),
        .I1(g0_b6__50_n_0),
        .O(ARG_i_349_n_0),
        .S(i_rd_addr[0]));
  LUT6 #(
    .INIT(64'h0000D24CB9F9AFE6)) 
    ARG_i_35
       (.I0(\input_counter_reg[5]_0 [1]),
        .I1(\input_counter_reg[5]_0 [0]),
        .I2(\input_counter_reg[0]_rep__2_n_0 ),
        .I3(fsm_input_addr[1]),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep_n_0 ),
        .O(\weight_rom_inst/weights_l4[0,0] [15]));
  MUXF7 ARG_i_350
       (.I0(g0_b6__47_n_0),
        .I1(g0_b6__48_n_0),
        .O(ARG_i_350_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_351
       (.I0(g0_b6__29_n_0),
        .I1(g0_b6__30_n_0),
        .O(ARG_i_351_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_352
       (.I0(g0_b6__27_n_0),
        .I1(g0_b6__28_n_0),
        .O(ARG_i_352_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_353
       (.I0(g0_b6__25_n_0),
        .I1(g0_b6__26_n_0),
        .O(ARG_i_353_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_354
       (.I0(g0_b6__23_n_0),
        .I1(g0_b6__24_n_0),
        .O(ARG_i_354_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_355
       (.I0(g0_b6__37_n_0),
        .I1(g0_b6__38_n_0),
        .O(ARG_i_355_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_356
       (.I0(g0_b6__35_n_0),
        .I1(g0_b6__36_n_0),
        .O(ARG_i_356_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_357
       (.I0(g0_b6__33_n_0),
        .I1(g0_b6__34_n_0),
        .O(ARG_i_357_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_358
       (.I0(g0_b6__31_n_0),
        .I1(g0_b6__32_n_0),
        .O(ARG_i_358_n_0),
        .S(i_rd_addr[0]));
  LUT6 #(
    .INIT(64'h98E27B3AF4292C10)) 
    ARG_i_359
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_359_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00E20000)) 
    ARG_i_36
       (.I0(ARG_i_80_n_0),
        .I1(\input_counter_reg[5]_0 [2]),
        .I2(ARG_i_81_n_0),
        .I3(layer_idx[0]),
        .I4(layer_idx[1]),
        .O(ARG_i_36_n_0));
  LUT6 #(
    .INIT(64'hCF5E48FB4C5B6F52)) 
    ARG_i_360
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_360_n_0));
  LUT6 #(
    .INIT(64'h340BB18531FDBDB5)) 
    ARG_i_361
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[1]_rep__4_0 ),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(i_wr_addr),
        .O(ARG_i_361_n_0));
  LUT6 #(
    .INIT(64'h96021EF6ED0CCA5F)) 
    ARG_i_362
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_362_n_0));
  LUT6 #(
    .INIT(64'hF90473A1F995C6F8)) 
    ARG_i_363
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_363_n_0));
  LUT6 #(
    .INIT(64'h9DBF3976786A0129)) 
    ARG_i_364
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_364_n_0));
  LUT6 #(
    .INIT(64'h39F816B2FC3895A7)) 
    ARG_i_365
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_365_n_0));
  LUT6 #(
    .INIT(64'h6B092C0E552C7CD0)) 
    ARG_i_366
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_366_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_367
       (.I0(g0_b5__50_n_0),
        .I1(g0_b5__49_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__48_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__47_n_0),
        .O(ARG_i_367_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_368
       (.I0(g0_b5__54_n_0),
        .I1(g0_b5__53_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__52_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__51_n_0),
        .O(ARG_i_368_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_369
       (.I0(g0_b5__58_n_0),
        .I1(g0_b5__57_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__56_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__55_n_0),
        .O(ARG_i_369_n_0));
  LUT6 #(
    .INIT(64'h0000D24CB9F9AFC6)) 
    ARG_i_37
       (.I0(\input_counter_reg[5]_0 [1]),
        .I1(\input_counter_reg[5]_0 [0]),
        .I2(\input_counter_reg[0]_rep__2_n_0 ),
        .I3(fsm_input_addr[1]),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep_n_0 ),
        .O(\weight_rom_inst/weights_l4[0,0] [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_370
       (.I0(g0_b5__62_n_0),
        .I1(g0_b5__61_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__60_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__59_n_0),
        .O(ARG_i_370_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_371
       (.I0(g0_b5__2_n_0),
        .I1(g0_b5__1_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__0_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5_n_0),
        .O(ARG_i_371_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_372
       (.I0(g0_b5__6_n_0),
        .I1(g0_b5__5_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__4_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__3_n_0),
        .O(ARG_i_372_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_373
       (.I0(g0_b5__10_n_0),
        .I1(g0_b5__9_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__8_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__7_n_0),
        .O(ARG_i_373_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_374
       (.I0(g0_b5__14_n_0),
        .I1(g0_b5__13_n_0),
        .I2(i_rd_addr[1]),
        .I3(g0_b5__12_n_0),
        .I4(i_rd_addr[0]),
        .I5(g0_b5__11_n_0),
        .O(ARG_i_374_n_0));
  MUXF7 ARG_i_375
       (.I0(g0_b5__85_n_0),
        .I1(g0_b5__86_n_0),
        .O(ARG_i_375_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_376
       (.I0(g0_b5__83_n_0),
        .I1(g0_b5__84_n_0),
        .O(ARG_i_376_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_377
       (.I0(g0_b5__81_n_0),
        .I1(g0_b5__82_n_0),
        .O(ARG_i_377_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_378
       (.I0(g0_b5__79_n_0),
        .I1(g0_b5__80_n_0),
        .O(ARG_i_378_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_379
       (.I0(g0_b5__93_n_0),
        .I1(g0_b5__94_n_0),
        .O(ARG_i_379_n_0),
        .S(i_rd_addr[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_38
       (.I0(ARG_i_82_n_0),
        .I1(ARG_i_83_n_0),
        .I2(\input_counter_reg[5]_0 [3]),
        .I3(ARG_i_84_n_0),
        .I4(\input_counter_reg[5]_0 [2]),
        .I5(ARG_i_85_n_0),
        .O(\weight_rom_inst/weights_l2[0,0] [5]));
  MUXF7 ARG_i_380
       (.I0(g0_b5__91_n_0),
        .I1(g0_b5__92_n_0),
        .O(ARG_i_380_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_381
       (.I0(g0_b5__89_n_0),
        .I1(g0_b5__90_n_0),
        .O(ARG_i_381_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_382
       (.I0(g0_b5__87_n_0),
        .I1(g0_b5__88_n_0),
        .O(ARG_i_382_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_383
       (.I0(g0_b5__69_n_0),
        .I1(g0_b5__70_n_0),
        .O(ARG_i_383_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_384
       (.I0(g0_b5__67_n_0),
        .I1(g0_b5__68_n_0),
        .O(ARG_i_384_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_385
       (.I0(g0_b5__65_n_0),
        .I1(g0_b5__66_n_0),
        .O(ARG_i_385_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_386
       (.I0(g0_b5__63_n_0),
        .I1(g0_b5__64_n_0),
        .O(ARG_i_386_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_387
       (.I0(g0_b5__77_n_0),
        .I1(g0_b5__78_n_0),
        .O(ARG_i_387_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_388
       (.I0(g0_b5__75_n_0),
        .I1(g0_b5__76_n_0),
        .O(ARG_i_388_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_389
       (.I0(g0_b5__73_n_0),
        .I1(g0_b5__74_n_0),
        .O(ARG_i_389_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_39
       (.I0(ARG_i_86_n_0),
        .I1(ARG_i_87_n_0),
        .I2(\input_counter_reg[5]_0 [3]),
        .I3(ARG_i_88_n_0),
        .I4(ARG_i_78_n_0),
        .I5(ARG_i_89_n_0),
        .O(\weight_rom_inst/weights_l1[0,0] [5]));
  MUXF7 ARG_i_390
       (.I0(g0_b5__71_n_0),
        .I1(g0_b5__72_n_0),
        .O(ARG_i_390_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_391
       (.I0(g0_b4__11_n_0),
        .I1(g0_b4__12_n_0),
        .O(ARG_i_391_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_392
       (.I0(g0_b4__13_n_0),
        .I1(g0_b4__14_n_0),
        .O(ARG_i_392_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_393
       (.I0(g0_b4__7_n_0),
        .I1(g0_b4__8_n_0),
        .O(ARG_i_393_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_394
       (.I0(g0_b4__9_n_0),
        .I1(g0_b4__10_n_0),
        .O(ARG_i_394_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_395
       (.I0(g0_b4__3_n_0),
        .I1(g0_b4__4_n_0),
        .O(ARG_i_395_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_396
       (.I0(g0_b4__5_n_0),
        .I1(g0_b4__6_n_0),
        .O(ARG_i_396_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_397
       (.I0(g0_b4_n_0),
        .I1(g0_b4__0_n_0),
        .O(ARG_i_397_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_398
       (.I0(g0_b4__1_n_0),
        .I1(g0_b4__2_n_0),
        .O(ARG_i_398_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_399
       (.I0(g0_b4__27_n_0),
        .I1(g0_b4__28_n_0),
        .O(ARG_i_399_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    ARG_i_4
       (.I0(ARG_i_42_n_0),
        .I1(\input_counter_reg[5]_0 [3]),
        .I2(ARG_i_43_n_0),
        .I3(ARG_i_44_n_0),
        .I4(ARG_i_45_n_0),
        .I5(ARG_i_46_n_0),
        .O(B[4]));
  LUT6 #(
    .INIT(64'h009700A2C9727B55)) 
    ARG_i_40
       (.I0(\input_counter_reg[5]_0 [1]),
        .I1(\input_counter_reg[5]_0 [0]),
        .I2(fsm_input_addr[1]),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\input_counter_reg[0]_rep__2_n_0 ),
        .I5(\neuron_counter_reg[1]_rep_n_0 ),
        .O(\weight_rom_inst/weights_l4[0,0] [5]));
  MUXF7 ARG_i_400
       (.I0(g0_b4__29_n_0),
        .I1(g0_b4__30_n_0),
        .O(ARG_i_400_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_401
       (.I0(g0_b4__23_n_0),
        .I1(g0_b4__24_n_0),
        .O(ARG_i_401_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_402
       (.I0(g0_b4__25_n_0),
        .I1(g0_b4__26_n_0),
        .O(ARG_i_402_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_403
       (.I0(g0_b4__19_n_0),
        .I1(g0_b4__20_n_0),
        .O(ARG_i_403_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_404
       (.I0(g0_b4__21_n_0),
        .I1(g0_b4__22_n_0),
        .O(ARG_i_404_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_405
       (.I0(g0_b4__15_n_0),
        .I1(g0_b4__16_n_0),
        .O(ARG_i_405_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_406
       (.I0(g0_b4__17_n_0),
        .I1(g0_b4__18_n_0),
        .O(ARG_i_406_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_407
       (.I0(g0_b4__43_n_0),
        .I1(g0_b4__44_n_0),
        .O(ARG_i_407_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_408
       (.I0(g0_b4__45_n_0),
        .I1(g0_b4__46_n_0),
        .O(ARG_i_408_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_409
       (.I0(g0_b4__39_n_0),
        .I1(g0_b4__40_n_0),
        .O(ARG_i_409_n_0),
        .S(i_rd_addr[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_41
       (.I0(ARG_i_90_n_0),
        .I1(ARG_i_91_n_0),
        .I2(\input_counter_reg[5]_0 [2]),
        .I3(ARG_i_92_n_0),
        .I4(\input_counter_reg[5]_0 [1]),
        .I5(ARG_i_93_n_0),
        .O(ARG_i_41_n_0));
  MUXF7 ARG_i_410
       (.I0(g0_b4__41_n_0),
        .I1(g0_b4__42_n_0),
        .O(ARG_i_410_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_411
       (.I0(g0_b4__35_n_0),
        .I1(g0_b4__36_n_0),
        .O(ARG_i_411_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_412
       (.I0(g0_b4__37_n_0),
        .I1(g0_b4__38_n_0),
        .O(ARG_i_412_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_413
       (.I0(g0_b4__31_n_0),
        .I1(g0_b4__32_n_0),
        .O(ARG_i_413_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_414
       (.I0(g0_b4__33_n_0),
        .I1(g0_b4__34_n_0),
        .O(ARG_i_414_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_415
       (.I0(g0_b4__59_n_0),
        .I1(g0_b4__60_n_0),
        .O(ARG_i_415_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_416
       (.I0(g0_b4__61_n_0),
        .I1(g0_b4__62_n_0),
        .O(ARG_i_416_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_417
       (.I0(g0_b4__55_n_0),
        .I1(g0_b4__56_n_0),
        .O(ARG_i_417_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_418
       (.I0(g0_b4__57_n_0),
        .I1(g0_b4__58_n_0),
        .O(ARG_i_418_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_419
       (.I0(g0_b4__51_n_0),
        .I1(g0_b4__52_n_0),
        .O(ARG_i_419_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_42
       (.I0(ARG_i_94_n_0),
        .I1(ARG_i_95_n_0),
        .O(ARG_i_42_n_0),
        .S(\input_counter_reg[5]_0 [2]));
  MUXF7 ARG_i_420
       (.I0(g0_b4__53_n_0),
        .I1(g0_b4__54_n_0),
        .O(ARG_i_420_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_421
       (.I0(g0_b4__47_n_0),
        .I1(g0_b4__48_n_0),
        .O(ARG_i_421_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_422
       (.I0(g0_b4__49_n_0),
        .I1(g0_b4__50_n_0),
        .O(ARG_i_422_n_0),
        .S(i_rd_addr[0]));
  MUXF7 ARG_i_423
       (.I0(g0_b4__69_n_0),
        .I1(g0_b4__70_n_0),
        .O(ARG_i_423_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_424
       (.I0(g0_b4__67_n_0),
        .I1(g0_b4__68_n_0),
        .O(ARG_i_424_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_425
       (.I0(g0_b4__65_n_0),
        .I1(g0_b4__66_n_0),
        .O(ARG_i_425_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_426
       (.I0(g0_b4__63_n_0),
        .I1(g0_b4__64_n_0),
        .O(ARG_i_426_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_427
       (.I0(g0_b4__77_n_0),
        .I1(g0_b4__78_n_0),
        .O(ARG_i_427_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_428
       (.I0(g0_b4__75_n_0),
        .I1(g0_b4__76_n_0),
        .O(ARG_i_428_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_429
       (.I0(g0_b4__73_n_0),
        .I1(g0_b4__74_n_0),
        .O(ARG_i_429_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_43
       (.I0(ARG_i_96_n_0),
        .I1(ARG_i_97_n_0),
        .O(ARG_i_43_n_0),
        .S(\input_counter_reg[5]_0 [2]));
  MUXF7 ARG_i_430
       (.I0(g0_b4__71_n_0),
        .I1(g0_b4__72_n_0),
        .O(ARG_i_430_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_431
       (.I0(g0_b4__85_n_0),
        .I1(g0_b4__86_n_0),
        .O(ARG_i_431_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_432
       (.I0(g0_b4__83_n_0),
        .I1(g0_b4__84_n_0),
        .O(ARG_i_432_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_433
       (.I0(g0_b4__81_n_0),
        .I1(g0_b4__82_n_0),
        .O(ARG_i_433_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_434
       (.I0(g0_b4__79_n_0),
        .I1(g0_b4__80_n_0),
        .O(ARG_i_434_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_435
       (.I0(g0_b4__93_n_0),
        .I1(g0_b4__94_n_0),
        .O(ARG_i_435_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_436
       (.I0(g0_b4__91_n_0),
        .I1(g0_b4__92_n_0),
        .O(ARG_i_436_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_437
       (.I0(g0_b4__89_n_0),
        .I1(g0_b4__90_n_0),
        .O(ARG_i_437_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_438
       (.I0(g0_b4__87_n_0),
        .I1(g0_b4__88_n_0),
        .O(ARG_i_438_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  LUT6 #(
    .INIT(64'hC24787F950C32ED8)) 
    ARG_i_439
       (.I0(i_rd_addr[1]),
        .I1(fsm_input_addr[0]),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[1]_rep__4_0 ),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_439_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ARG_i_44
       (.I0(layer_idx[0]),
        .I1(layer_idx[1]),
        .O(ARG_i_44_n_0));
  LUT6 #(
    .INIT(64'hB9FBFA7277146529)) 
    ARG_i_440
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[1]_rep__4_0 ),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_440_n_0));
  LUT6 #(
    .INIT(64'h2D26FCCCF99A41B7)) 
    ARG_i_441
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_441_n_0));
  LUT6 #(
    .INIT(64'h0BB2CE360F8D78E8)) 
    ARG_i_442
       (.I0(i_rd_addr[1]),
        .I1(fsm_input_addr[0]),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_442_n_0));
  LUT6 #(
    .INIT(64'h28FE402A79EE1353)) 
    ARG_i_443
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_443_n_0));
  LUT6 #(
    .INIT(64'h526E5EE618332B18)) 
    ARG_i_444
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_444_n_0));
  LUT6 #(
    .INIT(64'h7E03948CB3F9BF3D)) 
    ARG_i_445
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[1]_rep__4_0 ),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(i_wr_addr),
        .O(ARG_i_445_n_0));
  LUT6 #(
    .INIT(64'hF77FA4AC3BCAFB43)) 
    ARG_i_446
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_446_n_0));
  MUXF7 ARG_i_447
       (.I0(g0_b3__11_n_0),
        .I1(g0_b3__12_n_0),
        .O(ARG_i_447_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_448
       (.I0(g0_b3__13_n_0),
        .I1(g0_b3__14_n_0),
        .O(ARG_i_448_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_449
       (.I0(g0_b3__7_n_0),
        .I1(g0_b3__8_n_0),
        .O(ARG_i_449_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    ARG_i_45
       (.I0(ARG_i_98_n_0),
        .I1(ARG_i_78_n_0),
        .I2(ARG_i_99_n_0),
        .I3(\input_counter_reg[5]_0 [3]),
        .I4(ARG_i_100_n_0),
        .I5(ARG_i_101_n_0),
        .O(ARG_i_45_n_0));
  MUXF7 ARG_i_450
       (.I0(g0_b3__9_n_0),
        .I1(g0_b3__10_n_0),
        .O(ARG_i_450_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_451
       (.I0(g0_b3__3_n_0),
        .I1(g0_b3__4_n_0),
        .O(ARG_i_451_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_452
       (.I0(g0_b3__5_n_0),
        .I1(g0_b3__6_n_0),
        .O(ARG_i_452_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_453
       (.I0(g0_b3_n_0),
        .I1(g0_b3__0_n_0),
        .O(ARG_i_453_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_454
       (.I0(g0_b3__1_n_0),
        .I1(g0_b3__2_n_0),
        .O(ARG_i_454_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_455
       (.I0(g0_b3__27_n_0),
        .I1(g0_b3__28_n_0),
        .O(ARG_i_455_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_456
       (.I0(g0_b3__29_n_0),
        .I1(g0_b3__30_n_0),
        .O(ARG_i_456_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_457
       (.I0(g0_b3__23_n_0),
        .I1(g0_b3__24_n_0),
        .O(ARG_i_457_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_458
       (.I0(g0_b3__25_n_0),
        .I1(g0_b3__26_n_0),
        .O(ARG_i_458_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_459
       (.I0(g0_b3__19_n_0),
        .I1(g0_b3__20_n_0),
        .O(ARG_i_459_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    ARG_i_46
       (.I0(ARG_i_102_n_0),
        .I1(\input_counter_reg[5]_0 [2]),
        .I2(ARG_i_103_n_0),
        .I3(layer_idx[1]),
        .I4(layer_idx[0]),
        .I5(\weight_rom_inst/weights_l4[0,0] [4]),
        .O(ARG_i_46_n_0));
  MUXF7 ARG_i_460
       (.I0(g0_b3__21_n_0),
        .I1(g0_b3__22_n_0),
        .O(ARG_i_460_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_461
       (.I0(g0_b3__15_n_0),
        .I1(g0_b3__16_n_0),
        .O(ARG_i_461_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_462
       (.I0(g0_b3__17_n_0),
        .I1(g0_b3__18_n_0),
        .O(ARG_i_462_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_463
       (.I0(g0_b3__43_n_0),
        .I1(g0_b3__44_n_0),
        .O(ARG_i_463_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_464
       (.I0(g0_b3__45_n_0),
        .I1(g0_b3__46_n_0),
        .O(ARG_i_464_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_465
       (.I0(g0_b3__39_n_0),
        .I1(g0_b3__40_n_0),
        .O(ARG_i_465_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_466
       (.I0(g0_b3__41_n_0),
        .I1(g0_b3__42_n_0),
        .O(ARG_i_466_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_467
       (.I0(g0_b3__35_n_0),
        .I1(g0_b3__36_n_0),
        .O(ARG_i_467_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_468
       (.I0(g0_b3__37_n_0),
        .I1(g0_b3__38_n_0),
        .O(ARG_i_468_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_469
       (.I0(g0_b3__31_n_0),
        .I1(g0_b3__32_n_0),
        .O(ARG_i_469_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_47
       (.I0(ARG_i_105_n_0),
        .I1(ARG_i_106_n_0),
        .O(ARG_i_47_n_0),
        .S(\input_counter_reg[5]_0 [2]));
  MUXF7 ARG_i_470
       (.I0(g0_b3__33_n_0),
        .I1(g0_b3__34_n_0),
        .O(ARG_i_470_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_471
       (.I0(g0_b3__59_n_0),
        .I1(g0_b3__60_n_0),
        .O(ARG_i_471_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_472
       (.I0(g0_b3__61_n_0),
        .I1(g0_b3__62_n_0),
        .O(ARG_i_472_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_473
       (.I0(g0_b3__55_n_0),
        .I1(g0_b3__56_n_0),
        .O(ARG_i_473_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_474
       (.I0(g0_b3__57_n_0),
        .I1(g0_b3__58_n_0),
        .O(ARG_i_474_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_475
       (.I0(g0_b3__51_n_0),
        .I1(g0_b3__52_n_0),
        .O(ARG_i_475_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_476
       (.I0(g0_b3__53_n_0),
        .I1(g0_b3__54_n_0),
        .O(ARG_i_476_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_477
       (.I0(g0_b3__47_n_0),
        .I1(g0_b3__48_n_0),
        .O(ARG_i_477_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_478
       (.I0(g0_b3__49_n_0),
        .I1(g0_b3__50_n_0),
        .O(ARG_i_478_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_479
       (.I0(g0_b3__69_n_0),
        .I1(g0_b3__70_n_0),
        .O(ARG_i_479_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_48
       (.I0(ARG_i_107_n_0),
        .I1(ARG_i_108_n_0),
        .O(ARG_i_48_n_0),
        .S(\input_counter_reg[5]_0 [2]));
  MUXF7 ARG_i_480
       (.I0(g0_b3__67_n_0),
        .I1(g0_b3__68_n_0),
        .O(ARG_i_480_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_481
       (.I0(g0_b3__65_n_0),
        .I1(g0_b3__66_n_0),
        .O(ARG_i_481_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_482
       (.I0(g0_b3__63_n_0),
        .I1(g0_b3__64_n_0),
        .O(ARG_i_482_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_483
       (.I0(g0_b3__77_n_0),
        .I1(g0_b3__78_n_0),
        .O(ARG_i_483_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_484
       (.I0(g0_b3__75_n_0),
        .I1(g0_b3__76_n_0),
        .O(ARG_i_484_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_485
       (.I0(g0_b3__73_n_0),
        .I1(g0_b3__74_n_0),
        .O(ARG_i_485_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_486
       (.I0(g0_b3__71_n_0),
        .I1(g0_b3__72_n_0),
        .O(ARG_i_486_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_487
       (.I0(g0_b3__85_n_0),
        .I1(g0_b3__86_n_0),
        .O(ARG_i_487_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_488
       (.I0(g0_b3__83_n_0),
        .I1(g0_b3__84_n_0),
        .O(ARG_i_488_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_489
       (.I0(g0_b3__81_n_0),
        .I1(g0_b3__82_n_0),
        .O(ARG_i_489_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    ARG_i_49
       (.I0(ARG_i_109_n_0),
        .I1(ARG_i_78_n_0),
        .I2(ARG_i_110_n_0),
        .I3(\input_counter_reg[5]_0 [3]),
        .I4(ARG_i_111_n_0),
        .I5(ARG_i_101_n_0),
        .O(ARG_i_49_n_0));
  MUXF7 ARG_i_490
       (.I0(g0_b3__79_n_0),
        .I1(g0_b3__80_n_0),
        .O(ARG_i_490_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_491
       (.I0(g0_b3__93_n_0),
        .I1(g0_b3__94_n_0),
        .O(ARG_i_491_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_492
       (.I0(g0_b3__91_n_0),
        .I1(g0_b3__92_n_0),
        .O(ARG_i_492_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_493
       (.I0(g0_b3__89_n_0),
        .I1(g0_b3__90_n_0),
        .O(ARG_i_493_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_494
       (.I0(g0_b3__87_n_0),
        .I1(g0_b3__88_n_0),
        .O(ARG_i_494_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  LUT6 #(
    .INIT(64'h4CDF82A6FA879319)) 
    ARG_i_495
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_495_n_0));
  LUT6 #(
    .INIT(64'hB0F8CED97D553372)) 
    ARG_i_496
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_496_n_0));
  LUT6 #(
    .INIT(64'h6CE42242631973F2)) 
    ARG_i_497
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[1]_rep__4_0 ),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(i_wr_addr),
        .O(ARG_i_497_n_0));
  LUT6 #(
    .INIT(64'hE42FCDB69E963358)) 
    ARG_i_498
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_498_n_0));
  LUT6 #(
    .INIT(64'h76E9F062AC1B6FFF)) 
    ARG_i_499
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_499_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    ARG_i_5
       (.I0(ARG_i_47_n_0),
        .I1(\input_counter_reg[5]_0 [3]),
        .I2(ARG_i_48_n_0),
        .I3(ARG_i_44_n_0),
        .I4(ARG_i_49_n_0),
        .I5(ARG_i_50_n_0),
        .O(B[3]));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    ARG_i_50
       (.I0(ARG_i_112_n_0),
        .I1(\input_counter_reg[5]_0 [2]),
        .I2(ARG_i_113_n_0),
        .I3(layer_idx[1]),
        .I4(layer_idx[0]),
        .I5(\weight_rom_inst/weights_l4[0,0] [3]),
        .O(ARG_i_50_n_0));
  LUT6 #(
    .INIT(64'h9A5826BA53471001)) 
    ARG_i_500
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[2]_rep__0_0 ),
        .O(ARG_i_500_n_0));
  LUT6 #(
    .INIT(64'h971DCA13473DB44E)) 
    ARG_i_501
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[5]_0 [0]),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_501_n_0));
  LUT6 #(
    .INIT(64'h67DA8CA91689BF4B)) 
    ARG_i_502
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_502_n_0));
  MUXF7 ARG_i_503
       (.I0(g0_b2__11_n_0),
        .I1(g0_b2__12_n_0),
        .O(ARG_i_503_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_504
       (.I0(g0_b2__13_n_0),
        .I1(g0_b2__14_n_0),
        .O(ARG_i_504_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_505
       (.I0(g0_b2__7_n_0),
        .I1(g0_b2__8_n_0),
        .O(ARG_i_505_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_506
       (.I0(g0_b2__9_n_0),
        .I1(g0_b2__10_n_0),
        .O(ARG_i_506_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_507
       (.I0(g0_b2__3_n_0),
        .I1(g0_b2__4_n_0),
        .O(ARG_i_507_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_508
       (.I0(g0_b2__5_n_0),
        .I1(g0_b2__6_n_0),
        .O(ARG_i_508_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_509
       (.I0(g0_b2_n_0),
        .I1(g0_b2__0_n_0),
        .O(ARG_i_509_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_51
       (.I0(ARG_i_115_n_0),
        .I1(ARG_i_116_n_0),
        .O(ARG_i_51_n_0),
        .S(\input_counter_reg[5]_0 [2]));
  MUXF7 ARG_i_510
       (.I0(g0_b2__1_n_0),
        .I1(g0_b2__2_n_0),
        .O(ARG_i_510_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_511
       (.I0(g0_b2__27_n_0),
        .I1(g0_b2__28_n_0),
        .O(ARG_i_511_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_512
       (.I0(g0_b2__29_n_0),
        .I1(g0_b2__30_n_0),
        .O(ARG_i_512_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_513
       (.I0(g0_b2__23_n_0),
        .I1(g0_b2__24_n_0),
        .O(ARG_i_513_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_514
       (.I0(g0_b2__25_n_0),
        .I1(g0_b2__26_n_0),
        .O(ARG_i_514_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_515
       (.I0(g0_b2__19_n_0),
        .I1(g0_b2__20_n_0),
        .O(ARG_i_515_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_516
       (.I0(g0_b2__21_n_0),
        .I1(g0_b2__22_n_0),
        .O(ARG_i_516_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_517
       (.I0(g0_b2__15_n_0),
        .I1(g0_b2__16_n_0),
        .O(ARG_i_517_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_518
       (.I0(g0_b2__17_n_0),
        .I1(g0_b2__18_n_0),
        .O(ARG_i_518_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_519
       (.I0(g0_b2__43_n_0),
        .I1(g0_b2__44_n_0),
        .O(ARG_i_519_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_52
       (.I0(ARG_i_117_n_0),
        .I1(ARG_i_118_n_0),
        .O(ARG_i_52_n_0),
        .S(\input_counter_reg[5]_0 [2]));
  MUXF7 ARG_i_520
       (.I0(g0_b2__45_n_0),
        .I1(g0_b2__46_n_0),
        .O(ARG_i_520_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_521
       (.I0(g0_b2__39_n_0),
        .I1(g0_b2__40_n_0),
        .O(ARG_i_521_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_522
       (.I0(g0_b2__41_n_0),
        .I1(g0_b2__42_n_0),
        .O(ARG_i_522_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_523
       (.I0(g0_b2__35_n_0),
        .I1(g0_b2__36_n_0),
        .O(ARG_i_523_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_524
       (.I0(g0_b2__37_n_0),
        .I1(g0_b2__38_n_0),
        .O(ARG_i_524_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_525
       (.I0(g0_b2__31_n_0),
        .I1(g0_b2__32_n_0),
        .O(ARG_i_525_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_526
       (.I0(g0_b2__33_n_0),
        .I1(g0_b2__34_n_0),
        .O(ARG_i_526_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_527
       (.I0(g0_b2__59_n_0),
        .I1(g0_b2__60_n_0),
        .O(ARG_i_527_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_528
       (.I0(g0_b2__61_n_0),
        .I1(g0_b2__62_n_0),
        .O(ARG_i_528_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_529
       (.I0(g0_b2__55_n_0),
        .I1(g0_b2__56_n_0),
        .O(ARG_i_529_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    ARG_i_53
       (.I0(ARG_i_119_n_0),
        .I1(ARG_i_78_n_0),
        .I2(ARG_i_120_n_0),
        .I3(\input_counter_reg[5]_0 [3]),
        .I4(ARG_i_121_n_0),
        .I5(ARG_i_101_n_0),
        .O(ARG_i_53_n_0));
  MUXF7 ARG_i_530
       (.I0(g0_b2__57_n_0),
        .I1(g0_b2__58_n_0),
        .O(ARG_i_530_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_531
       (.I0(g0_b2__51_n_0),
        .I1(g0_b2__52_n_0),
        .O(ARG_i_531_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_532
       (.I0(g0_b2__53_n_0),
        .I1(g0_b2__54_n_0),
        .O(ARG_i_532_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_533
       (.I0(g0_b2__47_n_0),
        .I1(g0_b2__48_n_0),
        .O(ARG_i_533_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_534
       (.I0(g0_b2__49_n_0),
        .I1(g0_b2__50_n_0),
        .O(ARG_i_534_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_535
       (.I0(g0_b2__69_n_0),
        .I1(g0_b2__70_n_0),
        .O(ARG_i_535_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_536
       (.I0(g0_b2__67_n_0),
        .I1(g0_b2__68_n_0),
        .O(ARG_i_536_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_537
       (.I0(g0_b2__65_n_0),
        .I1(g0_b2__66_n_0),
        .O(ARG_i_537_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_538
       (.I0(g0_b2__63_n_0),
        .I1(g0_b2__64_n_0),
        .O(ARG_i_538_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_539
       (.I0(g0_b2__77_n_0),
        .I1(g0_b2__78_n_0),
        .O(ARG_i_539_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    ARG_i_54
       (.I0(ARG_i_122_n_0),
        .I1(\input_counter_reg[5]_0 [2]),
        .I2(ARG_i_123_n_0),
        .I3(layer_idx[1]),
        .I4(layer_idx[0]),
        .I5(\weight_rom_inst/weights_l4[0,0] [2]),
        .O(ARG_i_54_n_0));
  MUXF7 ARG_i_540
       (.I0(g0_b2__75_n_0),
        .I1(g0_b2__76_n_0),
        .O(ARG_i_540_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_541
       (.I0(g0_b2__73_n_0),
        .I1(g0_b2__74_n_0),
        .O(ARG_i_541_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_542
       (.I0(g0_b2__71_n_0),
        .I1(g0_b2__72_n_0),
        .O(ARG_i_542_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_543
       (.I0(g0_b2__85_n_0),
        .I1(g0_b2__86_n_0),
        .O(ARG_i_543_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_544
       (.I0(g0_b2__83_n_0),
        .I1(g0_b2__84_n_0),
        .O(ARG_i_544_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_545
       (.I0(g0_b2__81_n_0),
        .I1(g0_b2__82_n_0),
        .O(ARG_i_545_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_546
       (.I0(g0_b2__79_n_0),
        .I1(g0_b2__80_n_0),
        .O(ARG_i_546_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_547
       (.I0(g0_b2__93_n_0),
        .I1(g0_b2__94_n_0),
        .O(ARG_i_547_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_548
       (.I0(g0_b2__91_n_0),
        .I1(g0_b2__92_n_0),
        .O(ARG_i_548_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_549
       (.I0(g0_b2__89_n_0),
        .I1(g0_b2__90_n_0),
        .O(ARG_i_549_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_55
       (.I0(ARG_i_125_n_0),
        .I1(ARG_i_126_n_0),
        .O(ARG_i_55_n_0),
        .S(\input_counter_reg[5]_0 [2]));
  MUXF7 ARG_i_550
       (.I0(g0_b2__87_n_0),
        .I1(g0_b2__88_n_0),
        .O(ARG_i_550_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  LUT6 #(
    .INIT(64'h243385454F25F5ED)) 
    ARG_i_551
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[2]_rep__0_0 ),
        .O(ARG_i_551_n_0));
  LUT6 #(
    .INIT(64'h0CFA99E728DB22CD)) 
    ARG_i_552
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_552_n_0));
  LUT6 #(
    .INIT(64'h5B6B5B1E429F4A2F)) 
    ARG_i_553
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_553_n_0));
  LUT6 #(
    .INIT(64'h6DB1D12E153E4B66)) 
    ARG_i_554
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_554_n_0));
  LUT6 #(
    .INIT(64'h79A815A222C06F13)) 
    ARG_i_555
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_555_n_0));
  LUT6 #(
    .INIT(64'h357D5D6941C9DD7E)) 
    ARG_i_556
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_556_n_0));
  LUT6 #(
    .INIT(64'h2DBB2B3A128FAD47)) 
    ARG_i_557
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_557_n_0));
  LUT6 #(
    .INIT(64'hDFF91EE129578916)) 
    ARG_i_558
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_558_n_0));
  MUXF7 ARG_i_559
       (.I0(g0_b1__11_n_0),
        .I1(g0_b1__12_n_0),
        .O(ARG_i_559_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_56
       (.I0(ARG_i_127_n_0),
        .I1(ARG_i_128_n_0),
        .O(ARG_i_56_n_0),
        .S(\input_counter_reg[5]_0 [2]));
  MUXF7 ARG_i_560
       (.I0(g0_b1__13_n_0),
        .I1(g0_b1__14_n_0),
        .O(ARG_i_560_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_561
       (.I0(g0_b1__7_n_0),
        .I1(g0_b1__8_n_0),
        .O(ARG_i_561_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_562
       (.I0(g0_b1__9_n_0),
        .I1(g0_b1__10_n_0),
        .O(ARG_i_562_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_563
       (.I0(g0_b1__3_n_0),
        .I1(g0_b1__4_n_0),
        .O(ARG_i_563_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_564
       (.I0(g0_b1__5_n_0),
        .I1(g0_b1__6_n_0),
        .O(ARG_i_564_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_565
       (.I0(g0_b1_n_0),
        .I1(g0_b1__0_n_0),
        .O(ARG_i_565_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_566
       (.I0(g0_b1__1_n_0),
        .I1(g0_b1__2_n_0),
        .O(ARG_i_566_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_567
       (.I0(g0_b1__27_n_0),
        .I1(g0_b1__28_n_0),
        .O(ARG_i_567_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_568
       (.I0(g0_b1__29_n_0),
        .I1(g0_b1__30_n_0),
        .O(ARG_i_568_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_569
       (.I0(g0_b1__23_n_0),
        .I1(g0_b1__24_n_0),
        .O(ARG_i_569_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    ARG_i_57
       (.I0(ARG_i_129_n_0),
        .I1(ARG_i_78_n_0),
        .I2(ARG_i_130_n_0),
        .I3(\input_counter_reg[5]_0 [3]),
        .I4(ARG_i_131_n_0),
        .I5(ARG_i_101_n_0),
        .O(ARG_i_57_n_0));
  MUXF7 ARG_i_570
       (.I0(g0_b1__25_n_0),
        .I1(g0_b1__26_n_0),
        .O(ARG_i_570_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_571
       (.I0(g0_b1__19_n_0),
        .I1(g0_b1__20_n_0),
        .O(ARG_i_571_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_572
       (.I0(g0_b1__21_n_0),
        .I1(g0_b1__22_n_0),
        .O(ARG_i_572_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_573
       (.I0(g0_b1__15_n_0),
        .I1(g0_b1__16_n_0),
        .O(ARG_i_573_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_574
       (.I0(g0_b1__17_n_0),
        .I1(g0_b1__18_n_0),
        .O(ARG_i_574_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_575
       (.I0(g0_b1__43_n_0),
        .I1(g0_b1__44_n_0),
        .O(ARG_i_575_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_576
       (.I0(g0_b1__45_n_0),
        .I1(g0_b1__46_n_0),
        .O(ARG_i_576_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_577
       (.I0(g0_b1__39_n_0),
        .I1(g0_b1__40_n_0),
        .O(ARG_i_577_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_578
       (.I0(g0_b1__41_n_0),
        .I1(g0_b1__42_n_0),
        .O(ARG_i_578_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_579
       (.I0(g0_b1__35_n_0),
        .I1(g0_b1__36_n_0),
        .O(ARG_i_579_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    ARG_i_58
       (.I0(ARG_i_132_n_0),
        .I1(\input_counter_reg[5]_0 [2]),
        .I2(ARG_i_133_n_0),
        .I3(layer_idx[1]),
        .I4(layer_idx[0]),
        .I5(\weight_rom_inst/weights_l4[0,0] [1]),
        .O(ARG_i_58_n_0));
  MUXF7 ARG_i_580
       (.I0(g0_b1__37_n_0),
        .I1(g0_b1__38_n_0),
        .O(ARG_i_580_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_581
       (.I0(g0_b1__31_n_0),
        .I1(g0_b1__32_n_0),
        .O(ARG_i_581_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_582
       (.I0(g0_b1__33_n_0),
        .I1(g0_b1__34_n_0),
        .O(ARG_i_582_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_583
       (.I0(g0_b1__59_n_0),
        .I1(g0_b1__60_n_0),
        .O(ARG_i_583_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_584
       (.I0(g0_b1__61_n_0),
        .I1(g0_b1__62_n_0),
        .O(ARG_i_584_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_585
       (.I0(g0_b1__55_n_0),
        .I1(g0_b1__56_n_0),
        .O(ARG_i_585_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_586
       (.I0(g0_b1__57_n_0),
        .I1(g0_b1__58_n_0),
        .O(ARG_i_586_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_587
       (.I0(g0_b1__51_n_0),
        .I1(g0_b1__52_n_0),
        .O(ARG_i_587_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_588
       (.I0(g0_b1__53_n_0),
        .I1(g0_b1__54_n_0),
        .O(ARG_i_588_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_589
       (.I0(g0_b1__47_n_0),
        .I1(g0_b1__48_n_0),
        .O(ARG_i_589_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_59
       (.I0(ARG_i_135_n_0),
        .I1(ARG_i_136_n_0),
        .O(ARG_i_59_n_0),
        .S(\input_counter_reg[5]_0 [2]));
  MUXF7 ARG_i_590
       (.I0(g0_b1__49_n_0),
        .I1(g0_b1__50_n_0),
        .O(ARG_i_590_n_0),
        .S(\input_counter_reg[0]_rep__1_n_0 ));
  MUXF7 ARG_i_591
       (.I0(g0_b1__69_n_0),
        .I1(g0_b1__70_n_0),
        .O(ARG_i_591_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_592
       (.I0(g0_b1__67_n_0),
        .I1(g0_b1__68_n_0),
        .O(ARG_i_592_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_593
       (.I0(g0_b1__65_n_0),
        .I1(g0_b1__66_n_0),
        .O(ARG_i_593_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_594
       (.I0(g0_b1__63_n_0),
        .I1(g0_b1__64_n_0),
        .O(ARG_i_594_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_595
       (.I0(g0_b1__77_n_0),
        .I1(g0_b1__78_n_0),
        .O(ARG_i_595_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_596
       (.I0(g0_b1__75_n_0),
        .I1(g0_b1__76_n_0),
        .O(ARG_i_596_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_597
       (.I0(g0_b1__73_n_0),
        .I1(g0_b1__74_n_0),
        .O(ARG_i_597_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_598
       (.I0(g0_b1__71_n_0),
        .I1(g0_b1__72_n_0),
        .O(ARG_i_598_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_599
       (.I0(g0_b1__85_n_0),
        .I1(g0_b1__86_n_0),
        .O(ARG_i_599_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    ARG_i_6
       (.I0(ARG_i_51_n_0),
        .I1(\input_counter_reg[5]_0 [3]),
        .I2(ARG_i_52_n_0),
        .I3(ARG_i_44_n_0),
        .I4(ARG_i_53_n_0),
        .I5(ARG_i_54_n_0),
        .O(B[2]));
  MUXF7 ARG_i_60
       (.I0(ARG_i_137_n_0),
        .I1(ARG_i_138_n_0),
        .O(ARG_i_60_n_0),
        .S(\input_counter_reg[5]_0 [2]));
  MUXF7 ARG_i_600
       (.I0(g0_b1__83_n_0),
        .I1(g0_b1__84_n_0),
        .O(ARG_i_600_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_601
       (.I0(g0_b1__81_n_0),
        .I1(g0_b1__82_n_0),
        .O(ARG_i_601_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_602
       (.I0(g0_b1__79_n_0),
        .I1(g0_b1__80_n_0),
        .O(ARG_i_602_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_603
       (.I0(g0_b1__93_n_0),
        .I1(g0_b1__94_n_0),
        .O(ARG_i_603_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_604
       (.I0(g0_b1__91_n_0),
        .I1(g0_b1__92_n_0),
        .O(ARG_i_604_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_605
       (.I0(g0_b1__89_n_0),
        .I1(g0_b1__90_n_0),
        .O(ARG_i_605_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_606
       (.I0(g0_b1__87_n_0),
        .I1(g0_b1__88_n_0),
        .O(ARG_i_606_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  LUT6 #(
    .INIT(64'hB854F53000F3A1BA)) 
    ARG_i_607
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_607_n_0));
  LUT6 #(
    .INIT(64'h24124112B6EF94B4)) 
    ARG_i_608
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_608_n_0));
  LUT6 #(
    .INIT(64'h3EBDBEE43BB349F1)) 
    ARG_i_609
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_609_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    ARG_i_61
       (.I0(ARG_i_139_n_0),
        .I1(ARG_i_78_n_0),
        .I2(ARG_i_140_n_0),
        .I3(\input_counter_reg[5]_0 [3]),
        .I4(ARG_i_141_n_0),
        .I5(ARG_i_101_n_0),
        .O(ARG_i_61_n_0));
  LUT6 #(
    .INIT(64'hD05E5A502E9169B3)) 
    ARG_i_610
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_610_n_0));
  LUT6 #(
    .INIT(64'hB9C9327CD2658119)) 
    ARG_i_611
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_611_n_0));
  LUT6 #(
    .INIT(64'hF8491A6645ED5FBD)) 
    ARG_i_612
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[2]_rep__0_0 ),
        .O(ARG_i_612_n_0));
  LUT6 #(
    .INIT(64'hCEE9A61779A16C24)) 
    ARG_i_613
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_613_n_0));
  LUT6 #(
    .INIT(64'h075122E64AC5171D)) 
    ARG_i_614
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_614_n_0));
  MUXF7 ARG_i_615
       (.I0(g0_b0__11_n_0),
        .I1(g0_b0__12_n_0),
        .O(ARG_i_615_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_616
       (.I0(g0_b0__13_n_0),
        .I1(g0_b0__14_n_0),
        .O(ARG_i_616_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_617
       (.I0(g0_b0__7_n_0),
        .I1(g0_b0__8_n_0),
        .O(ARG_i_617_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_618
       (.I0(g0_b0__9_n_0),
        .I1(g0_b0__10_n_0),
        .O(ARG_i_618_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_619
       (.I0(g0_b0__3_n_0),
        .I1(g0_b0__4_n_0),
        .O(ARG_i_619_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    ARG_i_62
       (.I0(ARG_i_142_n_0),
        .I1(\input_counter_reg[5]_0 [2]),
        .I2(ARG_i_143_n_0),
        .I3(layer_idx[1]),
        .I4(layer_idx[0]),
        .I5(\weight_rom_inst/weights_l4[0,0] [0]),
        .O(ARG_i_62_n_0));
  MUXF7 ARG_i_620
       (.I0(g0_b0__5_n_0),
        .I1(g0_b0__6_n_0),
        .O(ARG_i_620_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_621
       (.I0(g0_b0_n_0),
        .I1(g0_b0__0_n_0),
        .O(ARG_i_621_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_622
       (.I0(g0_b0__1_n_0),
        .I1(g0_b0__2_n_0),
        .O(ARG_i_622_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_623
       (.I0(g0_b0__27_n_0),
        .I1(g0_b0__28_n_0),
        .O(ARG_i_623_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_624
       (.I0(g0_b0__29_n_0),
        .I1(g0_b0__30_n_0),
        .O(ARG_i_624_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_625
       (.I0(g0_b0__23_n_0),
        .I1(g0_b0__24_n_0),
        .O(ARG_i_625_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_626
       (.I0(g0_b0__25_n_0),
        .I1(g0_b0__26_n_0),
        .O(ARG_i_626_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_627
       (.I0(g0_b0__19_n_0),
        .I1(g0_b0__20_n_0),
        .O(ARG_i_627_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_628
       (.I0(g0_b0__21_n_0),
        .I1(g0_b0__22_n_0),
        .O(ARG_i_628_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_629
       (.I0(g0_b0__15_n_0),
        .I1(g0_b0__16_n_0),
        .O(ARG_i_629_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ARG_i_63
       (.I0(layer_idx[1]),
        .I1(layer_idx[0]),
        .I2(\layer_counter_reg[2]_0 ),
        .O(\layer_counter_reg[1]_0 ));
  MUXF7 ARG_i_630
       (.I0(g0_b0__17_n_0),
        .I1(g0_b0__18_n_0),
        .O(ARG_i_630_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_631
       (.I0(g0_b0__43_n_0),
        .I1(g0_b0__44_n_0),
        .O(ARG_i_631_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_632
       (.I0(g0_b0__45_n_0),
        .I1(g0_b0__46_n_0),
        .O(ARG_i_632_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_633
       (.I0(g0_b0__39_n_0),
        .I1(g0_b0__40_n_0),
        .O(ARG_i_633_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_634
       (.I0(g0_b0__41_n_0),
        .I1(g0_b0__42_n_0),
        .O(ARG_i_634_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_635
       (.I0(g0_b0__35_n_0),
        .I1(g0_b0__36_n_0),
        .O(ARG_i_635_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_636
       (.I0(g0_b0__37_n_0),
        .I1(g0_b0__38_n_0),
        .O(ARG_i_636_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_637
       (.I0(g0_b0__31_n_0),
        .I1(g0_b0__32_n_0),
        .O(ARG_i_637_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_638
       (.I0(g0_b0__33_n_0),
        .I1(g0_b0__34_n_0),
        .O(ARG_i_638_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_639
       (.I0(g0_b0__59_n_0),
        .I1(g0_b0__60_n_0),
        .O(ARG_i_639_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  LUT6 #(
    .INIT(64'h00F9FFFF00F90000)) 
    ARG_i_64
       (.I0(i_wr_addr),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\neuron_counter_reg[1]_rep__4_0 ),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(layer_idx[1]),
        .I5(g0_b6__63_n_0),
        .O(ARG_i_64_n_0));
  MUXF7 ARG_i_640
       (.I0(g0_b0__61_n_0),
        .I1(g0_b0__62_n_0),
        .O(ARG_i_640_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_641
       (.I0(g0_b0__55_n_0),
        .I1(g0_b0__56_n_0),
        .O(ARG_i_641_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_642
       (.I0(g0_b0__57_n_0),
        .I1(g0_b0__58_n_0),
        .O(ARG_i_642_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_643
       (.I0(g0_b0__51_n_0),
        .I1(g0_b0__52_n_0),
        .O(ARG_i_643_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_644
       (.I0(g0_b0__53_n_0),
        .I1(g0_b0__54_n_0),
        .O(ARG_i_644_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_645
       (.I0(g0_b0__47_n_0),
        .I1(g0_b0__48_n_0),
        .O(ARG_i_645_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_646
       (.I0(g0_b0__49_n_0),
        .I1(g0_b0__50_n_0),
        .O(ARG_i_646_n_0),
        .S(\input_counter_reg[0]_rep__2_n_0 ));
  MUXF7 ARG_i_647
       (.I0(g0_b0__69_n_0),
        .I1(g0_b0__70_n_0),
        .O(ARG_i_647_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_648
       (.I0(g0_b0__67_n_0),
        .I1(g0_b0__68_n_0),
        .O(ARG_i_648_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_649
       (.I0(g0_b0__65_n_0),
        .I1(g0_b0__66_n_0),
        .O(ARG_i_649_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  LUT6 #(
    .INIT(64'h7A71FFFF7A710000)) 
    ARG_i_65
       (.I0(i_wr_addr),
        .I1(\neuron_counter_reg[2]_rep__0_0 ),
        .I2(\neuron_counter_reg[1]_rep__4_0 ),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(layer_idx[1]),
        .I5(g0_b5__104_n_0),
        .O(ARG_i_65_n_0));
  MUXF7 ARG_i_650
       (.I0(g0_b0__63_n_0),
        .I1(g0_b0__64_n_0),
        .O(ARG_i_650_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_651
       (.I0(g0_b0__77_n_0),
        .I1(g0_b0__78_n_0),
        .O(ARG_i_651_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_652
       (.I0(g0_b0__75_n_0),
        .I1(g0_b0__76_n_0),
        .O(ARG_i_652_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_653
       (.I0(g0_b0__73_n_0),
        .I1(g0_b0__74_n_0),
        .O(ARG_i_653_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_654
       (.I0(g0_b0__71_n_0),
        .I1(g0_b0__72_n_0),
        .O(ARG_i_654_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_655
       (.I0(g0_b0__85_n_0),
        .I1(g0_b0__86_n_0),
        .O(ARG_i_655_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_656
       (.I0(g0_b0__83_n_0),
        .I1(g0_b0__84_n_0),
        .O(ARG_i_656_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_657
       (.I0(g0_b0__81_n_0),
        .I1(g0_b0__82_n_0),
        .O(ARG_i_657_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_658
       (.I0(g0_b0__79_n_0),
        .I1(g0_b0__80_n_0),
        .O(ARG_i_658_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_659
       (.I0(g0_b0__93_n_0),
        .I1(g0_b0__94_n_0),
        .O(ARG_i_659_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  LUT6 #(
    .INIT(64'h604FFFFF604F0000)) 
    ARG_i_66
       (.I0(\neuron_counter_reg[2]_rep__0_0 ),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[1]_rep__4_0 ),
        .I4(layer_idx[1]),
        .I5(g0_b4__104_n_0),
        .O(ARG_i_66_n_0));
  MUXF7 ARG_i_660
       (.I0(g0_b0__91_n_0),
        .I1(g0_b0__92_n_0),
        .O(ARG_i_660_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_661
       (.I0(g0_b0__89_n_0),
        .I1(g0_b0__90_n_0),
        .O(ARG_i_661_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  MUXF7 ARG_i_662
       (.I0(g0_b0__87_n_0),
        .I1(g0_b0__88_n_0),
        .O(ARG_i_662_n_0),
        .S(\input_counter_reg[0]_rep_n_0 ));
  LUT6 #(
    .INIT(64'hD374B57C35D30A9C)) 
    ARG_i_663
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_663_n_0));
  LUT6 #(
    .INIT(64'h346BBC421F696C9F)) 
    ARG_i_664
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_664_n_0));
  LUT6 #(
    .INIT(64'h274A0812A400EB13)) 
    ARG_i_665
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_665_n_0));
  LUT6 #(
    .INIT(64'hBC4EC7F8CCF3F86C)) 
    ARG_i_666
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[5]_0 [0]),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_666_n_0));
  LUT6 #(
    .INIT(64'hF57AA3797FD9F88F)) 
    ARG_i_667
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_667_n_0));
  LUT6 #(
    .INIT(64'h5CC4FCDA9643312A)) 
    ARG_i_668
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[2]_rep__0_0 ),
        .O(ARG_i_668_n_0));
  LUT6 #(
    .INIT(64'hC340D735D9E6E2C8)) 
    ARG_i_669
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(\neuron_counter_reg[2]_rep__0_0 ),
        .I5(\neuron_counter_reg[1]_rep__4_0 ),
        .O(ARG_i_669_n_0));
  LUT6 #(
    .INIT(64'h0A17FFFF0A170000)) 
    ARG_i_67
       (.I0(i_wr_addr),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(\neuron_counter_reg[1]_rep_n_0 ),
        .I4(layer_idx[1]),
        .I5(g0_b3__104_n_0),
        .O(ARG_i_67_n_0));
  LUT6 #(
    .INIT(64'hAB7ED46E6BDF53EA)) 
    ARG_i_670
       (.I0(i_rd_addr[1]),
        .I1(\input_counter_reg[0]_rep__2_n_0 ),
        .I2(i_wr_addr),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .I4(\neuron_counter_reg[1]_rep__4_0 ),
        .I5(\neuron_counter_reg[5]_0 [0]),
        .O(ARG_i_670_n_0));
  LUT6 #(
    .INIT(64'h4642FFFF46420000)) 
    ARG_i_68
       (.I0(i_wr_addr),
        .I1(\neuron_counter_reg[2]_rep_n_0 ),
        .I2(\neuron_counter_reg[1]_rep_n_0 ),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(layer_idx[1]),
        .I5(g0_b2__104_n_0),
        .O(ARG_i_68_n_0));
  LUT6 #(
    .INIT(64'hA5FCFFFFA5FC0000)) 
    ARG_i_69
       (.I0(i_wr_addr),
        .I1(\neuron_counter_reg[2]_rep_n_0 ),
        .I2(\neuron_counter_reg[1]_rep_n_0 ),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(layer_idx[1]),
        .I5(g0_b1__104_n_0),
        .O(ARG_i_69_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    ARG_i_7
       (.I0(ARG_i_55_n_0),
        .I1(\input_counter_reg[5]_0 [3]),
        .I2(ARG_i_56_n_0),
        .I3(ARG_i_44_n_0),
        .I4(ARG_i_57_n_0),
        .I5(ARG_i_58_n_0),
        .O(B[1]));
  LUT5 #(
    .INIT(32'hA0A82A28)) 
    ARG_i_70
       (.I0(layer_idx[1]),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\neuron_counter_reg[1]_rep_n_0 ),
        .I3(\neuron_counter_reg[2]_rep_n_0 ),
        .I4(i_wr_addr),
        .O(ARG_i_70_n_0));
  MUXF8 ARG_i_71
       (.I0(ARG_i_145_n_0),
        .I1(ARG_i_146_n_0),
        .O(ARG_i_71_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_72
       (.I0(ARG_i_147_n_0),
        .I1(ARG_i_148_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_149_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_150_n_0),
        .O(ARG_i_72_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_73
       (.I0(ARG_i_151_n_0),
        .I1(ARG_i_152_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_153_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_154_n_0),
        .O(ARG_i_73_n_0));
  MUXF8 ARG_i_74
       (.I0(ARG_i_155_n_0),
        .I1(ARG_i_156_n_0),
        .O(ARG_i_74_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF8 ARG_i_75
       (.I0(ARG_i_157_n_0),
        .I1(ARG_i_158_n_0),
        .O(ARG_i_75_n_0),
        .S(fsm_input_addr[1]));
  MUXF8 ARG_i_76
       (.I0(ARG_i_159_n_0),
        .I1(ARG_i_160_n_0),
        .O(ARG_i_76_n_0),
        .S(fsm_input_addr[1]));
  MUXF7 ARG_i_77
       (.I0(ARG_i_161_n_0),
        .I1(ARG_i_162_n_0),
        .O(ARG_i_77_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ARG_i_78
       (.I0(\input_counter_reg[5]_0 [0]),
        .I1(\input_counter_reg[5]_0 [3]),
        .I2(\input_counter_reg[5]_0 [2]),
        .O(ARG_i_78_n_0));
  MUXF7 ARG_i_79
       (.I0(ARG_i_163_n_0),
        .I1(ARG_i_164_n_0),
        .O(ARG_i_79_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE200)) 
    ARG_i_8
       (.I0(ARG_i_59_n_0),
        .I1(\input_counter_reg[5]_0 [3]),
        .I2(ARG_i_60_n_0),
        .I3(ARG_i_44_n_0),
        .I4(ARG_i_61_n_0),
        .I5(ARG_i_62_n_0),
        .O(B[0]));
  MUXF8 ARG_i_80
       (.I0(ARG_i_165_n_0),
        .I1(ARG_i_166_n_0),
        .O(ARG_i_80_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF8 ARG_i_81
       (.I0(ARG_i_167_n_0),
        .I1(ARG_i_168_n_0),
        .O(ARG_i_81_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF8 ARG_i_82
       (.I0(ARG_i_169_n_0),
        .I1(ARG_i_170_n_0),
        .O(ARG_i_82_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_83
       (.I0(ARG_i_147_n_0),
        .I1(ARG_i_171_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_172_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_173_n_0),
        .O(ARG_i_83_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_84
       (.I0(ARG_i_174_n_0),
        .I1(ARG_i_152_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_175_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_176_n_0),
        .O(ARG_i_84_n_0));
  MUXF8 ARG_i_85
       (.I0(ARG_i_177_n_0),
        .I1(ARG_i_178_n_0),
        .O(ARG_i_85_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF8 ARG_i_86
       (.I0(ARG_i_179_n_0),
        .I1(ARG_i_180_n_0),
        .O(ARG_i_86_n_0),
        .S(fsm_input_addr[1]));
  MUXF8 ARG_i_87
       (.I0(ARG_i_181_n_0),
        .I1(ARG_i_182_n_0),
        .O(ARG_i_87_n_0),
        .S(fsm_input_addr[1]));
  MUXF7 ARG_i_88
       (.I0(ARG_i_183_n_0),
        .I1(ARG_i_184_n_0),
        .O(ARG_i_88_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF7 ARG_i_89
       (.I0(ARG_i_185_n_0),
        .I1(ARG_i_186_n_0),
        .O(ARG_i_89_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF7 ARG_i_90
       (.I0(ARG_i_187_n_0),
        .I1(ARG_i_188_n_0),
        .O(ARG_i_90_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_91
       (.I0(ARG_i_189_n_0),
        .I1(ARG_i_190_n_0),
        .O(ARG_i_91_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_92
       (.I0(ARG_i_191_n_0),
        .I1(ARG_i_192_n_0),
        .O(ARG_i_92_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  MUXF7 ARG_i_93
       (.I0(ARG_i_193_n_0),
        .I1(ARG_i_194_n_0),
        .O(ARG_i_93_n_0),
        .S(\input_counter_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_94
       (.I0(ARG_i_195_n_0),
        .I1(ARG_i_196_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_197_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_198_n_0),
        .O(ARG_i_94_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_95
       (.I0(ARG_i_199_n_0),
        .I1(ARG_i_200_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_201_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_202_n_0),
        .O(ARG_i_95_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_96
       (.I0(ARG_i_203_n_0),
        .I1(ARG_i_204_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_205_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_206_n_0),
        .O(ARG_i_96_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ARG_i_97
       (.I0(ARG_i_207_n_0),
        .I1(ARG_i_208_n_0),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(ARG_i_209_n_0),
        .I4(\input_counter_reg[5]_0 [0]),
        .I5(ARG_i_210_n_0),
        .O(ARG_i_97_n_0));
  MUXF7 ARG_i_98
       (.I0(ARG_i_211_n_0),
        .I1(ARG_i_212_n_0),
        .O(ARG_i_98_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  MUXF7 ARG_i_99
       (.I0(ARG_i_213_n_0),
        .I1(ARG_i_214_n_0),
        .O(ARG_i_99_n_0),
        .S(\input_counter_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(mac_enable),
        .I1(\FSM_onehot_state[10]_i_3_n_0 ),
        .I2(\FSM_onehot_state[10]_i_4_n_0 ),
        .I3(\FSM_onehot_state[10]_i_5_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(mac_clear),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h88880888)) 
    \FSM_onehot_state[10]_i_2 
       (.I0(\FSM_onehot_state[10]_i_6_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(layer_idx[0]),
        .I3(layer_idx[1]),
        .I4(\layer_counter_reg[2]_0 ),
        .O(\FSM_onehot_state[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101010110202001)) 
    \FSM_onehot_state[10]_i_3 
       (.I0(\input_counter_reg[5]_0 [2]),
        .I1(\FSM_onehot_state[10]_i_7_n_0 ),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(layer_idx[0]),
        .I4(layer_idx[1]),
        .I5(\layer_counter_reg[2]_0 ),
        .O(\FSM_onehot_state[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[10]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[8] ),
        .O(\FSM_onehot_state[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFEAA)) 
    \FSM_onehot_state[10]_i_5 
       (.I0(ram_swap),
        .I1(Q[2]),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(mlp_start),
        .O(\FSM_onehot_state[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80000200)) 
    \FSM_onehot_state[10]_i_6 
       (.I0(\FSM_onehot_state[7]_i_2_n_0 ),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\FSM_onehot_state[7]_i_3_n_0 ),
        .I3(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[2]_rep_n_0 ),
        .O(\FSM_onehot_state[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFF7FFFFF7FFF)) 
    \FSM_onehot_state[10]_i_7 
       (.I0(\input_counter_reg[5]_0 [0]),
        .I1(i_rd_addr[1]),
        .I2(i_rd_addr[0]),
        .I3(layer_idx[1]),
        .I4(\layer_counter_reg[2]_0 ),
        .I5(\input_counter_reg[5]_0 [3]),
        .O(\FSM_onehot_state[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\compare_counter_reg_n_0_[1] ),
        .I1(\compare_counter_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEFE)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state[10]_i_6_n_0 ),
        .I4(ram_swap),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(output_addr[2]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[5]_0 [0]),
        .I3(\FSM_onehot_state[7]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state[7]_i_3_n_0 ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8082818801000000)) 
    \FSM_onehot_state[7]_i_2 
       (.I0(\neuron_counter_reg[5]_0 [1]),
        .I1(\neuron_counter_reg[5]_0 [2]),
        .I2(\layer_counter_reg[2]_0 ),
        .I3(layer_idx[1]),
        .I4(layer_idx[0]),
        .I5(\neuron_counter_reg[3]_rep__5_n_0 ),
        .O(\FSM_onehot_state[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \FSM_onehot_state[7]_i_3 
       (.I0(\layer_counter_reg[2]_0 ),
        .I1(layer_idx[1]),
        .I2(layer_idx[0]),
        .O(\FSM_onehot_state[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\compare_counter_reg_n_0_[1] ),
        .I2(\compare_counter_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(mac_enable),
        .Q(Q[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state[10]_i_2_n_0 ),
        .Q(ram_swap),
        .R(SR));
  (* FSM_ENCODED_STATES = "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(Q[0]),
        .Q(Q[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(mac_clear),
        .Q(mac_enable),
        .R(SR));
  (* FSM_ENCODED_STATES = "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(mac_clear),
        .R(SR));
  (* FSM_ENCODED_STATES = "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "apply_activation:00000000001,write_ram:00000000010,process_neuron:00000001000,done_state:00000100000,load_bias:00001000000,idle:00000010000,find_max_compare:01000000000,find_max_init:00010000000,next_layer:10000000000,find_max_read:00100000000,next_neuron:00000000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    accumulator_reg_i_1
       (.I0(mac_enable),
        .I1(Q[0]),
        .O(\FSM_onehot_state_reg[3]_1 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    accumulator_reg_i_2
       (.I0(mac_enable),
        .I1(Q[0]),
        .I2(mac_clear),
        .I3(S_AXI_ARESETN),
        .O(\FSM_onehot_state_reg[3]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1] [1]),
        .I2(\axi_rdata_reg[1] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(o_class_result[0]),
        .I1(\axi_rdata_reg[1]_0 [0]),
        .I2(\axi_rdata_reg[1] [3]),
        .I3(Q[2]),
        .I4(\axi_rdata_reg[1] [2]),
        .I5(\axi_rdata_reg[1]_2 [0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1] [3]),
        .I2(\axi_rdata_reg[1]_0 [1]),
        .I3(\axi_rdata_reg[1] [2]),
        .I4(o_class_result[1]),
        .I5(\axi_rdata_reg[1]_1 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h1F10)) 
    \axi_rdata[1]_i_2 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\axi_rdata_reg[1] [2]),
        .I3(\axi_rdata_reg[1]_2 [1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0C0C181C)) 
    \compare_counter[0]_i_1 
       (.I0(\FSM_onehot_state[7]_i_1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\compare_counter_reg_n_0_[0] ),
        .I3(\compare_counter_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\compare_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0CC01DC0)) 
    \compare_counter[1]_i_1 
       (.I0(\FSM_onehot_state[7]_i_1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\compare_counter_reg_n_0_[0] ),
        .I3(\compare_counter_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\compare_counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \compare_counter_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\compare_counter[0]_i_1_n_0 ),
        .Q(\compare_counter_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \compare_counter_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\compare_counter[1]_i_1_n_0 ),
        .Q(\compare_counter_reg_n_0_[1] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h6443620B)) 
    g0_b0
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0_n_0));
  LUT5 #(
    .INIT(32'h6D6DBD5F)) 
    g0_b0__0
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__0_n_0));
  LUT5 #(
    .INIT(32'hB1F13CA2)) 
    g0_b0__1
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__1_n_0));
  LUT5 #(
    .INIT(32'h1703C9A3)) 
    g0_b0__10
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__10_n_0));
  LUT6 #(
    .INIT(64'hF62A77666ABD091E)) 
    g0_b0__100
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__100_n_0));
  LUT6 #(
    .INIT(64'hA2F1C21CEEF6A87C)) 
    g0_b0__101
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__101_n_0));
  LUT6 #(
    .INIT(64'h06C8EF08A12A6DC6)) 
    g0_b0__102
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__102_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hAE7F2EA1)) 
    g0_b0__103
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(\weight_rom_inst/p_0_out [0]));
  LUT6 #(
    .INIT(64'h6C7D1097C6C33554)) 
    g0_b0__104
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__104_n_0));
  LUT5 #(
    .INIT(32'h41DEF60A)) 
    g0_b0__11
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__11_n_0));
  LUT5 #(
    .INIT(32'hA0D40A66)) 
    g0_b0__12
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__12_n_0));
  LUT5 #(
    .INIT(32'hD48C76F0)) 
    g0_b0__13
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__13_n_0));
  LUT5 #(
    .INIT(32'h3EA44248)) 
    g0_b0__14
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__14_n_0));
  LUT5 #(
    .INIT(32'h6C6FDA4A)) 
    g0_b0__15
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__15_n_0));
  LUT5 #(
    .INIT(32'h1BE8E5EA)) 
    g0_b0__16
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__16_n_0));
  LUT5 #(
    .INIT(32'h702EAA5B)) 
    g0_b0__17
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__17_n_0));
  LUT5 #(
    .INIT(32'hF1B9EE3F)) 
    g0_b0__18
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__18_n_0));
  LUT5 #(
    .INIT(32'h1E659828)) 
    g0_b0__19
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__19_n_0));
  LUT5 #(
    .INIT(32'h4661C32C)) 
    g0_b0__2
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__2_n_0));
  LUT5 #(
    .INIT(32'h14384428)) 
    g0_b0__20
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__20_n_0));
  LUT5 #(
    .INIT(32'h90D826A4)) 
    g0_b0__21
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__21_n_0));
  LUT5 #(
    .INIT(32'h52B93808)) 
    g0_b0__22
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__22_n_0));
  LUT5 #(
    .INIT(32'h6563B0F7)) 
    g0_b0__23
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__23_n_0));
  LUT5 #(
    .INIT(32'h8BCCA38F)) 
    g0_b0__24
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__24_n_0));
  LUT5 #(
    .INIT(32'hADEF9F2B)) 
    g0_b0__25
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__25_n_0));
  LUT5 #(
    .INIT(32'hF88F0629)) 
    g0_b0__26
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__26_n_0));
  LUT5 #(
    .INIT(32'hC74C662E)) 
    g0_b0__27
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__27_n_0));
  LUT5 #(
    .INIT(32'h2CD0815D)) 
    g0_b0__28
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__28_n_0));
  LUT5 #(
    .INIT(32'hCB53A3DC)) 
    g0_b0__29
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__29_n_0));
  LUT5 #(
    .INIT(32'h2CB924B4)) 
    g0_b0__3
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__3_n_0));
  LUT5 #(
    .INIT(32'hD6424D84)) 
    g0_b0__30
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__30_n_0));
  LUT5 #(
    .INIT(32'h67BF44F1)) 
    g0_b0__31
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__31_n_0));
  LUT5 #(
    .INIT(32'h50596347)) 
    g0_b0__32
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__32_n_0));
  LUT5 #(
    .INIT(32'h3D2F555E)) 
    g0_b0__33
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__33_n_0));
  LUT5 #(
    .INIT(32'hD03B2177)) 
    g0_b0__34
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__34_n_0));
  LUT5 #(
    .INIT(32'h1C38BA24)) 
    g0_b0__35
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__35_n_0));
  LUT5 #(
    .INIT(32'h6C89B3ED)) 
    g0_b0__36
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__36_n_0));
  LUT5 #(
    .INIT(32'hAA8BB01C)) 
    g0_b0__37
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__37_n_0));
  LUT5 #(
    .INIT(32'h53F6D277)) 
    g0_b0__38
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__38_n_0));
  LUT5 #(
    .INIT(32'h704CE0D5)) 
    g0_b0__39
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__39_n_0));
  LUT5 #(
    .INIT(32'hA007E0F4)) 
    g0_b0__4
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__4_n_0));
  LUT5 #(
    .INIT(32'h8A508FDC)) 
    g0_b0__40
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__40_n_0));
  LUT5 #(
    .INIT(32'h604A1D6C)) 
    g0_b0__41
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__41_n_0));
  LUT5 #(
    .INIT(32'hF73117E1)) 
    g0_b0__42
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__42_n_0));
  LUT5 #(
    .INIT(32'hE50EF548)) 
    g0_b0__43
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__43_n_0));
  LUT5 #(
    .INIT(32'hF0B07C24)) 
    g0_b0__44
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__44_n_0));
  LUT5 #(
    .INIT(32'h095E069E)) 
    g0_b0__45
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__45_n_0));
  LUT5 #(
    .INIT(32'hE4C49EC2)) 
    g0_b0__46
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__46_n_0));
  LUT5 #(
    .INIT(32'hEC09BF16)) 
    g0_b0__47
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__47_n_0));
  LUT5 #(
    .INIT(32'hDC2D0E17)) 
    g0_b0__48
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__48_n_0));
  LUT5 #(
    .INIT(32'h5918F398)) 
    g0_b0__49
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__49_n_0));
  LUT5 #(
    .INIT(32'h227F209D)) 
    g0_b0__5
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__5_n_0));
  LUT5 #(
    .INIT(32'hACCB1E15)) 
    g0_b0__50
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__50_n_0));
  LUT5 #(
    .INIT(32'h22E4F1B6)) 
    g0_b0__51
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__51_n_0));
  LUT5 #(
    .INIT(32'hF951958D)) 
    g0_b0__52
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__52_n_0));
  LUT5 #(
    .INIT(32'h06BF7209)) 
    g0_b0__53
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__53_n_0));
  LUT5 #(
    .INIT(32'h5D5E3217)) 
    g0_b0__54
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__54_n_0));
  LUT5 #(
    .INIT(32'hF168253E)) 
    g0_b0__55
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__55_n_0));
  LUT5 #(
    .INIT(32'hCF902A37)) 
    g0_b0__56
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__56_n_0));
  LUT5 #(
    .INIT(32'h00E3FA8B)) 
    g0_b0__57
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__57_n_0));
  LUT5 #(
    .INIT(32'hF2EF9225)) 
    g0_b0__58
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__58_n_0));
  LUT5 #(
    .INIT(32'hC3012B5A)) 
    g0_b0__59
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__59_n_0));
  LUT5 #(
    .INIT(32'hABF0FA5A)) 
    g0_b0__6
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__6_n_0));
  LUT5 #(
    .INIT(32'hECC2EEDC)) 
    g0_b0__60
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__60_n_0));
  LUT5 #(
    .INIT(32'h6BD613D8)) 
    g0_b0__61
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__61_n_0));
  LUT5 #(
    .INIT(32'hF3E641F6)) 
    g0_b0__62
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__62_n_0));
  LUT6 #(
    .INIT(64'hE242C671E197DE32)) 
    g0_b0__63
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__63_n_0));
  LUT6 #(
    .INIT(64'hB9446E4006446984)) 
    g0_b0__64
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__64_n_0));
  LUT6 #(
    .INIT(64'hD92814BDBD4C05ED)) 
    g0_b0__65
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__65_n_0));
  LUT6 #(
    .INIT(64'h211490FE5D0C8848)) 
    g0_b0__66
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__66_n_0));
  LUT6 #(
    .INIT(64'hCCFC2DC87CDDAA7B)) 
    g0_b0__67
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__67_n_0));
  LUT6 #(
    .INIT(64'hAE3E83E63B32A194)) 
    g0_b0__68
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__68_n_0));
  LUT6 #(
    .INIT(64'h28A1AD264A88F014)) 
    g0_b0__69
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__69_n_0));
  LUT5 #(
    .INIT(32'hC853846B)) 
    g0_b0__7
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__7_n_0));
  LUT6 #(
    .INIT(64'hF006E56647862526)) 
    g0_b0__70
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__70_n_0));
  LUT6 #(
    .INIT(64'h4A78CD982776E983)) 
    g0_b0__71
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__71_n_0));
  LUT6 #(
    .INIT(64'hA78ACCD6786735C3)) 
    g0_b0__72
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__72_n_0));
  LUT6 #(
    .INIT(64'h7F1FBF4CDD308999)) 
    g0_b0__73
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__73_n_0));
  LUT6 #(
    .INIT(64'h13807CFA9D1F1E51)) 
    g0_b0__74
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__74_n_0));
  LUT6 #(
    .INIT(64'hB6F4F87F80C1EF54)) 
    g0_b0__75
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__75_n_0));
  LUT6 #(
    .INIT(64'h13105AAEF13A2B6C)) 
    g0_b0__76
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__76_n_0));
  LUT6 #(
    .INIT(64'hB612D25071F9421C)) 
    g0_b0__77
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__77_n_0));
  LUT6 #(
    .INIT(64'hEFF220C8C192F7AB)) 
    g0_b0__78
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__78_n_0));
  LUT6 #(
    .INIT(64'h325E142549AC3631)) 
    g0_b0__79
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__79_n_0));
  LUT5 #(
    .INIT(32'h658848C8)) 
    g0_b0__8
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__8_n_0));
  LUT6 #(
    .INIT(64'h03CEDFFF1F5D56F7)) 
    g0_b0__80
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__80_n_0));
  LUT6 #(
    .INIT(64'hC73964287B0D4B7E)) 
    g0_b0__81
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__81_n_0));
  LUT6 #(
    .INIT(64'h76213B31F90FA075)) 
    g0_b0__82
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__82_n_0));
  LUT6 #(
    .INIT(64'hB604655CDC2B8AB8)) 
    g0_b0__83
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__83_n_0));
  LUT6 #(
    .INIT(64'hCDB965AA5C5DCFD1)) 
    g0_b0__84
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__84_n_0));
  LUT6 #(
    .INIT(64'hEAEDEF39662EF340)) 
    g0_b0__85
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__85_n_0));
  LUT6 #(
    .INIT(64'h2DFADA5ED9D3B9EE)) 
    g0_b0__86
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__86_n_0));
  LUT6 #(
    .INIT(64'h16C3186FA981E579)) 
    g0_b0__87
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__87_n_0));
  LUT6 #(
    .INIT(64'h2A7F908C9A10200D)) 
    g0_b0__88
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__88_n_0));
  LUT6 #(
    .INIT(64'h408E6CB70319309C)) 
    g0_b0__89
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__89_n_0));
  LUT5 #(
    .INIT(32'h70EB1881)) 
    g0_b0__9
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b0__9_n_0));
  LUT6 #(
    .INIT(64'h90FEA154B3E8AD75)) 
    g0_b0__90
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__90_n_0));
  LUT6 #(
    .INIT(64'hBB7EE1193A3CB461)) 
    g0_b0__91
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__91_n_0));
  LUT6 #(
    .INIT(64'h9B7DE82E9E164DF9)) 
    g0_b0__92
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__92_n_0));
  LUT6 #(
    .INIT(64'hC158C288B9B2F371)) 
    g0_b0__93
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__93_n_0));
  LUT6 #(
    .INIT(64'h8902D5339E3A3620)) 
    g0_b0__94
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__94_n_0));
  LUT6 #(
    .INIT(64'h1E738EB93CC012BB)) 
    g0_b0__95
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__95_n_0));
  LUT6 #(
    .INIT(64'h8A887F76C5938D43)) 
    g0_b0__96
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__96_n_0));
  LUT6 #(
    .INIT(64'h8E348DCF60C1F838)) 
    g0_b0__97
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__97_n_0));
  LUT6 #(
    .INIT(64'h3F597824828D5649)) 
    g0_b0__98
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__98_n_0));
  LUT6 #(
    .INIT(64'h055D534A826F15B8)) 
    g0_b0__99
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b0__99_n_0));
  LUT5 #(
    .INIT(32'h3B80EE54)) 
    g0_b1
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1_n_0));
  LUT5 #(
    .INIT(32'h75441FA2)) 
    g0_b1__0
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__0_n_0));
  LUT5 #(
    .INIT(32'h3A18A3E2)) 
    g0_b1__1
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__1_n_0));
  LUT5 #(
    .INIT(32'hFC198C37)) 
    g0_b1__10
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__10_n_0));
  LUT6 #(
    .INIT(64'h75EE2C727B7A3727)) 
    g0_b1__100
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__100_n_0));
  LUT6 #(
    .INIT(64'h97CF168D2BA1AE32)) 
    g0_b1__101
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__101_n_0));
  LUT6 #(
    .INIT(64'h382AAD74F7C41AEE)) 
    g0_b1__102
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__102_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h37DE9D35)) 
    g0_b1__103
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(\weight_rom_inst/p_0_out [1]));
  LUT6 #(
    .INIT(64'hE83D6985C664FE13)) 
    g0_b1__104
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__104_n_0));
  LUT5 #(
    .INIT(32'h8EEE4D03)) 
    g0_b1__11
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__11_n_0));
  LUT5 #(
    .INIT(32'hD0D736CF)) 
    g0_b1__12
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__12_n_0));
  LUT5 #(
    .INIT(32'h66DEE7CB)) 
    g0_b1__13
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__13_n_0));
  LUT5 #(
    .INIT(32'h9AFD55AB)) 
    g0_b1__14
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__14_n_0));
  LUT5 #(
    .INIT(32'h469AA799)) 
    g0_b1__15
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__15_n_0));
  LUT5 #(
    .INIT(32'h53E86FFC)) 
    g0_b1__16
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__16_n_0));
  LUT5 #(
    .INIT(32'hF39B00A4)) 
    g0_b1__17
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__17_n_0));
  LUT5 #(
    .INIT(32'hA5E299AE)) 
    g0_b1__18
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__18_n_0));
  LUT5 #(
    .INIT(32'hD4310E5E)) 
    g0_b1__19
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__19_n_0));
  LUT5 #(
    .INIT(32'h80F2C688)) 
    g0_b1__2
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__2_n_0));
  LUT5 #(
    .INIT(32'hF4BD57D3)) 
    g0_b1__20
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__20_n_0));
  LUT5 #(
    .INIT(32'hC54A738D)) 
    g0_b1__21
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__21_n_0));
  LUT5 #(
    .INIT(32'h3934FDD7)) 
    g0_b1__22
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__22_n_0));
  LUT5 #(
    .INIT(32'h589E0256)) 
    g0_b1__23
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__23_n_0));
  LUT5 #(
    .INIT(32'h4FE296D0)) 
    g0_b1__24
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__24_n_0));
  LUT5 #(
    .INIT(32'h49893F05)) 
    g0_b1__25
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__25_n_0));
  LUT5 #(
    .INIT(32'h9CAA59A7)) 
    g0_b1__26
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__26_n_0));
  LUT5 #(
    .INIT(32'hE6F87D88)) 
    g0_b1__27
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__27_n_0));
  LUT5 #(
    .INIT(32'hE74AC216)) 
    g0_b1__28
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__28_n_0));
  LUT5 #(
    .INIT(32'h7E47C067)) 
    g0_b1__29
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__29_n_0));
  LUT5 #(
    .INIT(32'h43B3BFC4)) 
    g0_b1__3
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__3_n_0));
  LUT5 #(
    .INIT(32'hCD35BD9E)) 
    g0_b1__30
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__30_n_0));
  LUT5 #(
    .INIT(32'h19E5CE2E)) 
    g0_b1__31
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__31_n_0));
  LUT5 #(
    .INIT(32'hFB94B0BC)) 
    g0_b1__32
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__32_n_0));
  LUT5 #(
    .INIT(32'h1812AC1A)) 
    g0_b1__33
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__33_n_0));
  LUT5 #(
    .INIT(32'h39FBB45C)) 
    g0_b1__34
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__34_n_0));
  LUT5 #(
    .INIT(32'h3544D778)) 
    g0_b1__35
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__35_n_0));
  LUT5 #(
    .INIT(32'hF793D7D1)) 
    g0_b1__36
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__36_n_0));
  LUT5 #(
    .INIT(32'h3299F03F)) 
    g0_b1__37
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__37_n_0));
  LUT5 #(
    .INIT(32'hC3DD0556)) 
    g0_b1__38
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__38_n_0));
  LUT5 #(
    .INIT(32'h7E71EF50)) 
    g0_b1__39
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__39_n_0));
  LUT5 #(
    .INIT(32'h3F01C53D)) 
    g0_b1__4
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__4_n_0));
  LUT5 #(
    .INIT(32'h6AC420C5)) 
    g0_b1__40
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__40_n_0));
  LUT5 #(
    .INIT(32'h13FBD979)) 
    g0_b1__41
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__41_n_0));
  LUT5 #(
    .INIT(32'hB99DA490)) 
    g0_b1__42
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__42_n_0));
  LUT5 #(
    .INIT(32'h154EF473)) 
    g0_b1__43
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__43_n_0));
  LUT5 #(
    .INIT(32'h8DEBD595)) 
    g0_b1__44
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__44_n_0));
  LUT5 #(
    .INIT(32'hB132877E)) 
    g0_b1__45
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__45_n_0));
  LUT5 #(
    .INIT(32'h242070FE)) 
    g0_b1__46
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__46_n_0));
  LUT5 #(
    .INIT(32'h4732D19C)) 
    g0_b1__47
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__47_n_0));
  LUT5 #(
    .INIT(32'h6F1FE303)) 
    g0_b1__48
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__48_n_0));
  LUT5 #(
    .INIT(32'h89DC85AB)) 
    g0_b1__49
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__49_n_0));
  LUT5 #(
    .INIT(32'hC32F906C)) 
    g0_b1__5
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__5_n_0));
  LUT5 #(
    .INIT(32'hCF2F09B9)) 
    g0_b1__50
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__50_n_0));
  LUT5 #(
    .INIT(32'hE8FCF63E)) 
    g0_b1__51
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__51_n_0));
  LUT5 #(
    .INIT(32'h4B8313D0)) 
    g0_b1__52
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__52_n_0));
  LUT5 #(
    .INIT(32'h30A122C3)) 
    g0_b1__53
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__53_n_0));
  LUT5 #(
    .INIT(32'h828BAE9C)) 
    g0_b1__54
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__54_n_0));
  LUT5 #(
    .INIT(32'h36F42B7C)) 
    g0_b1__55
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__55_n_0));
  LUT5 #(
    .INIT(32'h0098D844)) 
    g0_b1__56
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__56_n_0));
  LUT5 #(
    .INIT(32'h09CFE4F8)) 
    g0_b1__57
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__57_n_0));
  LUT5 #(
    .INIT(32'hDFC2687C)) 
    g0_b1__58
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__58_n_0));
  LUT5 #(
    .INIT(32'h6CF1BE3C)) 
    g0_b1__59
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__59_n_0));
  LUT5 #(
    .INIT(32'h8A97E0FB)) 
    g0_b1__6
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__6_n_0));
  LUT5 #(
    .INIT(32'h26049352)) 
    g0_b1__60
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__60_n_0));
  LUT5 #(
    .INIT(32'h1F1C08E3)) 
    g0_b1__61
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__61_n_0));
  LUT5 #(
    .INIT(32'h6B2E9D1D)) 
    g0_b1__62
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__62_n_0));
  LUT6 #(
    .INIT(64'hD9EFE70CCDC082B6)) 
    g0_b1__63
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__63_n_0));
  LUT6 #(
    .INIT(64'h8882E9FA4FDEF22F)) 
    g0_b1__64
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__64_n_0));
  LUT6 #(
    .INIT(64'hC6AC4204537FDBF7)) 
    g0_b1__65
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__65_n_0));
  LUT6 #(
    .INIT(64'h25EF6A5867A41DD7)) 
    g0_b1__66
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__66_n_0));
  LUT6 #(
    .INIT(64'h2CF350B8A741CA17)) 
    g0_b1__67
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__67_n_0));
  LUT6 #(
    .INIT(64'h94EAFF36A89AC357)) 
    g0_b1__68
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__68_n_0));
  LUT6 #(
    .INIT(64'h26341FC1AC18D4CC)) 
    g0_b1__69
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__69_n_0));
  LUT5 #(
    .INIT(32'hA1C6559B)) 
    g0_b1__7
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__7_n_0));
  LUT6 #(
    .INIT(64'h58AC2D1DED35D693)) 
    g0_b1__70
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__70_n_0));
  LUT6 #(
    .INIT(64'hA49F35783F8BD426)) 
    g0_b1__71
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__71_n_0));
  LUT6 #(
    .INIT(64'h6ED53622E8F37725)) 
    g0_b1__72
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__72_n_0));
  LUT6 #(
    .INIT(64'hC7C3D215F2A4FE0B)) 
    g0_b1__73
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__73_n_0));
  LUT6 #(
    .INIT(64'h970D4DFA685E8D6C)) 
    g0_b1__74
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__74_n_0));
  LUT6 #(
    .INIT(64'h73514386880EE1BB)) 
    g0_b1__75
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__75_n_0));
  LUT6 #(
    .INIT(64'h1EE4C953CE1C3534)) 
    g0_b1__76
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__76_n_0));
  LUT6 #(
    .INIT(64'hFAEE52BB24BF9B59)) 
    g0_b1__77
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__77_n_0));
  LUT6 #(
    .INIT(64'h66DEDB3ABB1351B8)) 
    g0_b1__78
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__78_n_0));
  LUT6 #(
    .INIT(64'h88B842135460AA15)) 
    g0_b1__79
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__79_n_0));
  LUT5 #(
    .INIT(32'h1DFCDF7C)) 
    g0_b1__8
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__8_n_0));
  LUT6 #(
    .INIT(64'h3C0B1B2CE1FE9B5E)) 
    g0_b1__80
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__80_n_0));
  LUT6 #(
    .INIT(64'hD769CE0C3BD64728)) 
    g0_b1__81
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__81_n_0));
  LUT6 #(
    .INIT(64'hE343B79DB5A44E78)) 
    g0_b1__82
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__82_n_0));
  LUT6 #(
    .INIT(64'h07D9F30FBF600B7E)) 
    g0_b1__83
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__83_n_0));
  LUT6 #(
    .INIT(64'hF498327CF8CC8ED1)) 
    g0_b1__84
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__84_n_0));
  LUT6 #(
    .INIT(64'h42D2148C38A83CB3)) 
    g0_b1__85
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__85_n_0));
  LUT6 #(
    .INIT(64'hA1C90E543CC35AFF)) 
    g0_b1__86
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__86_n_0));
  LUT6 #(
    .INIT(64'h6AE10145EC5B0CA1)) 
    g0_b1__87
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__87_n_0));
  LUT6 #(
    .INIT(64'h7EB9EFF8CCB1ACB9)) 
    g0_b1__88
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__88_n_0));
  LUT6 #(
    .INIT(64'h4FA23E9931247617)) 
    g0_b1__89
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__89_n_0));
  LUT5 #(
    .INIT(32'h7BA9BF27)) 
    g0_b1__9
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b1__9_n_0));
  LUT6 #(
    .INIT(64'h29862AF1EB27EC32)) 
    g0_b1__90
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__90_n_0));
  LUT6 #(
    .INIT(64'hA3719A81C49F4791)) 
    g0_b1__91
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__91_n_0));
  LUT6 #(
    .INIT(64'hAFA5DA796CE09FFE)) 
    g0_b1__92
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__92_n_0));
  LUT6 #(
    .INIT(64'h8FCB31C9844BBBC6)) 
    g0_b1__93
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__93_n_0));
  LUT6 #(
    .INIT(64'hA4D6D0F5BD8C97B1)) 
    g0_b1__94
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__94_n_0));
  LUT6 #(
    .INIT(64'h21F33B2D7DCB959C)) 
    g0_b1__95
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__95_n_0));
  LUT6 #(
    .INIT(64'h351271A8DE47374E)) 
    g0_b1__96
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__96_n_0));
  LUT6 #(
    .INIT(64'h61219D6CA4F001D4)) 
    g0_b1__97
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__97_n_0));
  LUT6 #(
    .INIT(64'h276744C194A9C583)) 
    g0_b1__98
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__98_n_0));
  LUT6 #(
    .INIT(64'hEB7D1CE517AABE03)) 
    g0_b1__99
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b1__99_n_0));
  LUT5 #(
    .INIT(32'h132CCEC2)) 
    g0_b2
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2_n_0));
  LUT5 #(
    .INIT(32'h91F40A4A)) 
    g0_b2__0
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__0_n_0));
  LUT5 #(
    .INIT(32'hA2594A76)) 
    g0_b2__1
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__1_n_0));
  LUT5 #(
    .INIT(32'h746F16C4)) 
    g0_b2__10
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__10_n_0));
  LUT6 #(
    .INIT(64'h1EFA7048773CB1EC)) 
    g0_b2__100
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__100_n_0));
  LUT6 #(
    .INIT(64'h89074718563AABA2)) 
    g0_b2__101
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__101_n_0));
  LUT6 #(
    .INIT(64'hA118A524AF5DBFD6)) 
    g0_b2__102
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__102_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hC1116AB5)) 
    g0_b2__103
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(\weight_rom_inst/p_0_out [2]));
  LUT6 #(
    .INIT(64'h424C8E1086C2782C)) 
    g0_b2__104
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__104_n_0));
  LUT5 #(
    .INIT(32'h94ABC309)) 
    g0_b2__11
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__11_n_0));
  LUT5 #(
    .INIT(32'h9D909512)) 
    g0_b2__12
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__12_n_0));
  LUT5 #(
    .INIT(32'h2539D724)) 
    g0_b2__13
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__13_n_0));
  LUT5 #(
    .INIT(32'h9B636F94)) 
    g0_b2__14
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__14_n_0));
  LUT5 #(
    .INIT(32'h3D1F8FBE)) 
    g0_b2__15
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__15_n_0));
  LUT5 #(
    .INIT(32'h8ADE3625)) 
    g0_b2__16
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__16_n_0));
  LUT5 #(
    .INIT(32'h0FBF2400)) 
    g0_b2__17
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__17_n_0));
  LUT5 #(
    .INIT(32'h6D6F9BBC)) 
    g0_b2__18
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__18_n_0));
  LUT5 #(
    .INIT(32'h7FBA2CD5)) 
    g0_b2__19
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__19_n_0));
  LUT5 #(
    .INIT(32'h4D4E3D88)) 
    g0_b2__2
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__2_n_0));
  LUT5 #(
    .INIT(32'hF39D7BA6)) 
    g0_b2__20
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__20_n_0));
  LUT5 #(
    .INIT(32'h6F44C948)) 
    g0_b2__21
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__21_n_0));
  LUT5 #(
    .INIT(32'hA4206B65)) 
    g0_b2__22
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__22_n_0));
  LUT5 #(
    .INIT(32'h91BF8014)) 
    g0_b2__23
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__23_n_0));
  LUT5 #(
    .INIT(32'h48B20F07)) 
    g0_b2__24
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__24_n_0));
  LUT5 #(
    .INIT(32'hB5FA2D5E)) 
    g0_b2__25
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__25_n_0));
  LUT5 #(
    .INIT(32'h04B9D8B1)) 
    g0_b2__26
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__26_n_0));
  LUT5 #(
    .INIT(32'h0C67E418)) 
    g0_b2__27
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__27_n_0));
  LUT5 #(
    .INIT(32'h3B1C0569)) 
    g0_b2__28
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__28_n_0));
  LUT5 #(
    .INIT(32'h50933484)) 
    g0_b2__29
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__29_n_0));
  LUT5 #(
    .INIT(32'hA3A92438)) 
    g0_b2__3
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__3_n_0));
  LUT5 #(
    .INIT(32'h330460FB)) 
    g0_b2__30
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__30_n_0));
  LUT5 #(
    .INIT(32'h25D036F2)) 
    g0_b2__31
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__31_n_0));
  LUT5 #(
    .INIT(32'h881E7F00)) 
    g0_b2__32
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__32_n_0));
  LUT5 #(
    .INIT(32'h8EB8F29C)) 
    g0_b2__33
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__33_n_0));
  LUT5 #(
    .INIT(32'hEFB21433)) 
    g0_b2__34
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__34_n_0));
  LUT5 #(
    .INIT(32'h8E9B69CB)) 
    g0_b2__35
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__35_n_0));
  LUT5 #(
    .INIT(32'hCAF92E5B)) 
    g0_b2__36
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__36_n_0));
  LUT5 #(
    .INIT(32'hF6375014)) 
    g0_b2__37
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__37_n_0));
  LUT5 #(
    .INIT(32'h7C09358C)) 
    g0_b2__38
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__38_n_0));
  LUT5 #(
    .INIT(32'hD57686F3)) 
    g0_b2__39
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__39_n_0));
  LUT5 #(
    .INIT(32'h837BB657)) 
    g0_b2__4
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__4_n_0));
  LUT5 #(
    .INIT(32'h7011EBE4)) 
    g0_b2__40
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__40_n_0));
  LUT5 #(
    .INIT(32'h48D8F75E)) 
    g0_b2__41
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__41_n_0));
  LUT5 #(
    .INIT(32'h3949B16E)) 
    g0_b2__42
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__42_n_0));
  LUT5 #(
    .INIT(32'h142E9B00)) 
    g0_b2__43
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__43_n_0));
  LUT5 #(
    .INIT(32'h5BE0BCB3)) 
    g0_b2__44
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__44_n_0));
  LUT5 #(
    .INIT(32'h06AF358E)) 
    g0_b2__45
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__45_n_0));
  LUT5 #(
    .INIT(32'h06057FE3)) 
    g0_b2__46
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__46_n_0));
  LUT5 #(
    .INIT(32'h0C9C32AC)) 
    g0_b2__47
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__47_n_0));
  LUT5 #(
    .INIT(32'hA71D7684)) 
    g0_b2__48
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__48_n_0));
  LUT5 #(
    .INIT(32'h20DF632E)) 
    g0_b2__49
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__49_n_0));
  LUT5 #(
    .INIT(32'h1AFEA4B0)) 
    g0_b2__5
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__5_n_0));
  LUT5 #(
    .INIT(32'h4C637BA4)) 
    g0_b2__50
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__50_n_0));
  LUT5 #(
    .INIT(32'h3A90CEEB)) 
    g0_b2__51
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__51_n_0));
  LUT5 #(
    .INIT(32'hB6FF929D)) 
    g0_b2__52
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__52_n_0));
  LUT5 #(
    .INIT(32'hCB59C1A7)) 
    g0_b2__53
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__53_n_0));
  LUT5 #(
    .INIT(32'hEE8B106A)) 
    g0_b2__54
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__54_n_0));
  LUT5 #(
    .INIT(32'h2FAC3F6F)) 
    g0_b2__55
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__55_n_0));
  LUT5 #(
    .INIT(32'h46B6450E)) 
    g0_b2__56
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__56_n_0));
  LUT5 #(
    .INIT(32'hFF746847)) 
    g0_b2__57
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__57_n_0));
  LUT5 #(
    .INIT(32'h071E9DCC)) 
    g0_b2__58
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__58_n_0));
  LUT5 #(
    .INIT(32'h5488EA37)) 
    g0_b2__59
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__59_n_0));
  LUT5 #(
    .INIT(32'h2E05A00F)) 
    g0_b2__6
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__6_n_0));
  LUT5 #(
    .INIT(32'h8396A3AE)) 
    g0_b2__60
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__60_n_0));
  LUT5 #(
    .INIT(32'h2EBE8B6D)) 
    g0_b2__61
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__61_n_0));
  LUT5 #(
    .INIT(32'hCA12CD56)) 
    g0_b2__62
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__62_n_0));
  LUT6 #(
    .INIT(64'h3BEC6AB1E90D6DD4)) 
    g0_b2__63
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__63_n_0));
  LUT6 #(
    .INIT(64'h865A18636D734CC8)) 
    g0_b2__64
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__64_n_0));
  LUT6 #(
    .INIT(64'h48C93D5877101AE5)) 
    g0_b2__65
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__65_n_0));
  LUT6 #(
    .INIT(64'h8174CEF21BFDF1EE)) 
    g0_b2__66
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__66_n_0));
  LUT6 #(
    .INIT(64'h40CE52B897EDBDE5)) 
    g0_b2__67
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__67_n_0));
  LUT6 #(
    .INIT(64'h49E0B4089D849DB0)) 
    g0_b2__68
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__68_n_0));
  LUT6 #(
    .INIT(64'hC036E9DFF6EEC868)) 
    g0_b2__69
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__69_n_0));
  LUT5 #(
    .INIT(32'h784421B9)) 
    g0_b2__7
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__7_n_0));
  LUT6 #(
    .INIT(64'h70074DA7F977814F)) 
    g0_b2__70
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__70_n_0));
  LUT6 #(
    .INIT(64'h457D9CDEA194695A)) 
    g0_b2__71
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__71_n_0));
  LUT6 #(
    .INIT(64'h06E5C112773BF1AA)) 
    g0_b2__72
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__72_n_0));
  LUT6 #(
    .INIT(64'h954902793D376F05)) 
    g0_b2__73
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__73_n_0));
  LUT6 #(
    .INIT(64'hEA98D9D652BC1679)) 
    g0_b2__74
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__74_n_0));
  LUT6 #(
    .INIT(64'hE61F45403CE8E7FB)) 
    g0_b2__75
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__75_n_0));
  LUT6 #(
    .INIT(64'hBCF4FE170D76B3FB)) 
    g0_b2__76
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__76_n_0));
  LUT6 #(
    .INIT(64'h8C630B76CA57F9BF)) 
    g0_b2__77
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__77_n_0));
  LUT6 #(
    .INIT(64'hDE7A2617221AC6DA)) 
    g0_b2__78
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__78_n_0));
  LUT6 #(
    .INIT(64'h6420FAE09B4BE1A0)) 
    g0_b2__79
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__79_n_0));
  LUT5 #(
    .INIT(32'h6F90FE0D)) 
    g0_b2__8
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__8_n_0));
  LUT6 #(
    .INIT(64'h796A509C69D2403B)) 
    g0_b2__80
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__80_n_0));
  LUT6 #(
    .INIT(64'h2C720988351D6060)) 
    g0_b2__81
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__81_n_0));
  LUT6 #(
    .INIT(64'h8BC30DAD51334ACC)) 
    g0_b2__82
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__82_n_0));
  LUT6 #(
    .INIT(64'h4F9DE77F6F1F1121)) 
    g0_b2__83
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__83_n_0));
  LUT6 #(
    .INIT(64'h3CA89E85C909DA12)) 
    g0_b2__84
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__84_n_0));
  LUT6 #(
    .INIT(64'h44E8652C9DF5C5D8)) 
    g0_b2__85
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__85_n_0));
  LUT6 #(
    .INIT(64'h356DB2FBCC2DA08E)) 
    g0_b2__86
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__86_n_0));
  LUT6 #(
    .INIT(64'hF41A76B9C40E5E96)) 
    g0_b2__87
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__87_n_0));
  LUT6 #(
    .INIT(64'hAB386F9671BDF0F4)) 
    g0_b2__88
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__88_n_0));
  LUT6 #(
    .INIT(64'h055A4F8773FE11A1)) 
    g0_b2__89
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__89_n_0));
  LUT5 #(
    .INIT(32'h2E3A49A2)) 
    g0_b2__9
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b2__9_n_0));
  LUT6 #(
    .INIT(64'h956B33F8D4C53284)) 
    g0_b2__90
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__90_n_0));
  LUT6 #(
    .INIT(64'h6F2E7B7D489FA555)) 
    g0_b2__91
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__91_n_0));
  LUT6 #(
    .INIT(64'h07620CAC22B3DA0F)) 
    g0_b2__92
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__92_n_0));
  LUT6 #(
    .INIT(64'h4BDFEA74E3D2C641)) 
    g0_b2__93
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__93_n_0));
  LUT6 #(
    .INIT(64'hDD010E3ADBA25464)) 
    g0_b2__94
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__94_n_0));
  LUT6 #(
    .INIT(64'hBAE68137FEF2253F)) 
    g0_b2__95
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__95_n_0));
  LUT6 #(
    .INIT(64'h656A08DB346314DF)) 
    g0_b2__96
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__96_n_0));
  LUT6 #(
    .INIT(64'hB12F876B9871E521)) 
    g0_b2__97
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__97_n_0));
  LUT6 #(
    .INIT(64'h65EDE4ABE1D85D7C)) 
    g0_b2__98
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__98_n_0));
  LUT6 #(
    .INIT(64'h7BAF6434F111535E)) 
    g0_b2__99
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b2__99_n_0));
  LUT5 #(
    .INIT(32'hC631CA11)) 
    g0_b3
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3_n_0));
  LUT5 #(
    .INIT(32'h08D5FFE4)) 
    g0_b3__0
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__0_n_0));
  LUT5 #(
    .INIT(32'hA72CDFF8)) 
    g0_b3__1
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__1_n_0));
  LUT5 #(
    .INIT(32'h1583025C)) 
    g0_b3__10
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__10_n_0));
  LUT6 #(
    .INIT(64'h6C6CAACAA52E4509)) 
    g0_b3__100
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__100_n_0));
  LUT6 #(
    .INIT(64'hCFDD7D40EC3C03DF)) 
    g0_b3__101
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__101_n_0));
  LUT6 #(
    .INIT(64'h082F5B4549B5BDC8)) 
    g0_b3__102
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__102_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h00CE621E)) 
    g0_b3__103
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(\weight_rom_inst/p_0_out [3]));
  LUT6 #(
    .INIT(64'h524D14DFFD554B26)) 
    g0_b3__104
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__104_n_0));
  LUT5 #(
    .INIT(32'h2F5E4F46)) 
    g0_b3__11
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__11_n_0));
  LUT5 #(
    .INIT(32'h4971BB30)) 
    g0_b3__12
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__12_n_0));
  LUT5 #(
    .INIT(32'h919E6265)) 
    g0_b3__13
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__13_n_0));
  LUT5 #(
    .INIT(32'hA93F1BA1)) 
    g0_b3__14
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__14_n_0));
  LUT5 #(
    .INIT(32'hC0AF2DD1)) 
    g0_b3__15
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__15_n_0));
  LUT5 #(
    .INIT(32'hEE3750D3)) 
    g0_b3__16
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__16_n_0));
  LUT5 #(
    .INIT(32'h041694B4)) 
    g0_b3__17
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__17_n_0));
  LUT5 #(
    .INIT(32'hB402D37D)) 
    g0_b3__18
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__18_n_0));
  LUT5 #(
    .INIT(32'h8328EED1)) 
    g0_b3__19
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__19_n_0));
  LUT5 #(
    .INIT(32'h8B2C95FF)) 
    g0_b3__2
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__2_n_0));
  LUT5 #(
    .INIT(32'h713825EE)) 
    g0_b3__20
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__20_n_0));
  LUT5 #(
    .INIT(32'hC46592AB)) 
    g0_b3__21
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__21_n_0));
  LUT5 #(
    .INIT(32'h6A63ADE7)) 
    g0_b3__22
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__22_n_0));
  LUT5 #(
    .INIT(32'h72CF78A5)) 
    g0_b3__23
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__23_n_0));
  LUT5 #(
    .INIT(32'h69AC2665)) 
    g0_b3__24
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__24_n_0));
  LUT5 #(
    .INIT(32'h34C767AD)) 
    g0_b3__25
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__25_n_0));
  LUT5 #(
    .INIT(32'h7EA2B69A)) 
    g0_b3__26
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__26_n_0));
  LUT5 #(
    .INIT(32'hB348383C)) 
    g0_b3__27
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__27_n_0));
  LUT5 #(
    .INIT(32'hC262732D)) 
    g0_b3__28
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__28_n_0));
  LUT5 #(
    .INIT(32'hB5B4536B)) 
    g0_b3__29
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__29_n_0));
  LUT5 #(
    .INIT(32'hCE810544)) 
    g0_b3__3
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__3_n_0));
  LUT5 #(
    .INIT(32'h1E9FCFD6)) 
    g0_b3__30
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__30_n_0));
  LUT5 #(
    .INIT(32'h64BDC802)) 
    g0_b3__31
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__31_n_0));
  LUT5 #(
    .INIT(32'h5E137342)) 
    g0_b3__32
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__32_n_0));
  LUT5 #(
    .INIT(32'h2AB3DF3E)) 
    g0_b3__33
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__33_n_0));
  LUT5 #(
    .INIT(32'hDEC88519)) 
    g0_b3__34
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__34_n_0));
  LUT5 #(
    .INIT(32'h96B5C04B)) 
    g0_b3__35
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__35_n_0));
  LUT5 #(
    .INIT(32'hB9BCF7DA)) 
    g0_b3__36
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__36_n_0));
  LUT5 #(
    .INIT(32'hCCF3B612)) 
    g0_b3__37
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__37_n_0));
  LUT5 #(
    .INIT(32'h3FF78212)) 
    g0_b3__38
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__38_n_0));
  LUT5 #(
    .INIT(32'h9EC9158E)) 
    g0_b3__39
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__39_n_0));
  LUT5 #(
    .INIT(32'h280BE899)) 
    g0_b3__4
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__4_n_0));
  LUT5 #(
    .INIT(32'h5EED8EB5)) 
    g0_b3__40
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__40_n_0));
  LUT5 #(
    .INIT(32'hB11DCC94)) 
    g0_b3__41
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__41_n_0));
  LUT5 #(
    .INIT(32'h104DD330)) 
    g0_b3__42
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__42_n_0));
  LUT5 #(
    .INIT(32'hF4DAA24A)) 
    g0_b3__43
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__43_n_0));
  LUT5 #(
    .INIT(32'hE2F327E2)) 
    g0_b3__44
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__44_n_0));
  LUT5 #(
    .INIT(32'hC08BEB76)) 
    g0_b3__45
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__45_n_0));
  LUT5 #(
    .INIT(32'h29F7A022)) 
    g0_b3__46
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__46_n_0));
  LUT5 #(
    .INIT(32'h3D03F70F)) 
    g0_b3__47
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__47_n_0));
  LUT5 #(
    .INIT(32'h8978B0B9)) 
    g0_b3__48
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__48_n_0));
  LUT5 #(
    .INIT(32'hA08CD0F4)) 
    g0_b3__49
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__49_n_0));
  LUT5 #(
    .INIT(32'h39532BF3)) 
    g0_b3__5
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__5_n_0));
  LUT5 #(
    .INIT(32'hDC39F220)) 
    g0_b3__50
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__50_n_0));
  LUT5 #(
    .INIT(32'h0BF67F45)) 
    g0_b3__51
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__51_n_0));
  LUT5 #(
    .INIT(32'hD47DFE20)) 
    g0_b3__52
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__52_n_0));
  LUT5 #(
    .INIT(32'h14571450)) 
    g0_b3__53
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__53_n_0));
  LUT5 #(
    .INIT(32'h8452F40F)) 
    g0_b3__54
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__54_n_0));
  LUT5 #(
    .INIT(32'h2144614E)) 
    g0_b3__55
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__55_n_0));
  LUT5 #(
    .INIT(32'h6E31615B)) 
    g0_b3__56
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__56_n_0));
  LUT5 #(
    .INIT(32'hCC34995B)) 
    g0_b3__57
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__57_n_0));
  LUT5 #(
    .INIT(32'h723C731A)) 
    g0_b3__58
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__58_n_0));
  LUT5 #(
    .INIT(32'hDF5714FA)) 
    g0_b3__59
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__59_n_0));
  LUT5 #(
    .INIT(32'hD9DDBF88)) 
    g0_b3__6
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__6_n_0));
  LUT5 #(
    .INIT(32'hA25DB9FD)) 
    g0_b3__60
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__60_n_0));
  LUT5 #(
    .INIT(32'h238AA910)) 
    g0_b3__61
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__61_n_0));
  LUT5 #(
    .INIT(32'h695E2631)) 
    g0_b3__62
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__62_n_0));
  LUT6 #(
    .INIT(64'hFF6D8E97F9EBBD06)) 
    g0_b3__63
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__63_n_0));
  LUT6 #(
    .INIT(64'h901FA01BEDA88389)) 
    g0_b3__64
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__64_n_0));
  LUT6 #(
    .INIT(64'h6E78721AE2AACBD8)) 
    g0_b3__65
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__65_n_0));
  LUT6 #(
    .INIT(64'hB65FED455E9D8D1E)) 
    g0_b3__66
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__66_n_0));
  LUT6 #(
    .INIT(64'h0A9B485CA6D659F0)) 
    g0_b3__67
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__67_n_0));
  LUT6 #(
    .INIT(64'h3F12C4FABE37C07B)) 
    g0_b3__68
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__68_n_0));
  LUT6 #(
    .INIT(64'hF543A0D68DEE1449)) 
    g0_b3__69
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__69_n_0));
  LUT5 #(
    .INIT(32'h6699FBDE)) 
    g0_b3__7
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__7_n_0));
  LUT6 #(
    .INIT(64'hD67D03784C896E45)) 
    g0_b3__70
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__70_n_0));
  LUT6 #(
    .INIT(64'hC3BDCF057F50E228)) 
    g0_b3__71
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__71_n_0));
  LUT6 #(
    .INIT(64'hF8013E02AAEDA44D)) 
    g0_b3__72
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__72_n_0));
  LUT6 #(
    .INIT(64'h9ECDE1672841F19B)) 
    g0_b3__73
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__73_n_0));
  LUT6 #(
    .INIT(64'h06C737D17E76142A)) 
    g0_b3__74
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__74_n_0));
  LUT6 #(
    .INIT(64'h0B9967C0269558B7)) 
    g0_b3__75
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__75_n_0));
  LUT6 #(
    .INIT(64'h0448D6E224CD5913)) 
    g0_b3__76
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__76_n_0));
  LUT6 #(
    .INIT(64'h0C03BD5E438D46BB)) 
    g0_b3__77
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__77_n_0));
  LUT6 #(
    .INIT(64'h4B6D8A12B1FDC97B)) 
    g0_b3__78
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__78_n_0));
  LUT6 #(
    .INIT(64'hE2BCC58234E582B3)) 
    g0_b3__79
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__79_n_0));
  LUT5 #(
    .INIT(32'h4D0DCAB4)) 
    g0_b3__8
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__8_n_0));
  LUT6 #(
    .INIT(64'hEB86FC14CC5DEBCE)) 
    g0_b3__80
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__80_n_0));
  LUT6 #(
    .INIT(64'hD7E3E3DB770D6D74)) 
    g0_b3__81
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__81_n_0));
  LUT6 #(
    .INIT(64'hDD95502EECD468F3)) 
    g0_b3__82
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__82_n_0));
  LUT6 #(
    .INIT(64'h59F7942F4173AE37)) 
    g0_b3__83
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__83_n_0));
  LUT6 #(
    .INIT(64'hAEACBE45555C16F6)) 
    g0_b3__84
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__84_n_0));
  LUT6 #(
    .INIT(64'h71B4EE23BE1AA577)) 
    g0_b3__85
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__85_n_0));
  LUT6 #(
    .INIT(64'h919EC0255CA49511)) 
    g0_b3__86
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__86_n_0));
  LUT6 #(
    .INIT(64'h5B23E7F41F4DF137)) 
    g0_b3__87
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__87_n_0));
  LUT6 #(
    .INIT(64'h55D98296D8D60663)) 
    g0_b3__88
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__88_n_0));
  LUT6 #(
    .INIT(64'h3ACF844E4007CD16)) 
    g0_b3__89
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__89_n_0));
  LUT5 #(
    .INIT(32'h7327F60F)) 
    g0_b3__9
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep_n_0 ),
        .I2(output_addr[2]),
        .I3(\neuron_counter_reg[3]_rep_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b3__9_n_0));
  LUT6 #(
    .INIT(64'hE559F445077F1E5D)) 
    g0_b3__90
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__90_n_0));
  LUT6 #(
    .INIT(64'h1A4570114B27617B)) 
    g0_b3__91
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__91_n_0));
  LUT6 #(
    .INIT(64'h716ED131A1B01CA4)) 
    g0_b3__92
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__92_n_0));
  LUT6 #(
    .INIT(64'h7E9C7EF52FC78C66)) 
    g0_b3__93
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__93_n_0));
  LUT6 #(
    .INIT(64'hDF5193914BD83667)) 
    g0_b3__94
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__94_n_0));
  LUT6 #(
    .INIT(64'hAB90B3037714B404)) 
    g0_b3__95
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__95_n_0));
  LUT6 #(
    .INIT(64'hFC960169A189DFD0)) 
    g0_b3__96
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__96_n_0));
  LUT6 #(
    .INIT(64'h099F5916F08862D8)) 
    g0_b3__97
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__97_n_0));
  LUT6 #(
    .INIT(64'h262E74F46346E722)) 
    g0_b3__98
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__98_n_0));
  LUT6 #(
    .INIT(64'h48B5B6383A16D4E6)) 
    g0_b3__99
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b3__99_n_0));
  LUT5 #(
    .INIT(32'h42D8F841)) 
    g0_b4
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4_n_0));
  LUT5 #(
    .INIT(32'hFB3989DF)) 
    g0_b4__0
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__0_n_0));
  LUT5 #(
    .INIT(32'hE2CFE7DE)) 
    g0_b4__1
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__1_n_0));
  LUT5 #(
    .INIT(32'h2E38544D)) 
    g0_b4__10
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__10_n_0));
  LUT6 #(
    .INIT(64'h2CD80091A6381137)) 
    g0_b4__100
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__100_n_0));
  LUT6 #(
    .INIT(64'h9115F5891160A73A)) 
    g0_b4__101
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__101_n_0));
  LUT6 #(
    .INIT(64'hE7956E35AFABDBD7)) 
    g0_b4__102
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__102_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h5357BEE4)) 
    g0_b4__103
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(\weight_rom_inst/p_0_out [4]));
  LUT6 #(
    .INIT(64'hA70E10CC92E40BB7)) 
    g0_b4__104
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__104_n_0));
  LUT5 #(
    .INIT(32'h8D8738FB)) 
    g0_b4__11
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__11_n_0));
  LUT5 #(
    .INIT(32'hA4459BE4)) 
    g0_b4__12
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__12_n_0));
  LUT5 #(
    .INIT(32'h4F5B40F6)) 
    g0_b4__13
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__13_n_0));
  LUT5 #(
    .INIT(32'h05CB40D3)) 
    g0_b4__14
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__14_n_0));
  LUT5 #(
    .INIT(32'h09A2C332)) 
    g0_b4__15
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__15_n_0));
  LUT5 #(
    .INIT(32'h596C843D)) 
    g0_b4__16
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__16_n_0));
  LUT5 #(
    .INIT(32'h9ACA4C42)) 
    g0_b4__17
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__17_n_0));
  LUT5 #(
    .INIT(32'h558AD01F)) 
    g0_b4__18
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__18_n_0));
  LUT5 #(
    .INIT(32'h4429D431)) 
    g0_b4__19
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__19_n_0));
  LUT5 #(
    .INIT(32'h73B97B53)) 
    g0_b4__2
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__2_n_0));
  LUT5 #(
    .INIT(32'h7E08EAE4)) 
    g0_b4__20
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__20_n_0));
  LUT5 #(
    .INIT(32'hEB36A947)) 
    g0_b4__21
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__21_n_0));
  LUT5 #(
    .INIT(32'h4174D71B)) 
    g0_b4__22
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__22_n_0));
  LUT5 #(
    .INIT(32'h672BABEF)) 
    g0_b4__23
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__23_n_0));
  LUT5 #(
    .INIT(32'hEE8BD984)) 
    g0_b4__24
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__24_n_0));
  LUT5 #(
    .INIT(32'hF4D6CEE7)) 
    g0_b4__25
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__25_n_0));
  LUT5 #(
    .INIT(32'h05F43A30)) 
    g0_b4__26
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__26_n_0));
  LUT5 #(
    .INIT(32'hB915B6EF)) 
    g0_b4__27
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__27_n_0));
  LUT5 #(
    .INIT(32'h9E82618E)) 
    g0_b4__28
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__28_n_0));
  LUT5 #(
    .INIT(32'h08C27BF8)) 
    g0_b4__29
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__29_n_0));
  LUT5 #(
    .INIT(32'hB6C5884E)) 
    g0_b4__3
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__3_n_0));
  LUT5 #(
    .INIT(32'h75F6FD1C)) 
    g0_b4__30
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__30_n_0));
  LUT5 #(
    .INIT(32'h6AD9FC68)) 
    g0_b4__31
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__31_n_0));
  LUT5 #(
    .INIT(32'hE23DB392)) 
    g0_b4__32
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__32_n_0));
  LUT5 #(
    .INIT(32'h99F20746)) 
    g0_b4__33
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__33_n_0));
  LUT5 #(
    .INIT(32'h1C098894)) 
    g0_b4__34
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__34_n_0));
  LUT5 #(
    .INIT(32'h938E1BF1)) 
    g0_b4__35
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__35_n_0));
  LUT5 #(
    .INIT(32'h555E092A)) 
    g0_b4__36
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__36_n_0));
  LUT5 #(
    .INIT(32'h4FDC6CD3)) 
    g0_b4__37
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__37_n_0));
  LUT5 #(
    .INIT(32'h5624CA6D)) 
    g0_b4__38
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__38_n_0));
  LUT5 #(
    .INIT(32'h2EF4B371)) 
    g0_b4__39
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__39_n_0));
  LUT5 #(
    .INIT(32'hDF7E3304)) 
    g0_b4__4
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__4_n_0));
  LUT5 #(
    .INIT(32'h568CFDF7)) 
    g0_b4__40
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__40_n_0));
  LUT5 #(
    .INIT(32'hF8048D1E)) 
    g0_b4__41
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__41_n_0));
  LUT5 #(
    .INIT(32'h20E919E1)) 
    g0_b4__42
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__42_n_0));
  LUT5 #(
    .INIT(32'hE63E67A0)) 
    g0_b4__43
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__43_n_0));
  LUT5 #(
    .INIT(32'h03E1A09C)) 
    g0_b4__44
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__44_n_0));
  LUT5 #(
    .INIT(32'h2B390D46)) 
    g0_b4__45
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__45_n_0));
  LUT5 #(
    .INIT(32'hF3C0D09D)) 
    g0_b4__46
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__46_n_0));
  LUT5 #(
    .INIT(32'h067905BE)) 
    g0_b4__47
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__47_n_0));
  LUT5 #(
    .INIT(32'hFD5C943C)) 
    g0_b4__48
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__48_n_0));
  LUT5 #(
    .INIT(32'hBCA4DEBB)) 
    g0_b4__49
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__49_n_0));
  LUT5 #(
    .INIT(32'h19A8D556)) 
    g0_b4__5
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__5_n_0));
  LUT5 #(
    .INIT(32'h1D5ABA9C)) 
    g0_b4__50
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__50_n_0));
  LUT5 #(
    .INIT(32'h3216BB66)) 
    g0_b4__51
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__51_n_0));
  LUT5 #(
    .INIT(32'hE7927EAF)) 
    g0_b4__52
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__52_n_0));
  LUT5 #(
    .INIT(32'h7C623AB8)) 
    g0_b4__53
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__53_n_0));
  LUT5 #(
    .INIT(32'hDE83A30A)) 
    g0_b4__54
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__54_n_0));
  LUT5 #(
    .INIT(32'hB3B6F83B)) 
    g0_b4__55
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__55_n_0));
  LUT5 #(
    .INIT(32'hDE115A60)) 
    g0_b4__56
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__56_n_0));
  LUT5 #(
    .INIT(32'h896E2AF2)) 
    g0_b4__57
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__57_n_0));
  LUT5 #(
    .INIT(32'h98DF9F86)) 
    g0_b4__58
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__58_n_0));
  LUT5 #(
    .INIT(32'h5D4D1536)) 
    g0_b4__59
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__59_n_0));
  LUT5 #(
    .INIT(32'hFE95F019)) 
    g0_b4__6
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__6_n_0));
  LUT5 #(
    .INIT(32'h9D02E0EC)) 
    g0_b4__60
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__60_n_0));
  LUT5 #(
    .INIT(32'h208CA726)) 
    g0_b4__61
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__61_n_0));
  LUT5 #(
    .INIT(32'h0B3EBCB4)) 
    g0_b4__62
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__1_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__62_n_0));
  LUT6 #(
    .INIT(64'hEB653B459C3DBAD2)) 
    g0_b4__63
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__63_n_0));
  LUT6 #(
    .INIT(64'h7505805DA1ECA60B)) 
    g0_b4__64
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__64_n_0));
  LUT6 #(
    .INIT(64'h1DEE7832683A757C)) 
    g0_b4__65
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__65_n_0));
  LUT6 #(
    .INIT(64'h695664CC0B0B6B57)) 
    g0_b4__66
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__66_n_0));
  LUT6 #(
    .INIT(64'h022B4F9DCCD53080)) 
    g0_b4__67
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__67_n_0));
  LUT6 #(
    .INIT(64'h8DD8C06D22EDABA3)) 
    g0_b4__68
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__68_n_0));
  LUT6 #(
    .INIT(64'h873B215C5BA136A0)) 
    g0_b4__69
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__69_n_0));
  LUT5 #(
    .INIT(32'hCA2328E7)) 
    g0_b4__7
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__7_n_0));
  LUT6 #(
    .INIT(64'hA8A5CF3AC00D2647)) 
    g0_b4__70
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__70_n_0));
  LUT6 #(
    .INIT(64'hA9AAFF1578C84652)) 
    g0_b4__71
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__71_n_0));
  LUT6 #(
    .INIT(64'hE1602972FAF9E0E1)) 
    g0_b4__72
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__72_n_0));
  LUT6 #(
    .INIT(64'h31DC53AD1655CDD5)) 
    g0_b4__73
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__73_n_0));
  LUT6 #(
    .INIT(64'h179E71726BF31184)) 
    g0_b4__74
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__74_n_0));
  LUT6 #(
    .INIT(64'h095BFB3526984CB0)) 
    g0_b4__75
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__75_n_0));
  LUT6 #(
    .INIT(64'hFC5CDFC2197F28E9)) 
    g0_b4__76
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__76_n_0));
  LUT6 #(
    .INIT(64'hD4FBFB14CE29E14A)) 
    g0_b4__77
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__77_n_0));
  LUT6 #(
    .INIT(64'h8ACC0395A1D3E623)) 
    g0_b4__78
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__78_n_0));
  LUT6 #(
    .INIT(64'h03FD152B2E15B6DA)) 
    g0_b4__79
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__79_n_0));
  LUT5 #(
    .INIT(32'h55DE9431)) 
    g0_b4__8
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__8_n_0));
  LUT6 #(
    .INIT(64'h7293F2D84EDD08CF)) 
    g0_b4__80
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__80_n_0));
  LUT6 #(
    .INIT(64'hD5B1BF888C4FA160)) 
    g0_b4__81
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__81_n_0));
  LUT6 #(
    .INIT(64'hDAA4F38AFAA66EAB)) 
    g0_b4__82
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__82_n_0));
  LUT6 #(
    .INIT(64'hFDE19936EE71E60C)) 
    g0_b4__83
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__83_n_0));
  LUT6 #(
    .INIT(64'hADAA3628F5D40E76)) 
    g0_b4__84
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__84_n_0));
  LUT6 #(
    .INIT(64'hD588E223B410219F)) 
    g0_b4__85
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__85_n_0));
  LUT6 #(
    .INIT(64'hFF82BFE4469AF22C)) 
    g0_b4__86
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__86_n_0));
  LUT6 #(
    .INIT(64'hC901F0B8972F9284)) 
    g0_b4__87
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__87_n_0));
  LUT6 #(
    .INIT(64'hEFDD35C25DE30E6E)) 
    g0_b4__88
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__88_n_0));
  LUT6 #(
    .INIT(64'h6ABDD577CA777820)) 
    g0_b4__89
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__89_n_0));
  LUT5 #(
    .INIT(32'h130C00BB)) 
    g0_b4__9
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__4_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__0_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b4__9_n_0));
  LUT6 #(
    .INIT(64'h76FBB0F6F64B0F84)) 
    g0_b4__90
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__90_n_0));
  LUT6 #(
    .INIT(64'hEAF2D923820F81FB)) 
    g0_b4__91
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__91_n_0));
  LUT6 #(
    .INIT(64'h73BA90AD29324DAE)) 
    g0_b4__92
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__92_n_0));
  LUT6 #(
    .INIT(64'hCBE1E3C0034E4373)) 
    g0_b4__93
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__93_n_0));
  LUT6 #(
    .INIT(64'h0F07D1117B9014AF)) 
    g0_b4__94
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__94_n_0));
  LUT6 #(
    .INIT(64'hEEB1F142769696A3)) 
    g0_b4__95
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__95_n_0));
  LUT6 #(
    .INIT(64'hD008194D489B8FC2)) 
    g0_b4__96
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__96_n_0));
  LUT6 #(
    .INIT(64'hEBD42952389A17C0)) 
    g0_b4__97
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__97_n_0));
  LUT6 #(
    .INIT(64'h29CE57BF16A093A9)) 
    g0_b4__98
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__98_n_0));
  LUT6 #(
    .INIT(64'hE35A67AAB26DE766)) 
    g0_b4__99
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b4__99_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h527DF176)) 
    g0_b5
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h38CC9CEA)) 
    g0_b5__0
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h60A8E4DF)) 
    g0_b5__1
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hD9E6F16C)) 
    g0_b5__10
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__10_n_0));
  LUT6 #(
    .INIT(64'hCB9344605227E6C9)) 
    g0_b5__100
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__100_n_0));
  LUT6 #(
    .INIT(64'h2FDF807E374CFEE4)) 
    g0_b5__101
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__101_n_0));
  LUT6 #(
    .INIT(64'hFE7A1F7800EEC70E)) 
    g0_b5__102
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__102_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hD450B3ED)) 
    g0_b5__103
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(\weight_rom_inst/p_0_out [5]));
  LUT6 #(
    .INIT(64'h94556DEC239B9551)) 
    g0_b5__104
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__104_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h29D1FC34)) 
    g0_b5__11
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h1B5D2FAC)) 
    g0_b5__12
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h37798422)) 
    g0_b5__13
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h4F821F04)) 
    g0_b5__14
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h1F67418F)) 
    g0_b5__15
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h06CC1227)) 
    g0_b5__16
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFF0EA708)) 
    g0_b5__17
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h6E488B24)) 
    g0_b5__18
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h2BF0209E)) 
    g0_b5__19
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h1F3E5DDB)) 
    g0_b5__2
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h29FFECDD)) 
    g0_b5__20
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h918FB2C5)) 
    g0_b5__21
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h04DA3382)) 
    g0_b5__22
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hCD2F81A8)) 
    g0_b5__23
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hBA9CE7B0)) 
    g0_b5__24
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h97713C8E)) 
    g0_b5__25
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h112C815F)) 
    g0_b5__26
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFEC8201B)) 
    g0_b5__27
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hDF4BCFDA)) 
    g0_b5__28
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h736ACB68)) 
    g0_b5__29
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hA9D5B70D)) 
    g0_b5__3
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hC0FB8674)) 
    g0_b5__30
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hC752436F)) 
    g0_b5__31
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h64CDEE74)) 
    g0_b5__32
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h1BA1F95B)) 
    g0_b5__33
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hD6F43BF2)) 
    g0_b5__34
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__34_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h5AE7E735)) 
    g0_b5__35
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__35_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h07775EF8)) 
    g0_b5__36
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h5E070C01)) 
    g0_b5__37
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__37_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h0F8D9EC3)) 
    g0_b5__38
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__38_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h78051A2F)) 
    g0_b5__39
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h3E7614C0)) 
    g0_b5__4
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hD8883A04)) 
    g0_b5__40
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__40_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h9865BF36)) 
    g0_b5__41
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hEDA36144)) 
    g0_b5__42
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__42_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hAA38A3EB)) 
    g0_b5__43
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h22EA0A2A)) 
    g0_b5__44
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h47555302)) 
    g0_b5__45
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__45_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h0CF3BA46)) 
    g0_b5__46
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__46_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h894A55E9)) 
    g0_b5__47
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h53A60929)) 
    g0_b5__48
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h92533A0C)) 
    g0_b5__49
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB951C3F5)) 
    g0_b5__5
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hCBFC3490)) 
    g0_b5__50
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h3FCFF270)) 
    g0_b5__51
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__51_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h5D5C4611)) 
    g0_b5__52
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__52_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h2E6CBC6F)) 
    g0_b5__53
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__53_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFDAD2986)) 
    g0_b5__54
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__54_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h38039E86)) 
    g0_b5__55
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__55_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hAB01919E)) 
    g0_b5__56
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__56_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h5C896A9F)) 
    g0_b5__57
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__57_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h5361844B)) 
    g0_b5__58
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__58_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hE4DD0041)) 
    g0_b5__59
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h9A7E2852)) 
    g0_b5__6
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h8D744B96)) 
    g0_b5__60
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__60_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hF83A02BA)) 
    g0_b5__61
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__61_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hE8D248C0)) 
    g0_b5__62
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__62_n_0));
  LUT6 #(
    .INIT(64'h4698023C26181FAF)) 
    g0_b5__63
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__63_n_0));
  LUT6 #(
    .INIT(64'h8ECE1F738E3001FD)) 
    g0_b5__64
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__64_n_0));
  LUT6 #(
    .INIT(64'hDB530FCD1E559502)) 
    g0_b5__65
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__65_n_0));
  LUT6 #(
    .INIT(64'hA2C19336B574A7B1)) 
    g0_b5__66
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__66_n_0));
  LUT6 #(
    .INIT(64'hC752B66C972A262C)) 
    g0_b5__67
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__67_n_0));
  LUT6 #(
    .INIT(64'h7EAFB337F0D29A5C)) 
    g0_b5__68
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__68_n_0));
  LUT6 #(
    .INIT(64'h6635DF2873FBBF57)) 
    g0_b5__69
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__69_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h4132367D)) 
    g0_b5__7
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__7_n_0));
  LUT6 #(
    .INIT(64'h0EEC648BBA0CC8A3)) 
    g0_b5__70
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__70_n_0));
  LUT6 #(
    .INIT(64'h7B6C11F08F6B0DEB)) 
    g0_b5__71
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__71_n_0));
  LUT6 #(
    .INIT(64'hF70EC7212FA4C92E)) 
    g0_b5__72
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__72_n_0));
  LUT6 #(
    .INIT(64'h6E75FEDADE679A45)) 
    g0_b5__73
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__73_n_0));
  LUT6 #(
    .INIT(64'hCB6C8B39D170CE0A)) 
    g0_b5__74
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__74_n_0));
  LUT6 #(
    .INIT(64'hFBC581B85B65F347)) 
    g0_b5__75
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__75_n_0));
  LUT6 #(
    .INIT(64'hC93D0D19FFBA76DD)) 
    g0_b5__76
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__76_n_0));
  LUT6 #(
    .INIT(64'h4B7C440A216E3103)) 
    g0_b5__77
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__77_n_0));
  LUT6 #(
    .INIT(64'h936B307A0A4E67B4)) 
    g0_b5__78
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__78_n_0));
  LUT6 #(
    .INIT(64'hE847A43CDADCED9D)) 
    g0_b5__79
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__79_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h68A77E5F)) 
    g0_b5__8
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__8_n_0));
  LUT6 #(
    .INIT(64'hCAD8B5E0978678A4)) 
    g0_b5__80
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__80_n_0));
  LUT6 #(
    .INIT(64'h2C9F4077F729230A)) 
    g0_b5__81
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__81_n_0));
  LUT6 #(
    .INIT(64'h2877CE356D63BDC4)) 
    g0_b5__82
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__82_n_0));
  LUT6 #(
    .INIT(64'h492C64D8A680A9E3)) 
    g0_b5__83
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__83_n_0));
  LUT6 #(
    .INIT(64'hBF6343D31F3B7B82)) 
    g0_b5__84
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__84_n_0));
  LUT6 #(
    .INIT(64'h0A723DD878B5AE85)) 
    g0_b5__85
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__85_n_0));
  LUT6 #(
    .INIT(64'hAA29EB032074FA0B)) 
    g0_b5__86
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__86_n_0));
  LUT6 #(
    .INIT(64'h6A1789964920AF69)) 
    g0_b5__87
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__87_n_0));
  LUT6 #(
    .INIT(64'h3B662FFBAAEB76A1)) 
    g0_b5__88
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__88_n_0));
  LUT6 #(
    .INIT(64'h87A3ED59A9BF30F9)) 
    g0_b5__89
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__89_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h4CA6101B)) 
    g0_b5__9
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b5__9_n_0));
  LUT6 #(
    .INIT(64'h112A393810847A73)) 
    g0_b5__90
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__90_n_0));
  LUT6 #(
    .INIT(64'h1567023515D18B18)) 
    g0_b5__91
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__91_n_0));
  LUT6 #(
    .INIT(64'hD135F3BADECE606A)) 
    g0_b5__92
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__92_n_0));
  LUT6 #(
    .INIT(64'h704E0C8BB8587131)) 
    g0_b5__93
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__93_n_0));
  LUT6 #(
    .INIT(64'h2AE28FB89DAFE9B1)) 
    g0_b5__94
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__94_n_0));
  LUT6 #(
    .INIT(64'h441E4E269F236B15)) 
    g0_b5__95
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__95_n_0));
  LUT6 #(
    .INIT(64'h610866F29F7C493D)) 
    g0_b5__96
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__96_n_0));
  LUT6 #(
    .INIT(64'hB43674FD163FC99E)) 
    g0_b5__97
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__97_n_0));
  LUT6 #(
    .INIT(64'hC4F9A89319E1D97D)) 
    g0_b5__98
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__98_n_0));
  LUT6 #(
    .INIT(64'hD9236EF9DAEAAE25)) 
    g0_b5__99
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b5__99_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h527DF056)) 
    g0_b6
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h60A8E4DE)) 
    g0_b6__0
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hA9D5B70C)) 
    g0_b6__1
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h4752426F)) 
    g0_b6__10
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h1BA1F95A)) 
    g0_b6__11
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hD6F439F2)) 
    g0_b6__12
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h1AE7E735)) 
    g0_b6__13
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h5E070C11)) 
    g0_b6__14
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h58883A04)) 
    g0_b6__15
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hADA36144)) 
    g0_b6__16
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h90533A0C)) 
    g0_b6__17
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h3BCFF270)) 
    g0_b6__18
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFC8D2986)) 
    g0_b6__19
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h68A77E5D)) 
    g0_b6__2
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h38039E06)) 
    g0_b6__20
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hAB01911E)) 
    g0_b6__21
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h783A02BA)) 
    g0_b6__22
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__22_n_0));
  LUT6 #(
    .INIT(64'h62280235AC381F8F)) 
    g0_b6__23
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__23_n_0));
  LUT6 #(
    .INIT(64'h9E0F177B8F3803DD)) 
    g0_b6__24
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__24_n_0));
  LUT6 #(
    .INIT(64'hDB6B2ADC0A1FD548)) 
    g0_b6__25
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__25_n_0));
  LUT6 #(
    .INIT(64'hA0D5A0141F55A795)) 
    g0_b6__26
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__26_n_0));
  LUT6 #(
    .INIT(64'h435A165C872822AC)) 
    g0_b6__27
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__27_n_0));
  LUT6 #(
    .INIT(64'h7EBFA077B0D39A58)) 
    g0_b6__28
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__28_n_0));
  LUT6 #(
    .INIT(64'h6631E15C73EBB653)) 
    g0_b6__29
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h19552FAC)) 
    g0_b6__3
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__3_n_0));
  LUT6 #(
    .INIT(64'h8CAD453BF80D6C67)) 
    g0_b6__30
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__30_n_0));
  LUT6 #(
    .INIT(64'hFBAC17501F684EEB)) 
    g0_b6__31
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__31_n_0));
  LUT6 #(
    .INIT(64'hE70A0722AFEDE92C)) 
    g0_b6__32
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__32_n_0));
  LUT6 #(
    .INIT(64'h7EFDFEDE1E65DBD5)) 
    g0_b6__33
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__33_n_0));
  LUT6 #(
    .INIT(64'h8F4C8379D972140A)) 
    g0_b6__34
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__34_n_0));
  LUT6 #(
    .INIT(64'h4BD9C3B01765DAC3)) 
    g0_b6__35
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__35_n_0));
  LUT6 #(
    .INIT(64'hDC7DDF8BBDFA70D9)) 
    g0_b6__36
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__36_n_0));
  LUT6 #(
    .INIT(64'h4A7A4B1A216E210B)) 
    g0_b6__37
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__37_n_0));
  LUT6 #(
    .INIT(64'h9B6B105A0A4BE7B4)) 
    g0_b6__38
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__2_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__38_n_0));
  LUT6 #(
    .INIT(64'hEAC585283EDCA49D)) 
    g0_b6__39
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h0F821F04)) 
    g0_b6__4
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__4_n_0));
  LUT6 #(
    .INIT(64'h6A9AB5C0D7CC688E)) 
    g0_b6__40
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__40_n_0));
  LUT6 #(
    .INIT(64'h2DB740C6F72D2340)) 
    g0_b6__41
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__41_n_0));
  LUT6 #(
    .INIT(64'hC8E7CA2F6DE6BCE3)) 
    g0_b6__42
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__42_n_0));
  LUT6 #(
    .INIT(64'h596CA49EA6C1AB67)) 
    g0_b6__43
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__43_n_0));
  LUT6 #(
    .INIT(64'hADE306C3151F3A86)) 
    g0_b6__44
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__44_n_0));
  LUT6 #(
    .INIT(64'h0332F5007C14AD97)) 
    g0_b6__45
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__45_n_0));
  LUT6 #(
    .INIT(64'hAA8AEB032034FA09)) 
    g0_b6__46
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__46_n_0));
  LUT6 #(
    .INIT(64'h6A0781944D24B76D)) 
    g0_b6__47
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__47_n_0));
  LUT6 #(
    .INIT(64'h7FF42FF3FAEB2663)) 
    g0_b6__48
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__48_n_0));
  LUT6 #(
    .INIT(64'hA6AFED59E83778B0)) 
    g0_b6__49
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFF0EA608)) 
    g0_b6__5
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__5_n_0));
  LUT6 #(
    .INIT(64'h716B3034160F7A30)) 
    g0_b6__50
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__50_n_0));
  LUT6 #(
    .INIT(64'h1967523101558939)) 
    g0_b6__51
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__51_n_0));
  LUT6 #(
    .INIT(64'hF135D3B89ABE4CAA)) 
    g0_b6__52
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__52_n_0));
  LUT6 #(
    .INIT(64'h734E2CC1A8586131)) 
    g0_b6__53
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__53_n_0));
  LUT6 #(
    .INIT(64'h2A638399DD9D35B7)) 
    g0_b6__54
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I2(\neuron_counter_reg[2]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[3]_rep__3_n_0 ),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__54_n_0));
  LUT6 #(
    .INIT(64'hE49A5626DF37A315)) 
    g0_b6__55
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__55_n_0));
  LUT6 #(
    .INIT(64'h60082070893D0D38)) 
    g0_b6__56
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__56_n_0));
  LUT6 #(
    .INIT(64'hB4B6307D303E4B92)) 
    g0_b6__57
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__57_n_0));
  LUT6 #(
    .INIT(64'h24FE74B719E1D379)) 
    g0_b6__58
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__58_n_0));
  LUT6 #(
    .INIT(64'hC9236EB8DAEAEE66)) 
    g0_b6__59
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h6C488B24)) 
    g0_b6__6
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__6_n_0));
  LUT6 #(
    .INIT(64'hEADA0040962E470D)) 
    g0_b6__60
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__60_n_0));
  LUT6 #(
    .INIT(64'h8FDFB128356CE7FC)) 
    g0_b6__61
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__61_n_0));
  LUT6 #(
    .INIT(64'hFE7B0F7808EFD78E)) 
    g0_b6__62
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__62_n_0));
  LUT6 #(
    .INIT(64'h964D2DEC02870733)) 
    g0_b6__63
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[2]_rep__0_0 ),
        .I3(i_wr_addr),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .I5(\neuron_counter_reg[5]_0 [2]),
        .O(g0_b6__63_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h29BFECDD)) 
    g0_b6__7
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h04D23382)) 
    g0_b6__8
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hDF4ACFDA)) 
    g0_b6__9
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(output_addr[1]),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(output_addr[3]),
        .I4(\neuron_counter_reg[5]_0 [1]),
        .O(g0_b6__9_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \input_counter[0]_i_1 
       (.I0(\compare_counter_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(fsm_input_addr[0]),
        .I3(mac_enable),
        .O(\input_counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \input_counter[0]_rep_i_1 
       (.I0(\compare_counter_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(fsm_input_addr[0]),
        .I3(mac_enable),
        .O(\input_counter[0]_rep_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \input_counter[0]_rep_i_1__0 
       (.I0(\compare_counter_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(fsm_input_addr[0]),
        .I3(mac_enable),
        .O(\input_counter[0]_rep_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \input_counter[0]_rep_i_1__1 
       (.I0(\compare_counter_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(fsm_input_addr[0]),
        .I3(mac_enable),
        .O(\input_counter[0]_rep_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \input_counter[0]_rep_i_1__2 
       (.I0(\compare_counter_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(fsm_input_addr[0]),
        .I3(mac_enable),
        .O(\input_counter[0]_rep_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h2828FF28FF282828)) 
    \input_counter[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\compare_counter_reg_n_0_[0] ),
        .I2(\compare_counter_reg_n_0_[1] ),
        .I3(mac_enable),
        .I4(fsm_input_addr[1]),
        .I5(fsm_input_addr[0]),
        .O(\input_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2828FF28FF282828)) 
    \input_counter[1]_rep_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\compare_counter_reg_n_0_[0] ),
        .I2(\compare_counter_reg_n_0_[1] ),
        .I3(mac_enable),
        .I4(fsm_input_addr[1]),
        .I5(fsm_input_addr[0]),
        .O(\input_counter[1]_rep_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \input_counter[2]_i_1 
       (.I0(mac_enable),
        .I1(fsm_input_addr[1]),
        .I2(fsm_input_addr[0]),
        .I3(\input_counter_reg[5]_0 [0]),
        .O(\input_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \input_counter[3]_i_1 
       (.I0(mac_enable),
        .I1(i_rd_addr[0]),
        .I2(fsm_input_addr[1]),
        .I3(\input_counter_reg[5]_0 [0]),
        .I4(\input_counter_reg[5]_0 [1]),
        .O(\input_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \input_counter[4]_i_1 
       (.I0(mac_enable),
        .I1(\input_counter_reg[5]_0 [1]),
        .I2(\input_counter_reg[5]_0 [0]),
        .I3(i_rd_addr[1]),
        .I4(i_rd_addr[0]),
        .I5(\input_counter_reg[5]_0 [2]),
        .O(\input_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF444F4F4)) 
    \input_counter[5]_i_1 
       (.I0(\FSM_onehot_state[10]_i_3_n_0 ),
        .I1(mac_enable),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(\compare_counter_reg_n_0_[0] ),
        .I4(\compare_counter_reg_n_0_[1] ),
        .I5(\input_counter[5]_i_3_n_0 ),
        .O(\input_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \input_counter[5]_i_2 
       (.I0(mac_enable),
        .I1(\input_counter[5]_i_4_n_0 ),
        .I2(\input_counter_reg[5]_0 [1]),
        .I3(\input_counter_reg[5]_0 [2]),
        .I4(\input_counter_reg[5]_0 [3]),
        .O(\input_counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \input_counter[5]_i_3 
       (.I0(mlp_start),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(ram_swap),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(mac_clear),
        .O(\input_counter[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \input_counter[5]_i_4 
       (.I0(i_rd_addr[0]),
        .I1(i_rd_addr[1]),
        .I2(\input_counter_reg[5]_0 [0]),
        .O(\input_counter[5]_i_4_n_0 ));
  (* ORIG_CELL_NAME = "input_counter_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \input_counter_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\input_counter[5]_i_1_n_0 ),
        .D(\input_counter[0]_i_1_n_0 ),
        .Q(fsm_input_addr[0]),
        .R(SR));
  (* ORIG_CELL_NAME = "input_counter_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \input_counter_reg[0]_rep 
       (.C(S_AXI_ACLK),
        .CE(\input_counter[5]_i_1_n_0 ),
        .D(\input_counter[0]_rep_i_1_n_0 ),
        .Q(\input_counter_reg[0]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "input_counter_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \input_counter_reg[0]_rep__0 
       (.C(S_AXI_ACLK),
        .CE(\input_counter[5]_i_1_n_0 ),
        .D(\input_counter[0]_rep_i_1__0_n_0 ),
        .Q(i_rd_addr[0]),
        .R(SR));
  (* ORIG_CELL_NAME = "input_counter_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \input_counter_reg[0]_rep__1 
       (.C(S_AXI_ACLK),
        .CE(\input_counter[5]_i_1_n_0 ),
        .D(\input_counter[0]_rep_i_1__1_n_0 ),
        .Q(\input_counter_reg[0]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "input_counter_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \input_counter_reg[0]_rep__2 
       (.C(S_AXI_ACLK),
        .CE(\input_counter[5]_i_1_n_0 ),
        .D(\input_counter[0]_rep_i_1__2_n_0 ),
        .Q(\input_counter_reg[0]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "input_counter_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \input_counter_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\input_counter[5]_i_1_n_0 ),
        .D(\input_counter[1]_i_1_n_0 ),
        .Q(fsm_input_addr[1]),
        .R(SR));
  (* ORIG_CELL_NAME = "input_counter_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \input_counter_reg[1]_rep 
       (.C(S_AXI_ACLK),
        .CE(\input_counter[5]_i_1_n_0 ),
        .D(\input_counter[1]_rep_i_1_n_0 ),
        .Q(i_rd_addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \input_counter_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\input_counter[5]_i_1_n_0 ),
        .D(\input_counter[2]_i_1_n_0 ),
        .Q(\input_counter_reg[5]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \input_counter_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\input_counter[5]_i_1_n_0 ),
        .D(\input_counter[3]_i_1_n_0 ),
        .Q(\input_counter_reg[5]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \input_counter_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\input_counter[5]_i_1_n_0 ),
        .D(\input_counter[4]_i_1_n_0 ),
        .Q(\input_counter_reg[5]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \input_counter_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\input_counter[5]_i_1_n_0 ),
        .D(\input_counter[5]_i_2_n_0 ),
        .Q(\input_counter_reg[5]_0 [3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0155AAAA)) 
    \layer_counter[0]_i_1 
       (.I0(ram_swap),
        .I1(Q[2]),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(mlp_start),
        .I4(layer_idx[0]),
        .O(\layer_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4447777788888888)) 
    \layer_counter[1]_i_1 
       (.I0(layer_idx[0]),
        .I1(ram_swap),
        .I2(Q[2]),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(mlp_start),
        .I5(layer_idx[1]),
        .O(\layer_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \layer_counter[2]_i_1 
       (.I0(ram_swap),
        .I1(layer_idx[0]),
        .I2(layer_idx[1]),
        .I3(\FSM_onehot_state[10]_i_5_n_0 ),
        .I4(\layer_counter_reg[2]_0 ),
        .O(\layer_counter[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \layer_counter_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\layer_counter[0]_i_1_n_0 ),
        .Q(layer_idx[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \layer_counter_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\layer_counter[1]_i_1_n_0 ),
        .Q(layer_idx[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \layer_counter_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\layer_counter[2]_i_1_n_0 ),
        .Q(\layer_counter_reg[2]_0 ),
        .R(SR));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 max_index0_carry
       (.CI(1'b0),
        .CO({max_index0_carry_n_0,max_index0_carry_n_1,max_index0_carry_n_2,max_index0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_max_index0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 max_index0_carry__0
       (.CI(max_index0_carry_n_0),
        .CO({max_index0_carry__0_n_0,max_index0_carry__0_n_1,max_index0_carry__0_n_2,max_index0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\max_value[15]_i_4_0 ),
        .O(NLW_max_index0_carry__0_O_UNCONNECTED[3:0]),
        .S(\max_value[15]_i_4_1 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \max_index[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\compare_counter_reg_n_0_[0] ),
        .I2(\max_value[15]_i_4_n_0 ),
        .I3(o_class_result[0]),
        .O(\max_index[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \max_index[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\compare_counter_reg_n_0_[1] ),
        .I2(\max_value[15]_i_4_n_0 ),
        .I3(o_class_result[1]),
        .O(\max_index[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_index_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\max_index[0]_i_1_n_0 ),
        .Q(o_class_result[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \max_index_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\max_index[1]_i_1_n_0 ),
        .Q(o_class_result[1]),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \max_value[15]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(\max_value[15]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\max_value[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \max_value[15]_i_2 
       (.I0(\max_value[15]_i_4_n_0 ),
        .I1(S_AXI_ARESETN),
        .O(\max_value[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEAEE)) 
    \max_value[15]_i_4 
       (.I0(\FSM_onehot_state[7]_i_1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(max_index0_carry__0_n_0),
        .I3(\compare_counter_reg_n_0_[0] ),
        .I4(\compare_counter_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\max_value[15]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[0]_0 ),
        .Q(max_value[0]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[10]_0 ),
        .Q(max_value[10]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[11]_0 ),
        .Q(max_value[11]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[12]_0 ),
        .Q(max_value[12]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[13]_0 ),
        .Q(max_value[13]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[14]_0 ),
        .Q(max_value[14]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[15]_0 ),
        .Q(max_value[15]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[1]_0 ),
        .Q(max_value[1]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[2]_0 ),
        .Q(max_value[2]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[3]_0 ),
        .Q(max_value[3]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[4]_0 ),
        .Q(max_value[4]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[5]_0 ),
        .Q(max_value[5]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[6]_0 ),
        .Q(max_value[6]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[7]_0 ),
        .Q(max_value[7]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[8]_0 ),
        .Q(max_value[8]),
        .R(\max_value[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_value_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\max_value[15]_i_2_n_0 ),
        .D(\max_value_reg[9]_0 ),
        .Q(max_value[9]),
        .R(\max_value[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \neuron_counter[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .O(\neuron_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \neuron_counter[1]_i_1 
       (.I0(output_addr[1]),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\neuron_counter[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \neuron_counter[1]_rep_i_1 
       (.I0(output_addr[1]),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\neuron_counter[1]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \neuron_counter[1]_rep_i_1__0 
       (.I0(output_addr[1]),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\neuron_counter[1]_rep_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \neuron_counter[1]_rep_i_1__1 
       (.I0(output_addr[1]),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\neuron_counter[1]_rep_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \neuron_counter[1]_rep_i_1__2 
       (.I0(output_addr[1]),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\neuron_counter[1]_rep_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \neuron_counter[1]_rep_i_1__3 
       (.I0(output_addr[1]),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\neuron_counter[1]_rep_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \neuron_counter[1]_rep_i_1__4 
       (.I0(output_addr[1]),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\neuron_counter[1]_rep_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \neuron_counter[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .O(\neuron_counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \neuron_counter[2]_rep_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\neuron_counter_reg[1]_rep__3_n_0 ),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .O(\neuron_counter[2]_rep_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \neuron_counter[2]_rep_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .O(\neuron_counter[2]_rep_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \neuron_counter[2]_rep_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\neuron_counter_reg[1]_rep__2_n_0 ),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .O(\neuron_counter[2]_rep_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \neuron_counter[2]_rep_i_1__2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .O(\neuron_counter[2]_rep_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \neuron_counter[2]_rep_i_1__3 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\neuron_counter_reg[1]_rep__1_n_0 ),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .O(\neuron_counter[2]_rep_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \neuron_counter[2]_rep_i_1__4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[5]_0 [0]),
        .I2(\neuron_counter_reg[1]_rep__0_n_0 ),
        .I3(\neuron_counter_reg[2]_rep__0_0 ),
        .O(\neuron_counter[2]_rep_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \neuron_counter[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[5]_0 [0]),
        .I3(\neuron_counter_reg[2]_rep_n_0 ),
        .I4(\neuron_counter_reg[3]_rep__5_n_0 ),
        .O(\neuron_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \neuron_counter[3]_rep_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[5]_0 [0]),
        .I3(\neuron_counter_reg[2]_rep_n_0 ),
        .I4(\neuron_counter_reg[3]_rep__5_n_0 ),
        .O(\neuron_counter[3]_rep_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \neuron_counter[3]_rep_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[5]_0 [0]),
        .I3(\neuron_counter_reg[2]_rep_n_0 ),
        .I4(\neuron_counter_reg[3]_rep__5_n_0 ),
        .O(\neuron_counter[3]_rep_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \neuron_counter[3]_rep_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[5]_0 [0]),
        .I3(\neuron_counter_reg[2]_rep_n_0 ),
        .I4(\neuron_counter_reg[3]_rep__5_n_0 ),
        .O(\neuron_counter[3]_rep_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \neuron_counter[3]_rep_i_1__2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[5]_0 [0]),
        .I3(\neuron_counter_reg[2]_rep_n_0 ),
        .I4(\neuron_counter_reg[3]_rep__5_n_0 ),
        .O(\neuron_counter[3]_rep_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \neuron_counter[3]_rep_i_1__3 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[5]_0 [0]),
        .I3(\neuron_counter_reg[2]_rep_n_0 ),
        .I4(\neuron_counter_reg[3]_rep__5_n_0 ),
        .O(\neuron_counter[3]_rep_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \neuron_counter[3]_rep_i_1__4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[5]_0 [0]),
        .I3(\neuron_counter_reg[2]_rep_n_0 ),
        .I4(\neuron_counter_reg[3]_rep__5_n_0 ),
        .O(\neuron_counter[3]_rep_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \neuron_counter[3]_rep_i_1__5 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .I2(\neuron_counter_reg[5]_0 [0]),
        .I3(\neuron_counter_reg[2]_rep_n_0 ),
        .I4(\neuron_counter_reg[3]_rep__5_n_0 ),
        .O(\neuron_counter[3]_rep_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \neuron_counter[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\neuron_counter_reg[3]_rep__5_n_0 ),
        .I2(\neuron_counter_reg[2]_rep_n_0 ),
        .I3(\neuron_counter_reg[5]_0 [0]),
        .I4(output_addr[1]),
        .I5(\neuron_counter_reg[5]_0 [1]),
        .O(\neuron_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFA8FFFFFFA8FFA8)) 
    \neuron_counter[5]_i_1 
       (.I0(mlp_start),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(ram_swap),
        .I4(\FSM_onehot_state[10]_i_6_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(__9));
  LUT6 #(
    .INIT(64'hBFFF400000000000)) 
    \neuron_counter[5]_i_2 
       (.I0(\neuron_counter[5]_i_3_n_0 ),
        .I1(\neuron_counter_reg[2]_rep_n_0 ),
        .I2(\neuron_counter_reg[3]_rep__5_n_0 ),
        .I3(\neuron_counter_reg[5]_0 [1]),
        .I4(\neuron_counter_reg[5]_0 [2]),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\neuron_counter[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \neuron_counter[5]_i_3 
       (.I0(\neuron_counter_reg[5]_0 [0]),
        .I1(\neuron_counter_reg[1]_rep__4_0 ),
        .O(\neuron_counter[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[0]_i_1_n_0 ),
        .Q(\neuron_counter_reg[5]_0 [0]),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[1]_i_1_n_0 ),
        .Q(output_addr[1]),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[1]_rep 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[1]_rep_i_1_n_0 ),
        .Q(\neuron_counter_reg[1]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[1]_rep__0 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[1]_rep_i_1__0_n_0 ),
        .Q(\neuron_counter_reg[1]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[1]_rep__1 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[1]_rep_i_1__1_n_0 ),
        .Q(\neuron_counter_reg[1]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[1]_rep__2 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[1]_rep_i_1__2_n_0 ),
        .Q(\neuron_counter_reg[1]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[1]_rep__3 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[1]_rep_i_1__3_n_0 ),
        .Q(\neuron_counter_reg[1]_rep__3_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[1]_rep__4 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[1]_rep_i_1__4_n_0 ),
        .Q(\neuron_counter_reg[1]_rep__4_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[2]_i_1_n_0 ),
        .Q(output_addr[2]),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[2]_rep 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[2]_rep_i_1_n_0 ),
        .Q(\neuron_counter_reg[2]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[2]_rep__0 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[2]_rep_i_1__0_n_0 ),
        .Q(\neuron_counter_reg[2]_rep__0_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[2]_rep__1 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[2]_rep_i_1__1_n_0 ),
        .Q(\neuron_counter_reg[2]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[2]_rep__2 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[2]_rep_i_1__2_n_0 ),
        .Q(\neuron_counter_reg[2]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[2]_rep__3 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[2]_rep_i_1__3_n_0 ),
        .Q(\neuron_counter_reg[2]_rep__3_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[2]_rep__4 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[2]_rep_i_1__4_n_0 ),
        .Q(\neuron_counter_reg[2]_rep__4_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[3]_i_1_n_0 ),
        .Q(output_addr[3]),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[3]_rep 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[3]_rep_i_1_n_0 ),
        .Q(\neuron_counter_reg[3]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[3]_rep__0 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[3]_rep_i_1__0_n_0 ),
        .Q(\neuron_counter_reg[3]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[3]_rep__1 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[3]_rep_i_1__1_n_0 ),
        .Q(\neuron_counter_reg[3]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[3]_rep__2 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[3]_rep_i_1__2_n_0 ),
        .Q(\neuron_counter_reg[3]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[3]_rep__3 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[3]_rep_i_1__3_n_0 ),
        .Q(\neuron_counter_reg[3]_rep__3_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[3]_rep__4 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[3]_rep_i_1__4_n_0 ),
        .Q(i_wr_addr),
        .R(SR));
  (* ORIG_CELL_NAME = "neuron_counter_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[3]_rep__5 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[3]_rep_i_1__5_n_0 ),
        .Q(\neuron_counter_reg[3]_rep__5_n_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[4]_i_1_n_0 ),
        .Q(\neuron_counter_reg[5]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \neuron_counter_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(__9),
        .D(\neuron_counter[5]_i_2_n_0 ),
        .Q(\neuron_counter_reg[5]_0 [2]),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000001F1F1F00)) 
    ram_b_reg_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_onehot_state[7]_i_3_n_0 ),
        .I3(P),
        .I4(CO),
        .I5(ram_a_reg),
        .O(i_wr_data));
  LUT6 #(
    .INIT(64'hFFFFFFFF1F1F1FFF)) 
    ram_b_reg_i_18
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_onehot_state[7]_i_3_n_0 ),
        .I3(P),
        .I4(CO),
        .I5(ram_a_reg),
        .O(\FSM_onehot_state_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    select_reg_i_1
       (.I0(ram_swap),
        .I1(select_reg),
        .O(\FSM_onehot_state_reg[10]_0 ));
endmodule

(* ORIG_REF_NAME = "MAC_Unit" *) 
module mlp_system_mlp_axi_wrapper_0_0_MAC_Unit
   (P,
    CO,
    accumulator_reg_0,
    i_wr_data,
    accumulator_reg_1,
    S_AXI_ACLK,
    accumulator_reg_2,
    ram_b_reg,
    ARG_0,
    B,
    A,
    C,
    DUMMY_MUX_Z);
  output [0:0]P;
  output [0:0]CO;
  output [0:0]accumulator_reg_0;
  output [14:0]i_wr_data;
  input accumulator_reg_1;
  input S_AXI_ACLK;
  input accumulator_reg_2;
  input ram_b_reg;
  input [0:0]ARG_0;
  input [7:0]B;
  input [15:0]A;
  input [6:0]C;
  input [0:0]DUMMY_MUX_Z;

  wire [15:0]A;
  wire [0:0]ARG_0;
  wire ARG_i_32_n_0;
  wire ARG_n_100;
  wire ARG_n_101;
  wire ARG_n_102;
  wire ARG_n_103;
  wire ARG_n_104;
  wire ARG_n_105;
  wire ARG_n_106;
  wire ARG_n_107;
  wire ARG_n_108;
  wire ARG_n_109;
  wire ARG_n_110;
  wire ARG_n_111;
  wire ARG_n_112;
  wire ARG_n_113;
  wire ARG_n_114;
  wire ARG_n_115;
  wire ARG_n_116;
  wire ARG_n_117;
  wire ARG_n_118;
  wire ARG_n_119;
  wire ARG_n_120;
  wire ARG_n_121;
  wire ARG_n_122;
  wire ARG_n_123;
  wire ARG_n_124;
  wire ARG_n_125;
  wire ARG_n_126;
  wire ARG_n_127;
  wire ARG_n_128;
  wire ARG_n_129;
  wire ARG_n_130;
  wire ARG_n_131;
  wire ARG_n_132;
  wire ARG_n_133;
  wire ARG_n_134;
  wire ARG_n_135;
  wire ARG_n_136;
  wire ARG_n_137;
  wire ARG_n_138;
  wire ARG_n_139;
  wire ARG_n_140;
  wire ARG_n_141;
  wire ARG_n_142;
  wire ARG_n_143;
  wire ARG_n_144;
  wire ARG_n_145;
  wire ARG_n_146;
  wire ARG_n_147;
  wire ARG_n_148;
  wire ARG_n_149;
  wire ARG_n_150;
  wire ARG_n_151;
  wire ARG_n_152;
  wire ARG_n_153;
  wire ARG_n_73;
  wire ARG_n_74;
  wire ARG_n_75;
  wire ARG_n_76;
  wire ARG_n_77;
  wire ARG_n_78;
  wire ARG_n_79;
  wire ARG_n_80;
  wire ARG_n_81;
  wire ARG_n_82;
  wire ARG_n_83;
  wire ARG_n_84;
  wire ARG_n_85;
  wire ARG_n_86;
  wire ARG_n_87;
  wire ARG_n_88;
  wire ARG_n_89;
  wire ARG_n_90;
  wire ARG_n_91;
  wire ARG_n_92;
  wire ARG_n_93;
  wire ARG_n_94;
  wire ARG_n_95;
  wire ARG_n_96;
  wire ARG_n_97;
  wire ARG_n_98;
  wire ARG_n_99;
  wire [7:0]B;
  wire [6:0]C;
  wire [0:0]CO;
  wire [0:0]DUMMY_MUX_Z;
  wire [0:0]P;
  wire S_AXI_ACLK;
  wire [0:0]accumulator_reg_0;
  wire accumulator_reg_1;
  wire accumulator_reg_2;
  wire accumulator_reg_n_100;
  wire accumulator_reg_n_101;
  wire accumulator_reg_n_102;
  wire accumulator_reg_n_103;
  wire accumulator_reg_n_104;
  wire accumulator_reg_n_105;
  wire accumulator_reg_n_67;
  wire accumulator_reg_n_68;
  wire accumulator_reg_n_69;
  wire accumulator_reg_n_70;
  wire accumulator_reg_n_71;
  wire accumulator_reg_n_72;
  wire accumulator_reg_n_73;
  wire accumulator_reg_n_74;
  wire accumulator_reg_n_75;
  wire accumulator_reg_n_76;
  wire accumulator_reg_n_77;
  wire accumulator_reg_n_78;
  wire accumulator_reg_n_79;
  wire accumulator_reg_n_80;
  wire accumulator_reg_n_81;
  wire accumulator_reg_n_82;
  wire accumulator_reg_n_83;
  wire accumulator_reg_n_84;
  wire accumulator_reg_n_85;
  wire accumulator_reg_n_86;
  wire accumulator_reg_n_87;
  wire accumulator_reg_n_88;
  wire accumulator_reg_n_89;
  wire accumulator_reg_n_90;
  wire accumulator_reg_n_91;
  wire accumulator_reg_n_92;
  wire accumulator_reg_n_93;
  wire accumulator_reg_n_94;
  wire accumulator_reg_n_95;
  wire accumulator_reg_n_96;
  wire accumulator_reg_n_97;
  wire accumulator_reg_n_98;
  wire accumulator_reg_n_99;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire [14:0]i_wr_data;
  wire o_result1_carry__0_i_1_n_0;
  wire o_result1_carry__0_i_2_n_0;
  wire o_result1_carry__0_i_3_n_0;
  wire o_result1_carry__0_i_4_n_0;
  wire o_result1_carry__0_i_5_n_0;
  wire o_result1_carry__0_i_6_n_0;
  wire o_result1_carry__0_i_7_n_0;
  wire o_result1_carry__0_i_8_n_0;
  wire o_result1_carry__0_n_0;
  wire o_result1_carry__0_n_1;
  wire o_result1_carry__0_n_2;
  wire o_result1_carry__0_n_3;
  wire o_result1_carry__1_i_1_n_0;
  wire o_result1_carry__1_i_2_n_0;
  wire o_result1_carry__1_i_3_n_0;
  wire o_result1_carry__1_i_4_n_0;
  wire o_result1_carry__1_i_5_n_0;
  wire o_result1_carry__1_n_0;
  wire o_result1_carry__1_n_1;
  wire o_result1_carry__1_n_2;
  wire o_result1_carry__1_n_3;
  wire o_result1_carry_i_1_n_0;
  wire o_result1_carry_i_2_n_0;
  wire o_result1_carry_i_3_n_0;
  wire o_result1_carry_i_4_n_0;
  wire o_result1_carry_i_5_n_0;
  wire o_result1_carry_i_6_n_0;
  wire o_result1_carry_i_7_n_0;
  wire o_result1_carry_i_8_n_0;
  wire o_result1_carry_n_0;
  wire o_result1_carry_n_1;
  wire o_result1_carry_n_2;
  wire o_result1_carry_n_3;
  wire \o_result1_inferred__0/i__carry__0_n_0 ;
  wire \o_result1_inferred__0/i__carry__0_n_1 ;
  wire \o_result1_inferred__0/i__carry__0_n_2 ;
  wire \o_result1_inferred__0/i__carry__0_n_3 ;
  wire \o_result1_inferred__0/i__carry__1_n_0 ;
  wire \o_result1_inferred__0/i__carry__1_n_1 ;
  wire \o_result1_inferred__0/i__carry__1_n_2 ;
  wire \o_result1_inferred__0/i__carry__1_n_3 ;
  wire \o_result1_inferred__0/i__carry_n_0 ;
  wire \o_result1_inferred__0/i__carry_n_1 ;
  wire \o_result1_inferred__0/i__carry_n_2 ;
  wire \o_result1_inferred__0/i__carry_n_3 ;
  wire ram_b_reg;
  wire NLW_ARG_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ARG_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ARG_OVERFLOW_UNCONNECTED;
  wire NLW_ARG_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ARG_PATTERNDETECT_UNCONNECTED;
  wire NLW_ARG_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ARG_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ARG_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ARG_CARRYOUT_UNCONNECTED;
  wire [47:33]NLW_ARG_P_UNCONNECTED;
  wire NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_accumulator_reg_OVERFLOW_UNCONNECTED;
  wire NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_accumulator_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_accumulator_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_accumulator_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_accumulator_reg_CARRYOUT_UNCONNECTED;
  wire [47:40]NLW_accumulator_reg_P_UNCONNECTED;
  wire [47:0]NLW_accumulator_reg_PCOUT_UNCONNECTED;
  wire [3:0]NLW_o_result1_carry_O_UNCONNECTED;
  wire [3:0]NLW_o_result1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_o_result1_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_result1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_o_result1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_o_result1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_o_result1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_o_result1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_o_result1_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_result1_inferred__0/i__carry__2_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ARG
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ARG_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[7],B[7],B[7],B[7],B[7],B[7],B[7],B[7],B[7],B[7],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ARG_BCOUT_UNCONNECTED[17:0]),
        .C({C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C[6],C,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ARG_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ARG_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b1),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(S_AXI_ACLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ARG_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,DUMMY_MUX_Z,DUMMY_MUX_Z,1'b0,ARG_i_32_n_0,1'b0,ARG_i_32_n_0}),
        .OVERFLOW(NLW_ARG_OVERFLOW_UNCONNECTED),
        .P({NLW_ARG_P_UNCONNECTED[47:33],ARG_n_73,ARG_n_74,ARG_n_75,ARG_n_76,ARG_n_77,ARG_n_78,ARG_n_79,ARG_n_80,ARG_n_81,ARG_n_82,ARG_n_83,ARG_n_84,ARG_n_85,ARG_n_86,ARG_n_87,ARG_n_88,ARG_n_89,ARG_n_90,ARG_n_91,ARG_n_92,ARG_n_93,ARG_n_94,ARG_n_95,ARG_n_96,ARG_n_97,ARG_n_98,ARG_n_99,ARG_n_100,ARG_n_101,ARG_n_102,ARG_n_103,ARG_n_104,ARG_n_105}),
        .PATTERNBDETECT(NLW_ARG_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ARG_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({ARG_n_106,ARG_n_107,ARG_n_108,ARG_n_109,ARG_n_110,ARG_n_111,ARG_n_112,ARG_n_113,ARG_n_114,ARG_n_115,ARG_n_116,ARG_n_117,ARG_n_118,ARG_n_119,ARG_n_120,ARG_n_121,ARG_n_122,ARG_n_123,ARG_n_124,ARG_n_125,ARG_n_126,ARG_n_127,ARG_n_128,ARG_n_129,ARG_n_130,ARG_n_131,ARG_n_132,ARG_n_133,ARG_n_134,ARG_n_135,ARG_n_136,ARG_n_137,ARG_n_138,ARG_n_139,ARG_n_140,ARG_n_141,ARG_n_142,ARG_n_143,ARG_n_144,ARG_n_145,ARG_n_146,ARG_n_147,ARG_n_148,ARG_n_149,ARG_n_150,ARG_n_151,ARG_n_152,ARG_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(ARG_0),
        .RSTC(ARG_0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ARG_UNDERFLOW_UNCONNECTED));
  LUT1 #(
    .INIT(2'h1)) 
    ARG_i_32
       (.I0(DUMMY_MUX_Z),
        .O(ARG_i_32_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    accumulator_reg
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_accumulator_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_accumulator_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_accumulator_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(accumulator_reg_1),
        .CLK(S_AXI_ACLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0}),
        .OVERFLOW(NLW_accumulator_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_accumulator_reg_P_UNCONNECTED[47:40],P,accumulator_reg_n_67,accumulator_reg_n_68,accumulator_reg_n_69,accumulator_reg_n_70,accumulator_reg_n_71,accumulator_reg_n_72,accumulator_reg_n_73,accumulator_reg_n_74,accumulator_reg_n_75,accumulator_reg_n_76,accumulator_reg_n_77,accumulator_reg_n_78,accumulator_reg_n_79,accumulator_reg_n_80,accumulator_reg_n_81,accumulator_reg_n_82,accumulator_reg_n_83,accumulator_reg_n_84,accumulator_reg_n_85,accumulator_reg_n_86,accumulator_reg_n_87,accumulator_reg_n_88,accumulator_reg_n_89,accumulator_reg_n_90,accumulator_reg_n_91,accumulator_reg_n_92,accumulator_reg_n_93,accumulator_reg_n_94,accumulator_reg_n_95,accumulator_reg_n_96,accumulator_reg_n_97,accumulator_reg_n_98,accumulator_reg_n_99,accumulator_reg_n_100,accumulator_reg_n_101,accumulator_reg_n_102,accumulator_reg_n_103,accumulator_reg_n_104,accumulator_reg_n_105}),
        .PATTERNBDETECT(NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({ARG_n_106,ARG_n_107,ARG_n_108,ARG_n_109,ARG_n_110,ARG_n_111,ARG_n_112,ARG_n_113,ARG_n_114,ARG_n_115,ARG_n_116,ARG_n_117,ARG_n_118,ARG_n_119,ARG_n_120,ARG_n_121,ARG_n_122,ARG_n_123,ARG_n_124,ARG_n_125,ARG_n_126,ARG_n_127,ARG_n_128,ARG_n_129,ARG_n_130,ARG_n_131,ARG_n_132,ARG_n_133,ARG_n_134,ARG_n_135,ARG_n_136,ARG_n_137,ARG_n_138,ARG_n_139,ARG_n_140,ARG_n_141,ARG_n_142,ARG_n_143,ARG_n_144,ARG_n_145,ARG_n_146,ARG_n_147,ARG_n_148,ARG_n_149,ARG_n_150,ARG_n_151,ARG_n_152,ARG_n_153}),
        .PCOUT(NLW_accumulator_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(accumulator_reg_2),
        .UNDERFLOW(NLW_accumulator_reg_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(accumulator_reg_n_69),
        .I1(accumulator_reg_n_68),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(accumulator_reg_n_71),
        .I1(accumulator_reg_n_70),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(accumulator_reg_n_73),
        .I1(accumulator_reg_n_72),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(accumulator_reg_n_75),
        .I1(accumulator_reg_n_74),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(accumulator_reg_n_68),
        .I1(accumulator_reg_n_69),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(accumulator_reg_n_70),
        .I1(accumulator_reg_n_71),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7
       (.I0(accumulator_reg_n_72),
        .I1(accumulator_reg_n_73),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8
       (.I0(accumulator_reg_n_74),
        .I1(accumulator_reg_n_75),
        .O(i__carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1
       (.I0(accumulator_reg_n_67),
        .I1(P),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(P),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(P),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(P),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_5
       (.I0(P),
        .I1(accumulator_reg_n_67),
        .O(i__carry__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(P),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(accumulator_reg_n_77),
        .I1(accumulator_reg_n_76),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2
       (.I0(accumulator_reg_n_79),
        .I1(accumulator_reg_n_78),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3
       (.I0(accumulator_reg_n_81),
        .I1(accumulator_reg_n_80),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(accumulator_reg_n_76),
        .I1(accumulator_reg_n_77),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(accumulator_reg_n_78),
        .I1(accumulator_reg_n_79),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6
       (.I0(accumulator_reg_n_80),
        .I1(accumulator_reg_n_81),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7
       (.I0(accumulator_reg_n_83),
        .I1(accumulator_reg_n_82),
        .O(i__carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_result1_carry
       (.CI(1'b0),
        .CO({o_result1_carry_n_0,o_result1_carry_n_1,o_result1_carry_n_2,o_result1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_result1_carry_i_1_n_0,o_result1_carry_i_2_n_0,o_result1_carry_i_3_n_0,o_result1_carry_i_4_n_0}),
        .O(NLW_o_result1_carry_O_UNCONNECTED[3:0]),
        .S({o_result1_carry_i_5_n_0,o_result1_carry_i_6_n_0,o_result1_carry_i_7_n_0,o_result1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_result1_carry__0
       (.CI(o_result1_carry_n_0),
        .CO({o_result1_carry__0_n_0,o_result1_carry__0_n_1,o_result1_carry__0_n_2,o_result1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_result1_carry__0_i_1_n_0,o_result1_carry__0_i_2_n_0,o_result1_carry__0_i_3_n_0,o_result1_carry__0_i_4_n_0}),
        .O(NLW_o_result1_carry__0_O_UNCONNECTED[3:0]),
        .S({o_result1_carry__0_i_5_n_0,o_result1_carry__0_i_6_n_0,o_result1_carry__0_i_7_n_0,o_result1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    o_result1_carry__0_i_1
       (.I0(accumulator_reg_n_69),
        .I1(accumulator_reg_n_68),
        .O(o_result1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_result1_carry__0_i_2
       (.I0(accumulator_reg_n_71),
        .I1(accumulator_reg_n_70),
        .O(o_result1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_result1_carry__0_i_3
       (.I0(accumulator_reg_n_73),
        .I1(accumulator_reg_n_72),
        .O(o_result1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_result1_carry__0_i_4
       (.I0(accumulator_reg_n_75),
        .I1(accumulator_reg_n_74),
        .O(o_result1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_result1_carry__0_i_5
       (.I0(accumulator_reg_n_68),
        .I1(accumulator_reg_n_69),
        .O(o_result1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_result1_carry__0_i_6
       (.I0(accumulator_reg_n_70),
        .I1(accumulator_reg_n_71),
        .O(o_result1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_result1_carry__0_i_7
       (.I0(accumulator_reg_n_72),
        .I1(accumulator_reg_n_73),
        .O(o_result1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_result1_carry__0_i_8
       (.I0(accumulator_reg_n_74),
        .I1(accumulator_reg_n_75),
        .O(o_result1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_result1_carry__1
       (.CI(o_result1_carry__0_n_0),
        .CO({o_result1_carry__1_n_0,o_result1_carry__1_n_1,o_result1_carry__1_n_2,o_result1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({o_result1_carry__1_i_1_n_0,o_result1_carry__1_i_2_n_0,o_result1_carry__1_i_3_n_0,o_result1_carry__1_i_4_n_0}),
        .O(NLW_o_result1_carry__1_O_UNCONNECTED[3:0]),
        .S({P,P,P,o_result1_carry__1_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    o_result1_carry__1_i_1
       (.I0(P),
        .O(o_result1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_result1_carry__1_i_2
       (.I0(P),
        .O(o_result1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_result1_carry__1_i_3
       (.I0(P),
        .O(o_result1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_result1_carry__1_i_4
       (.I0(accumulator_reg_n_67),
        .I1(P),
        .O(o_result1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_result1_carry__1_i_5
       (.I0(P),
        .I1(accumulator_reg_n_67),
        .O(o_result1_carry__1_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_result1_carry__2
       (.CI(o_result1_carry__1_n_0),
        .CO({NLW_o_result1_carry__2_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_result1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,P}));
  LUT2 #(
    .INIT(4'h7)) 
    o_result1_carry_i_1
       (.I0(accumulator_reg_n_77),
        .I1(accumulator_reg_n_76),
        .O(o_result1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_result1_carry_i_2
       (.I0(accumulator_reg_n_79),
        .I1(accumulator_reg_n_78),
        .O(o_result1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_result1_carry_i_3
       (.I0(accumulator_reg_n_81),
        .I1(accumulator_reg_n_80),
        .O(o_result1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_result1_carry_i_4
       (.I0(accumulator_reg_n_82),
        .O(o_result1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_result1_carry_i_5
       (.I0(accumulator_reg_n_76),
        .I1(accumulator_reg_n_77),
        .O(o_result1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_result1_carry_i_6
       (.I0(accumulator_reg_n_78),
        .I1(accumulator_reg_n_79),
        .O(o_result1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_result1_carry_i_7
       (.I0(accumulator_reg_n_80),
        .I1(accumulator_reg_n_81),
        .O(o_result1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_result1_carry_i_8
       (.I0(accumulator_reg_n_82),
        .I1(accumulator_reg_n_83),
        .O(o_result1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \o_result1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\o_result1_inferred__0/i__carry_n_0 ,\o_result1_inferred__0/i__carry_n_1 ,\o_result1_inferred__0/i__carry_n_2 ,\o_result1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,accumulator_reg_n_82}),
        .O(\NLW_o_result1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \o_result1_inferred__0/i__carry__0 
       (.CI(\o_result1_inferred__0/i__carry_n_0 ),
        .CO({\o_result1_inferred__0/i__carry__0_n_0 ,\o_result1_inferred__0/i__carry__0_n_1 ,\o_result1_inferred__0/i__carry__0_n_2 ,\o_result1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_o_result1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \o_result1_inferred__0/i__carry__1 
       (.CI(\o_result1_inferred__0/i__carry__0_n_0 ),
        .CO({\o_result1_inferred__0/i__carry__1_n_0 ,\o_result1_inferred__0/i__carry__1_n_1 ,\o_result1_inferred__0/i__carry__1_n_2 ,\o_result1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({P,P,P,i__carry__1_i_1_n_0}),
        .O(\NLW_o_result1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0,i__carry__1_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \o_result1_inferred__0/i__carry__2 
       (.CI(\o_result1_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_o_result1_inferred__0/i__carry__2_CO_UNCONNECTED [3:1],accumulator_reg_0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_o_result1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__2_i_1_n_0}));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_10
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_91),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[6]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_11
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_92),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[5]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_12
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_93),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[4]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_13
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_94),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[3]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_14
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_95),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[2]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_15
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_96),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[1]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_16
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_97),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[0]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_2
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_83),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[14]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_3
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_84),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[13]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_4
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_85),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[12]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_5
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_86),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[11]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_6
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_87),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[10]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_7
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_88),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[9]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_8
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_89),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[8]));
  LUT4 #(
    .INIT(16'hAA08)) 
    ram_b_reg_i_9
       (.I0(ram_b_reg),
        .I1(accumulator_reg_n_90),
        .I2(CO),
        .I3(accumulator_reg_0),
        .O(i_wr_data[7]));
endmodule

(* ORIG_REF_NAME = "PingPong_RAM" *) 
module mlp_system_mlp_axi_wrapper_0_0_PingPong_RAM
   (select_reg,
    DI,
    ram_b_reg_0,
    S,
    ram_b_reg_1,
    A,
    ram_b_reg_2,
    ram_b_reg_3,
    ram_b_reg_4,
    ram_b_reg_5,
    ram_b_reg_6,
    ram_b_reg_7,
    \max_value_reg[15] ,
    ram_b_reg_8,
    ram_b_reg_9,
    ram_b_reg_10,
    ram_b_reg_11,
    ram_b_reg_12,
    ram_b_reg_13,
    ram_b_reg_14,
    ram_b_reg_15,
    ram_b_reg_16,
    S_AXI_ACLK,
    i_wr_en,
    i_wr_addr,
    i_rd_addr,
    i_wr_data,
    select_reg_reg_0,
    max_value,
    DOBDO,
    ARG);
  output select_reg;
  output [3:0]DI;
  output ram_b_reg_0;
  output [3:0]S;
  output ram_b_reg_1;
  output [15:0]A;
  output ram_b_reg_2;
  output ram_b_reg_3;
  output ram_b_reg_4;
  output ram_b_reg_5;
  output ram_b_reg_6;
  output ram_b_reg_7;
  output [3:0]\max_value_reg[15] ;
  output ram_b_reg_8;
  output [3:0]ram_b_reg_9;
  output ram_b_reg_10;
  output ram_b_reg_11;
  output ram_b_reg_12;
  output ram_b_reg_13;
  output ram_b_reg_14;
  output ram_b_reg_15;
  output ram_b_reg_16;
  input S_AXI_ACLK;
  input i_wr_en;
  input [5:0]i_wr_addr;
  input [5:0]i_rd_addr;
  input [15:0]i_wr_data;
  input select_reg_reg_0;
  input [15:0]max_value;
  input [15:0]DOBDO;
  input ARG;

  wire [15:0]A;
  wire ARG;
  wire [3:0]DI;
  wire [15:0]DOBDO;
  wire [3:0]S;
  wire S_AXI_ACLK;
  wire [5:0]i_rd_addr;
  wire [5:0]i_wr_addr;
  wire [15:0]i_wr_data;
  wire i_wr_en;
  wire [15:0]max_value;
  wire [3:0]\max_value_reg[15] ;
  wire ram_b_reg_0;
  wire ram_b_reg_1;
  wire ram_b_reg_10;
  wire ram_b_reg_11;
  wire ram_b_reg_12;
  wire ram_b_reg_13;
  wire ram_b_reg_14;
  wire ram_b_reg_15;
  wire ram_b_reg_16;
  wire ram_b_reg_2;
  wire ram_b_reg_3;
  wire ram_b_reg_4;
  wire ram_b_reg_5;
  wire ram_b_reg_6;
  wire ram_b_reg_7;
  wire ram_b_reg_8;
  wire [3:0]ram_b_reg_9;
  wire ram_b_reg_i_17_n_0;
  wire [15:0]rd_data_a;
  wire [15:0]rd_data_b;
  wire select_reg;
  wire select_reg_reg_0;
  wire [15:0]NLW_ram_a_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_ram_a_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_a_reg_DOPBDOP_UNCONNECTED;
  wire [15:0]NLW_ram_b_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_ram_b_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_b_reg_DOPBDOP_UNCONNECTED;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_10
       (.I0(DOBDO[14]),
        .I1(ARG),
        .I2(rd_data_b[14]),
        .I3(select_reg),
        .I4(rd_data_a[14]),
        .O(A[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_11
       (.I0(DOBDO[13]),
        .I1(ARG),
        .I2(rd_data_b[13]),
        .I3(select_reg),
        .I4(rd_data_a[13]),
        .O(A[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_12
       (.I0(DOBDO[12]),
        .I1(ARG),
        .I2(rd_data_b[12]),
        .I3(select_reg),
        .I4(rd_data_a[12]),
        .O(A[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_13
       (.I0(DOBDO[11]),
        .I1(ARG),
        .I2(rd_data_b[11]),
        .I3(select_reg),
        .I4(rd_data_a[11]),
        .O(A[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_14
       (.I0(DOBDO[10]),
        .I1(ARG),
        .I2(rd_data_b[10]),
        .I3(select_reg),
        .I4(rd_data_a[10]),
        .O(A[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_15
       (.I0(DOBDO[9]),
        .I1(ARG),
        .I2(rd_data_b[9]),
        .I3(select_reg),
        .I4(rd_data_a[9]),
        .O(A[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_16
       (.I0(DOBDO[8]),
        .I1(ARG),
        .I2(rd_data_b[8]),
        .I3(select_reg),
        .I4(rd_data_a[8]),
        .O(A[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_17
       (.I0(DOBDO[7]),
        .I1(ARG),
        .I2(rd_data_b[7]),
        .I3(select_reg),
        .I4(rd_data_a[7]),
        .O(A[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_18
       (.I0(DOBDO[6]),
        .I1(ARG),
        .I2(rd_data_b[6]),
        .I3(select_reg),
        .I4(rd_data_a[6]),
        .O(A[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_19
       (.I0(DOBDO[5]),
        .I1(ARG),
        .I2(rd_data_b[5]),
        .I3(select_reg),
        .I4(rd_data_a[5]),
        .O(A[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_20
       (.I0(DOBDO[4]),
        .I1(ARG),
        .I2(rd_data_b[4]),
        .I3(select_reg),
        .I4(rd_data_a[4]),
        .O(A[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_21
       (.I0(DOBDO[3]),
        .I1(ARG),
        .I2(rd_data_b[3]),
        .I3(select_reg),
        .I4(rd_data_a[3]),
        .O(A[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_22
       (.I0(DOBDO[2]),
        .I1(ARG),
        .I2(rd_data_b[2]),
        .I3(select_reg),
        .I4(rd_data_a[2]),
        .O(A[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_23
       (.I0(DOBDO[1]),
        .I1(ARG),
        .I2(rd_data_b[1]),
        .I3(select_reg),
        .I4(rd_data_a[1]),
        .O(A[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_24
       (.I0(DOBDO[0]),
        .I1(ARG),
        .I2(rd_data_b[0]),
        .I3(select_reg),
        .I4(rd_data_a[0]),
        .O(A[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ARG_i_9
       (.I0(DOBDO[15]),
        .I1(ARG),
        .I2(rd_data_b[15]),
        .I3(select_reg),
        .I4(rd_data_a[15]),
        .O(A[15]));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    max_index0_carry__0_i_1
       (.I0(max_value[15]),
        .I1(ram_b_reg_15),
        .I2(rd_data_a[14]),
        .I3(select_reg),
        .I4(rd_data_b[14]),
        .I5(max_value[14]),
        .O(\max_value_reg[15] [3]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    max_index0_carry__0_i_2
       (.I0(max_value[13]),
        .I1(ram_b_reg_13),
        .I2(rd_data_a[12]),
        .I3(select_reg),
        .I4(rd_data_b[12]),
        .I5(max_value[12]),
        .O(\max_value_reg[15] [2]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    max_index0_carry__0_i_3
       (.I0(max_value[11]),
        .I1(ram_b_reg_11),
        .I2(rd_data_a[10]),
        .I3(select_reg),
        .I4(rd_data_b[10]),
        .I5(max_value[10]),
        .O(\max_value_reg[15] [1]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    max_index0_carry__0_i_4
       (.I0(max_value[9]),
        .I1(ram_b_reg_8),
        .I2(rd_data_a[8]),
        .I3(select_reg),
        .I4(rd_data_b[8]),
        .I5(max_value[8]),
        .O(\max_value_reg[15] [0]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    max_index0_carry__0_i_5
       (.I0(rd_data_b[15]),
        .I1(select_reg),
        .I2(rd_data_a[15]),
        .I3(max_value[15]),
        .I4(ram_b_reg_16),
        .I5(max_value[14]),
        .O(ram_b_reg_9[3]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    max_index0_carry__0_i_6
       (.I0(rd_data_b[13]),
        .I1(select_reg),
        .I2(rd_data_a[13]),
        .I3(max_value[13]),
        .I4(ram_b_reg_14),
        .I5(max_value[12]),
        .O(ram_b_reg_9[2]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    max_index0_carry__0_i_7
       (.I0(rd_data_b[11]),
        .I1(select_reg),
        .I2(rd_data_a[11]),
        .I3(max_value[11]),
        .I4(ram_b_reg_12),
        .I5(max_value[10]),
        .O(ram_b_reg_9[1]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    max_index0_carry__0_i_8
       (.I0(rd_data_b[9]),
        .I1(select_reg),
        .I2(rd_data_a[9]),
        .I3(max_value[9]),
        .I4(ram_b_reg_10),
        .I5(max_value[8]),
        .O(ram_b_reg_9[0]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    max_index0_carry_i_1
       (.I0(max_value[7]),
        .I1(ram_b_reg_6),
        .I2(rd_data_a[6]),
        .I3(select_reg),
        .I4(rd_data_b[6]),
        .I5(max_value[6]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    max_index0_carry_i_2
       (.I0(max_value[5]),
        .I1(ram_b_reg_4),
        .I2(rd_data_a[4]),
        .I3(select_reg),
        .I4(rd_data_b[4]),
        .I5(max_value[4]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    max_index0_carry_i_3
       (.I0(max_value[3]),
        .I1(ram_b_reg_2),
        .I2(rd_data_a[2]),
        .I3(select_reg),
        .I4(rd_data_b[2]),
        .I5(max_value[2]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    max_index0_carry_i_4
       (.I0(max_value[1]),
        .I1(ram_b_reg_0),
        .I2(rd_data_a[0]),
        .I3(select_reg),
        .I4(rd_data_b[0]),
        .I5(max_value[0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    max_index0_carry_i_5
       (.I0(rd_data_b[7]),
        .I1(select_reg),
        .I2(rd_data_a[7]),
        .I3(max_value[7]),
        .I4(ram_b_reg_7),
        .I5(max_value[6]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    max_index0_carry_i_6
       (.I0(rd_data_b[5]),
        .I1(select_reg),
        .I2(rd_data_a[5]),
        .I3(max_value[5]),
        .I4(ram_b_reg_5),
        .I5(max_value[4]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    max_index0_carry_i_7
       (.I0(rd_data_b[3]),
        .I1(select_reg),
        .I2(rd_data_a[3]),
        .I3(max_value[3]),
        .I4(ram_b_reg_3),
        .I5(max_value[2]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    max_index0_carry_i_8
       (.I0(rd_data_b[1]),
        .I1(select_reg),
        .I2(rd_data_a[1]),
        .I3(max_value[1]),
        .I4(ram_b_reg_1),
        .I5(max_value[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[0]_i_1 
       (.I0(rd_data_b[0]),
        .I1(select_reg),
        .I2(rd_data_a[0]),
        .O(ram_b_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[10]_i_1 
       (.I0(rd_data_b[10]),
        .I1(select_reg),
        .I2(rd_data_a[10]),
        .O(ram_b_reg_12));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[11]_i_1 
       (.I0(rd_data_b[11]),
        .I1(select_reg),
        .I2(rd_data_a[11]),
        .O(ram_b_reg_11));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[12]_i_1 
       (.I0(rd_data_b[12]),
        .I1(select_reg),
        .I2(rd_data_a[12]),
        .O(ram_b_reg_14));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[13]_i_1 
       (.I0(rd_data_b[13]),
        .I1(select_reg),
        .I2(rd_data_a[13]),
        .O(ram_b_reg_13));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[14]_i_1 
       (.I0(rd_data_b[14]),
        .I1(select_reg),
        .I2(rd_data_a[14]),
        .O(ram_b_reg_16));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[15]_i_3 
       (.I0(rd_data_b[15]),
        .I1(select_reg),
        .I2(rd_data_a[15]),
        .O(ram_b_reg_15));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[1]_i_1 
       (.I0(rd_data_b[1]),
        .I1(select_reg),
        .I2(rd_data_a[1]),
        .O(ram_b_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[2]_i_1 
       (.I0(rd_data_b[2]),
        .I1(select_reg),
        .I2(rd_data_a[2]),
        .O(ram_b_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[3]_i_1 
       (.I0(rd_data_b[3]),
        .I1(select_reg),
        .I2(rd_data_a[3]),
        .O(ram_b_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[4]_i_1 
       (.I0(rd_data_b[4]),
        .I1(select_reg),
        .I2(rd_data_a[4]),
        .O(ram_b_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[5]_i_1 
       (.I0(rd_data_b[5]),
        .I1(select_reg),
        .I2(rd_data_a[5]),
        .O(ram_b_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[6]_i_1 
       (.I0(rd_data_b[6]),
        .I1(select_reg),
        .I2(rd_data_a[6]),
        .O(ram_b_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[7]_i_1 
       (.I0(rd_data_b[7]),
        .I1(select_reg),
        .I2(rd_data_a[7]),
        .O(ram_b_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[8]_i_1 
       (.I0(rd_data_b[8]),
        .I1(select_reg),
        .I2(rd_data_a[8]),
        .O(ram_b_reg_10));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \max_value[9]_i_1 
       (.I0(rd_data_b[9]),
        .I1(select_reg),
        .I2(rd_data_a[9]),
        .O(ram_b_reg_8));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mlp_system_mlp_axi_wrapper_0_0/U0/mlp_inst/pp_ram_inst/ram_a_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_a_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,i_wr_addr,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,i_rd_addr,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(S_AXI_ACLK),
        .CLKBWRCLK(S_AXI_ACLK),
        .DIADI(i_wr_data),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_a_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO(rd_data_a),
        .DOPADOP(NLW_ram_a_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_a_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(i_wr_en),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({select_reg,select_reg}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mlp_system_mlp_axi_wrapper_0_0/U0/mlp_inst/pp_ram_inst/ram_b_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_b_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,i_wr_addr,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,i_rd_addr,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(S_AXI_ACLK),
        .CLKBWRCLK(S_AXI_ACLK),
        .DIADI(i_wr_data),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_b_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO(rd_data_b),
        .DOPADOP(NLW_ram_b_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_b_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(i_wr_en),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({ram_b_reg_i_17_n_0,ram_b_reg_i_17_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    ram_b_reg_i_17
       (.I0(select_reg),
        .O(ram_b_reg_i_17_n_0));
  FDRE #(
    .INIT(1'b0)) 
    select_reg_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(select_reg_reg_0),
        .Q(select_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mlp" *) 
module mlp_system_mlp_axi_wrapper_0_0_mlp
   (i_reset,
    D,
    o_led,
    S_AXI_ACLK,
    input_ram_reg_0,
    Q,
    S_AXI_ARESETN,
    mlp_start,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[1]_0 ,
    \axi_rdata_reg[1]_1 );
  output i_reset;
  output [1:0]D;
  output [2:0]o_led;
  input S_AXI_ACLK;
  input input_ram_reg_0;
  input [21:0]Q;
  input S_AXI_ARESETN;
  input mlp_start;
  input [3:0]\axi_rdata_reg[1] ;
  input \axi_rdata_reg[1]_0 ;
  input [1:0]\axi_rdata_reg[1]_1 ;

  wire [15:0]A;
  wire [1:0]D;
  wire [21:0]Q;
  wire RESIZE0;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [3:0]\axi_rdata_reg[1] ;
  wire \axi_rdata_reg[1]_0 ;
  wire [1:0]\axi_rdata_reg[1]_1 ;
  wire [5:2]fsm_input_addr;
  wire fsm_inst_n_0;
  wire fsm_inst_n_15;
  wire fsm_inst_n_16;
  wire fsm_inst_n_17;
  wire fsm_inst_n_22;
  wire fsm_inst_n_23;
  wire fsm_inst_n_24;
  wire fsm_inst_n_25;
  wire fsm_inst_n_26;
  wire fsm_inst_n_4;
  wire fsm_inst_n_43;
  wire fsm_inst_n_44;
  wire fsm_inst_n_45;
  wire fsm_inst_n_46;
  wire fsm_inst_n_47;
  wire fsm_inst_n_48;
  wire fsm_inst_n_49;
  wire fsm_inst_n_5;
  wire fsm_inst_n_50;
  wire fsm_inst_n_51;
  wire fsm_inst_n_52;
  wire fsm_inst_n_53;
  wire fsm_inst_n_54;
  wire fsm_inst_n_55;
  wire fsm_inst_n_56;
  wire fsm_inst_n_57;
  wire i_reset;
  wire [14:0]i_wr_data;
  wire input_ram_reg_0;
  wire [15:0]input_rd_data;
  wire [2:2]layer_idx;
  wire mac_add_bias;
  wire [15:0]max_value;
  wire mlp_start;
  wire [1:0]o_class_result;
  wire o_done;
  wire [2:0]o_led;
  wire \o_led[0]_i_1_n_0 ;
  wire \o_led[1]_i_1_n_0 ;
  wire \o_led[2]_i_1_n_0 ;
  wire o_result1;
  wire o_result10_in;
  wire [5:0]output_addr;
  wire output_wr_en;
  wire pp_ram_inst_n_1;
  wire pp_ram_inst_n_10;
  wire pp_ram_inst_n_2;
  wire pp_ram_inst_n_27;
  wire pp_ram_inst_n_28;
  wire pp_ram_inst_n_29;
  wire pp_ram_inst_n_3;
  wire pp_ram_inst_n_30;
  wire pp_ram_inst_n_31;
  wire pp_ram_inst_n_32;
  wire pp_ram_inst_n_33;
  wire pp_ram_inst_n_34;
  wire pp_ram_inst_n_35;
  wire pp_ram_inst_n_36;
  wire pp_ram_inst_n_37;
  wire pp_ram_inst_n_38;
  wire pp_ram_inst_n_39;
  wire pp_ram_inst_n_4;
  wire pp_ram_inst_n_40;
  wire pp_ram_inst_n_41;
  wire pp_ram_inst_n_42;
  wire pp_ram_inst_n_43;
  wire pp_ram_inst_n_44;
  wire pp_ram_inst_n_45;
  wire pp_ram_inst_n_46;
  wire pp_ram_inst_n_47;
  wire pp_ram_inst_n_48;
  wire pp_ram_inst_n_5;
  wire pp_ram_inst_n_6;
  wire pp_ram_inst_n_7;
  wire pp_ram_inst_n_8;
  wire pp_ram_inst_n_9;
  wire select_reg;
  wire [15:0]NLW_input_ram_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_input_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_input_ram_reg_DOPBDOP_UNCONNECTED;

  mlp_system_mlp_axi_wrapper_0_0_Controller_FSM fsm_inst
       (.B({fsm_inst_n_50,fsm_inst_n_51,fsm_inst_n_52,fsm_inst_n_53,fsm_inst_n_54,fsm_inst_n_55,fsm_inst_n_56,fsm_inst_n_57}),
        .C({fsm_inst_n_43,fsm_inst_n_44,fsm_inst_n_45,fsm_inst_n_46,fsm_inst_n_47,fsm_inst_n_48,fsm_inst_n_49}),
        .CO(o_result1),
        .D(D),
        .DI({pp_ram_inst_n_1,pp_ram_inst_n_2,pp_ram_inst_n_3,pp_ram_inst_n_4}),
        .\FSM_onehot_state_reg[0]_0 (fsm_inst_n_4),
        .\FSM_onehot_state_reg[10]_0 (fsm_inst_n_25),
        .\FSM_onehot_state_reg[3]_0 (fsm_inst_n_5),
        .\FSM_onehot_state_reg[3]_1 (fsm_inst_n_17),
        .P(RESIZE0),
        .Q({o_done,output_wr_en,mac_add_bias}),
        .S({pp_ram_inst_n_6,pp_ram_inst_n_7,pp_ram_inst_n_8,pp_ram_inst_n_9}),
        .SR(i_reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .\axi_rdata_reg[1] (\axi_rdata_reg[1] ),
        .\axi_rdata_reg[1]_0 (Q[1:0]),
        .\axi_rdata_reg[1]_1 (\axi_rdata_reg[1]_0 ),
        .\axi_rdata_reg[1]_2 (\axi_rdata_reg[1]_1 ),
        .i_rd_addr({fsm_inst_n_15,fsm_inst_n_16}),
        .i_wr_addr(fsm_inst_n_26),
        .i_wr_data(fsm_inst_n_0),
        .\input_counter_reg[5]_0 (fsm_input_addr),
        .\layer_counter_reg[1]_0 (fsm_inst_n_24),
        .\layer_counter_reg[2]_0 (layer_idx),
        .max_value(max_value),
        .\max_value[15]_i_4_0 ({pp_ram_inst_n_33,pp_ram_inst_n_34,pp_ram_inst_n_35,pp_ram_inst_n_36}),
        .\max_value[15]_i_4_1 ({pp_ram_inst_n_38,pp_ram_inst_n_39,pp_ram_inst_n_40,pp_ram_inst_n_41}),
        .\max_value_reg[0]_0 (pp_ram_inst_n_10),
        .\max_value_reg[10]_0 (pp_ram_inst_n_44),
        .\max_value_reg[11]_0 (pp_ram_inst_n_43),
        .\max_value_reg[12]_0 (pp_ram_inst_n_46),
        .\max_value_reg[13]_0 (pp_ram_inst_n_45),
        .\max_value_reg[14]_0 (pp_ram_inst_n_48),
        .\max_value_reg[15]_0 (pp_ram_inst_n_47),
        .\max_value_reg[1]_0 (pp_ram_inst_n_5),
        .\max_value_reg[2]_0 (pp_ram_inst_n_28),
        .\max_value_reg[3]_0 (pp_ram_inst_n_27),
        .\max_value_reg[4]_0 (pp_ram_inst_n_30),
        .\max_value_reg[5]_0 (pp_ram_inst_n_29),
        .\max_value_reg[6]_0 (pp_ram_inst_n_32),
        .\max_value_reg[7]_0 (pp_ram_inst_n_31),
        .\max_value_reg[8]_0 (pp_ram_inst_n_42),
        .\max_value_reg[9]_0 (pp_ram_inst_n_37),
        .mlp_start(mlp_start),
        .\neuron_counter_reg[1]_rep__4_0 (fsm_inst_n_22),
        .\neuron_counter_reg[2]_rep__0_0 (fsm_inst_n_23),
        .\neuron_counter_reg[5]_0 ({output_addr[5:4],output_addr[0]}),
        .o_class_result(o_class_result),
        .ram_a_reg(o_result10_in),
        .select_reg(select_reg));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mlp_system_mlp_axi_wrapper_0_0/U0/mlp_inst/input_ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    input_ram_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,Q[21:16],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,fsm_input_addr,fsm_inst_n_15,fsm_inst_n_16,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(S_AXI_ACLK),
        .CLKBWRCLK(S_AXI_ACLK),
        .DIADI(Q[15:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_input_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO(input_rd_data),
        .DOPADOP(NLW_input_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_input_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(input_ram_reg_0),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  mlp_system_mlp_axi_wrapper_0_0_MAC_Unit mac_inst
       (.A(A),
        .ARG_0(layer_idx),
        .B({fsm_inst_n_50,fsm_inst_n_51,fsm_inst_n_52,fsm_inst_n_53,fsm_inst_n_54,fsm_inst_n_55,fsm_inst_n_56,fsm_inst_n_57}),
        .C({fsm_inst_n_43,fsm_inst_n_44,fsm_inst_n_45,fsm_inst_n_46,fsm_inst_n_47,fsm_inst_n_48,fsm_inst_n_49}),
        .CO(o_result1),
        .DUMMY_MUX_Z(mac_add_bias),
        .P(RESIZE0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .accumulator_reg_0(o_result10_in),
        .accumulator_reg_1(fsm_inst_n_17),
        .accumulator_reg_2(fsm_inst_n_5),
        .i_wr_data(i_wr_data),
        .ram_b_reg(fsm_inst_n_4));
  LUT4 #(
    .INIT(16'h1F10)) 
    \o_led[0]_i_1 
       (.I0(o_class_result[1]),
        .I1(o_class_result[0]),
        .I2(o_done),
        .I3(o_led[0]),
        .O(\o_led[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \o_led[1]_i_1 
       (.I0(o_class_result[0]),
        .I1(o_class_result[1]),
        .I2(o_done),
        .I3(o_led[1]),
        .O(\o_led[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \o_led[2]_i_1 
       (.I0(o_class_result[1]),
        .I1(o_class_result[0]),
        .I2(o_done),
        .I3(o_led[2]),
        .O(\o_led[2]_i_1_n_0 ));
  FDRE \o_led_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\o_led[0]_i_1_n_0 ),
        .Q(o_led[0]),
        .R(i_reset));
  FDRE \o_led_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\o_led[1]_i_1_n_0 ),
        .Q(o_led[1]),
        .R(i_reset));
  FDRE \o_led_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\o_led[2]_i_1_n_0 ),
        .Q(o_led[2]),
        .R(i_reset));
  mlp_system_mlp_axi_wrapper_0_0_PingPong_RAM pp_ram_inst
       (.A(A),
        .ARG(fsm_inst_n_24),
        .DI({pp_ram_inst_n_1,pp_ram_inst_n_2,pp_ram_inst_n_3,pp_ram_inst_n_4}),
        .DOBDO(input_rd_data),
        .S({pp_ram_inst_n_6,pp_ram_inst_n_7,pp_ram_inst_n_8,pp_ram_inst_n_9}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .i_rd_addr({fsm_input_addr,fsm_inst_n_15,fsm_inst_n_16}),
        .i_wr_addr({output_addr[5:4],fsm_inst_n_26,fsm_inst_n_23,fsm_inst_n_22,output_addr[0]}),
        .i_wr_data({fsm_inst_n_0,i_wr_data}),
        .i_wr_en(output_wr_en),
        .max_value(max_value),
        .\max_value_reg[15] ({pp_ram_inst_n_33,pp_ram_inst_n_34,pp_ram_inst_n_35,pp_ram_inst_n_36}),
        .ram_b_reg_0(pp_ram_inst_n_5),
        .ram_b_reg_1(pp_ram_inst_n_10),
        .ram_b_reg_10(pp_ram_inst_n_42),
        .ram_b_reg_11(pp_ram_inst_n_43),
        .ram_b_reg_12(pp_ram_inst_n_44),
        .ram_b_reg_13(pp_ram_inst_n_45),
        .ram_b_reg_14(pp_ram_inst_n_46),
        .ram_b_reg_15(pp_ram_inst_n_47),
        .ram_b_reg_16(pp_ram_inst_n_48),
        .ram_b_reg_2(pp_ram_inst_n_27),
        .ram_b_reg_3(pp_ram_inst_n_28),
        .ram_b_reg_4(pp_ram_inst_n_29),
        .ram_b_reg_5(pp_ram_inst_n_30),
        .ram_b_reg_6(pp_ram_inst_n_31),
        .ram_b_reg_7(pp_ram_inst_n_32),
        .ram_b_reg_8(pp_ram_inst_n_37),
        .ram_b_reg_9({pp_ram_inst_n_38,pp_ram_inst_n_39,pp_ram_inst_n_40,pp_ram_inst_n_41}),
        .select_reg(select_reg),
        .select_reg_reg_0(fsm_inst_n_25));
endmodule

(* ORIG_REF_NAME = "mlp_axi_wrapper" *) 
module mlp_system_mlp_axi_wrapper_0_0_mlp_axi_wrapper
   (o_led,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_BVALID,
    S_AXI_RVALID,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    S_AXI_BREADY,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_ARVALID,
    S_AXI_RREADY);
  output [2:0]o_led;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input [3:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_ARADDR;
  input S_AXI_BREADY;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [3:0]araddr_reg;
  wire aw_en;
  wire aw_en_i_1_n_0;
  wire [3:0]awaddr_reg;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire [31:0]axi_rdata;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire axi_rvalid00_out__0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire i_reset;
  wire input_wr_pulse_i_1_n_0;
  wire input_wr_pulse_reg_n_0;
  wire mlp_start;
  wire mlp_start0;
  wire mlp_start_r;
  wire [5:0]mlp_wr_addr;
  wire [15:0]mlp_wr_data;
  wire [2:0]o_led;
  wire [0:0]reg_ctrl;
  wire \reg_ctrl[31]_i_2_n_0 ;
  wire \reg_ctrl_reg_n_0_[0] ;
  wire \reg_ctrl_reg_n_0_[10] ;
  wire \reg_ctrl_reg_n_0_[11] ;
  wire \reg_ctrl_reg_n_0_[12] ;
  wire \reg_ctrl_reg_n_0_[13] ;
  wire \reg_ctrl_reg_n_0_[14] ;
  wire \reg_ctrl_reg_n_0_[15] ;
  wire \reg_ctrl_reg_n_0_[16] ;
  wire \reg_ctrl_reg_n_0_[17] ;
  wire \reg_ctrl_reg_n_0_[18] ;
  wire \reg_ctrl_reg_n_0_[19] ;
  wire \reg_ctrl_reg_n_0_[1] ;
  wire \reg_ctrl_reg_n_0_[20] ;
  wire \reg_ctrl_reg_n_0_[21] ;
  wire \reg_ctrl_reg_n_0_[22] ;
  wire \reg_ctrl_reg_n_0_[23] ;
  wire \reg_ctrl_reg_n_0_[24] ;
  wire \reg_ctrl_reg_n_0_[25] ;
  wire \reg_ctrl_reg_n_0_[26] ;
  wire \reg_ctrl_reg_n_0_[27] ;
  wire \reg_ctrl_reg_n_0_[28] ;
  wire \reg_ctrl_reg_n_0_[29] ;
  wire \reg_ctrl_reg_n_0_[2] ;
  wire \reg_ctrl_reg_n_0_[30] ;
  wire \reg_ctrl_reg_n_0_[31] ;
  wire \reg_ctrl_reg_n_0_[3] ;
  wire \reg_ctrl_reg_n_0_[4] ;
  wire \reg_ctrl_reg_n_0_[5] ;
  wire \reg_ctrl_reg_n_0_[6] ;
  wire \reg_ctrl_reg_n_0_[7] ;
  wire \reg_ctrl_reg_n_0_[8] ;
  wire \reg_ctrl_reg_n_0_[9] ;
  wire [31:22]reg_input;
  wire [0:0]reg_input_0;

  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[0]),
        .Q(araddr_reg[0]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[1]),
        .Q(araddr_reg[1]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[2]),
        .Q(araddr_reg[2]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[3]),
        .Q(araddr_reg[3]),
        .R(i_reset));
  LUT5 #(
    .INIT(32'h8F8FFF8F)) 
    aw_en_i_1
       (.I0(S_AXI_BVALID),
        .I1(S_AXI_BREADY),
        .I2(S_AXI_ARESETN),
        .I3(aw_en),
        .I4(axi_awready0),
        .O(aw_en_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[0]),
        .Q(awaddr_reg[0]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[1]),
        .Q(awaddr_reg[1]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[2]),
        .Q(awaddr_reg[2]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \awaddr_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[3]),
        .Q(awaddr_reg[3]),
        .R(i_reset));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(i_reset));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(S_AXI_AWREADY),
        .I1(aw_en),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(axi_awready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(i_reset));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_BVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_AWVALID),
        .I5(S_AXI_WVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(i_reset));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[10]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[10] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[10]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[10]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[11]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[11] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[11]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[11]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[12]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[12] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[12]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[12]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[13]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[13] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[13]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[13]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[14]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[14] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[14]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[14]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[15]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[15] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[15]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[15]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[16]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[16] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_addr[0]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[16]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[17]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[17] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_addr[1]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[17]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[18]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[18] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_addr[2]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[18]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[19]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[19] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_addr[3]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[19]));
  LUT2 #(
    .INIT(4'hE)) 
    \axi_rdata[1]_i_3 
       (.I0(araddr_reg[0]),
        .I1(araddr_reg[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[20]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[20] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_addr[4]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[20]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[21]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[21] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_addr[5]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[21]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[22]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[22] ),
        .I1(araddr_reg[3]),
        .I2(reg_input[22]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[22]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[23]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[23] ),
        .I1(araddr_reg[3]),
        .I2(reg_input[23]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[23]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[24]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[24] ),
        .I1(araddr_reg[3]),
        .I2(reg_input[24]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[24]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[25]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[25] ),
        .I1(araddr_reg[3]),
        .I2(reg_input[25]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[25]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[26]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[26] ),
        .I1(araddr_reg[3]),
        .I2(reg_input[26]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[26]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[27]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[27] ),
        .I1(araddr_reg[3]),
        .I2(reg_input[27]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[27]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[28]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[28] ),
        .I1(araddr_reg[3]),
        .I2(reg_input[28]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[28]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[29]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[29] ),
        .I1(araddr_reg[3]),
        .I2(reg_input[29]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[29]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[2]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[2] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[2]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[2]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[30]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[30] ),
        .I1(araddr_reg[3]),
        .I2(reg_input[30]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[30]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[31]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[31] ),
        .I1(araddr_reg[3]),
        .I2(reg_input[31]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[31]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[3]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[3] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[3]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[3]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[4]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[4] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[4]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[4]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[5]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[5] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[5]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[5]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[6]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[6] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[6]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[6]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[7]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[7] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[7]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[7]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[8]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[8] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[8]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[8]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[9]_i_1 
       (.I0(\reg_ctrl_reg_n_0_[9] ),
        .I1(araddr_reg[3]),
        .I2(mlp_wr_data[9]),
        .I3(araddr_reg[0]),
        .I4(araddr_reg[1]),
        .I5(araddr_reg[2]),
        .O(axi_rdata[9]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[0]),
        .Q(S_AXI_RDATA[0]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[10]),
        .Q(S_AXI_RDATA[10]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[11]),
        .Q(S_AXI_RDATA[11]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[12]),
        .Q(S_AXI_RDATA[12]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[13]),
        .Q(S_AXI_RDATA[13]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[14]),
        .Q(S_AXI_RDATA[14]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[15]),
        .Q(S_AXI_RDATA[15]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[16]),
        .Q(S_AXI_RDATA[16]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[17]),
        .Q(S_AXI_RDATA[17]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[18]),
        .Q(S_AXI_RDATA[18]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[19]),
        .Q(S_AXI_RDATA[19]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[1]),
        .Q(S_AXI_RDATA[1]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[20]),
        .Q(S_AXI_RDATA[20]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[21]),
        .Q(S_AXI_RDATA[21]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[22]),
        .Q(S_AXI_RDATA[22]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[23]),
        .Q(S_AXI_RDATA[23]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[24]),
        .Q(S_AXI_RDATA[24]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[25]),
        .Q(S_AXI_RDATA[25]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[26]),
        .Q(S_AXI_RDATA[26]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[27]),
        .Q(S_AXI_RDATA[27]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[28]),
        .Q(S_AXI_RDATA[28]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[29]),
        .Q(S_AXI_RDATA[29]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[2]),
        .Q(S_AXI_RDATA[2]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[30]),
        .Q(S_AXI_RDATA[30]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[31]),
        .Q(S_AXI_RDATA[31]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[3]),
        .Q(S_AXI_RDATA[3]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[4]),
        .Q(S_AXI_RDATA[4]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[5]),
        .Q(S_AXI_RDATA[5]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[6]),
        .Q(S_AXI_RDATA[6]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[7]),
        .Q(S_AXI_RDATA[7]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[8]),
        .Q(S_AXI_RDATA[8]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(axi_rdata[9]),
        .Q(S_AXI_RDATA[9]),
        .R(i_reset));
  LUT3 #(
    .INIT(8'h20)) 
    axi_rvalid00_out
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARREADY),
        .O(axi_rvalid00_out__0));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .O(axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(i_reset));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(axi_wready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(i_reset));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    input_wr_pulse_i_1
       (.I0(S_AXI_ARESETN),
        .I1(\reg_ctrl[31]_i_2_n_0 ),
        .I2(awaddr_reg[0]),
        .I3(awaddr_reg[2]),
        .I4(awaddr_reg[1]),
        .I5(awaddr_reg[3]),
        .O(input_wr_pulse_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    input_wr_pulse_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(input_wr_pulse_i_1_n_0),
        .Q(input_wr_pulse_reg_n_0),
        .R(1'b0));
  mlp_system_mlp_axi_wrapper_0_0_mlp mlp_inst
       (.D(axi_rdata[1:0]),
        .Q({mlp_wr_addr,mlp_wr_data}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .\axi_rdata_reg[1] (araddr_reg),
        .\axi_rdata_reg[1]_0 (\axi_rdata[1]_i_3_n_0 ),
        .\axi_rdata_reg[1]_1 ({\reg_ctrl_reg_n_0_[1] ,\reg_ctrl_reg_n_0_[0] }),
        .i_reset(i_reset),
        .input_ram_reg_0(input_wr_pulse_reg_n_0),
        .mlp_start(mlp_start),
        .o_led(o_led));
  LUT2 #(
    .INIT(4'h2)) 
    mlp_start_i_1
       (.I0(\reg_ctrl_reg_n_0_[0] ),
        .I1(mlp_start_r),
        .O(mlp_start0));
  FDRE #(
    .INIT(1'b0)) 
    mlp_start_r_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\reg_ctrl_reg_n_0_[0] ),
        .Q(mlp_start_r),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    mlp_start_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(mlp_start0),
        .Q(mlp_start),
        .R(i_reset));
  LUT5 #(
    .INIT(32'h00000004)) 
    \reg_ctrl[31]_i_1 
       (.I0(awaddr_reg[3]),
        .I1(\reg_ctrl[31]_i_2_n_0 ),
        .I2(awaddr_reg[0]),
        .I3(awaddr_reg[2]),
        .I4(awaddr_reg[1]),
        .O(reg_ctrl));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \reg_ctrl[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(\reg_ctrl[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[0]),
        .Q(\reg_ctrl_reg_n_0_[0] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[10]),
        .Q(\reg_ctrl_reg_n_0_[10] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[11]),
        .Q(\reg_ctrl_reg_n_0_[11] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[12]),
        .Q(\reg_ctrl_reg_n_0_[12] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[13]),
        .Q(\reg_ctrl_reg_n_0_[13] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[14]),
        .Q(\reg_ctrl_reg_n_0_[14] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[15]),
        .Q(\reg_ctrl_reg_n_0_[15] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[16]),
        .Q(\reg_ctrl_reg_n_0_[16] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[17]),
        .Q(\reg_ctrl_reg_n_0_[17] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[18]),
        .Q(\reg_ctrl_reg_n_0_[18] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[19]),
        .Q(\reg_ctrl_reg_n_0_[19] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[1]),
        .Q(\reg_ctrl_reg_n_0_[1] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[20]),
        .Q(\reg_ctrl_reg_n_0_[20] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[21]),
        .Q(\reg_ctrl_reg_n_0_[21] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[22]),
        .Q(\reg_ctrl_reg_n_0_[22] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[23]),
        .Q(\reg_ctrl_reg_n_0_[23] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[24]),
        .Q(\reg_ctrl_reg_n_0_[24] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[25]),
        .Q(\reg_ctrl_reg_n_0_[25] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[26]),
        .Q(\reg_ctrl_reg_n_0_[26] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[27]),
        .Q(\reg_ctrl_reg_n_0_[27] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[28]),
        .Q(\reg_ctrl_reg_n_0_[28] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[29]),
        .Q(\reg_ctrl_reg_n_0_[29] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[2]),
        .Q(\reg_ctrl_reg_n_0_[2] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[30]),
        .Q(\reg_ctrl_reg_n_0_[30] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[31]),
        .Q(\reg_ctrl_reg_n_0_[31] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[3]),
        .Q(\reg_ctrl_reg_n_0_[3] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[4]),
        .Q(\reg_ctrl_reg_n_0_[4] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[5]),
        .Q(\reg_ctrl_reg_n_0_[5] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[6]),
        .Q(\reg_ctrl_reg_n_0_[6] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[7]),
        .Q(\reg_ctrl_reg_n_0_[7] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[8]),
        .Q(\reg_ctrl_reg_n_0_[8] ),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(reg_ctrl),
        .D(S_AXI_WDATA[9]),
        .Q(\reg_ctrl_reg_n_0_[9] ),
        .R(i_reset));
  LUT5 #(
    .INIT(32'h00020000)) 
    \reg_input[31]_i_1 
       (.I0(\reg_ctrl[31]_i_2_n_0 ),
        .I1(awaddr_reg[0]),
        .I2(awaddr_reg[2]),
        .I3(awaddr_reg[1]),
        .I4(awaddr_reg[3]),
        .O(reg_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[0]),
        .Q(mlp_wr_data[0]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[10]),
        .Q(mlp_wr_data[10]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[11]),
        .Q(mlp_wr_data[11]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[12]),
        .Q(mlp_wr_data[12]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[13]),
        .Q(mlp_wr_data[13]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[14]),
        .Q(mlp_wr_data[14]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[15]),
        .Q(mlp_wr_data[15]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[16]),
        .Q(mlp_wr_addr[0]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[17]),
        .Q(mlp_wr_addr[1]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[18]),
        .Q(mlp_wr_addr[2]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[19]),
        .Q(mlp_wr_addr[3]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[1]),
        .Q(mlp_wr_data[1]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[20]),
        .Q(mlp_wr_addr[4]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[21]),
        .Q(mlp_wr_addr[5]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[22]),
        .Q(reg_input[22]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[23]),
        .Q(reg_input[23]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[24]),
        .Q(reg_input[24]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[25]),
        .Q(reg_input[25]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[26]),
        .Q(reg_input[26]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[27]),
        .Q(reg_input[27]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[28]),
        .Q(reg_input[28]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[29]),
        .Q(reg_input[29]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[2]),
        .Q(mlp_wr_data[2]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[30]),
        .Q(reg_input[30]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[31]),
        .Q(reg_input[31]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[3]),
        .Q(mlp_wr_data[3]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[4]),
        .Q(mlp_wr_data[4]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[5]),
        .Q(mlp_wr_data[5]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[6]),
        .Q(mlp_wr_data[6]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[7]),
        .Q(mlp_wr_data[7]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[8]),
        .Q(mlp_wr_data[8]),
        .R(i_reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_input_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(reg_input_0),
        .D(S_AXI_WDATA[9]),
        .Q(mlp_wr_data[9]),
        .R(i_reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
