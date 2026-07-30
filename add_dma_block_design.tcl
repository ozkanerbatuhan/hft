# ==============================================================
# HFT-MLP step 1: AXI DMA block design TCL script
# ==============================================================
# Run this from the Vivado TCL console, or perform the same steps
# by hand in the GUI.
#
# Important: the mlp_system block design must be open and editable
# before this script is run.
# ==============================================================

# Set the project path
set project_dir "D:/vivado projects/hft"

# Open the block design
open_bd_design "${project_dir}/hft.srcs/sources_1/bd/mlp_system/mlp_system.bd"

# ==============================================================
# 1. Zynq PS: enable the S_AXI_HP0 port
# ==============================================================
set_property -dict [list \
    CONFIG.PCW_USE_S_AXI_HP0 {1} \
] [get_bd_cells processing_system7_0]

# ==============================================================
# 2. Add the AXI DMA IP
# ==============================================================
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0

# DMA configuration:
#   - MM2S (memory to stream): enabled, moves data from RAM to the MLP
#   - S2MM (stream to memory): disabled, results are read over AXI-Lite
#   - Scatter gather: disabled, simple mode is enough for 80 bytes
#   - MM2S Data Width: 32 bit
set_property -dict [list \
    CONFIG.c_include_s2mm {0} \
    CONFIG.c_include_sg {0} \
    CONFIG.c_m_axi_mm2s_data_width {32} \
    CONFIG.c_m_axis_mm2s_tdata_width {32} \
    CONFIG.c_mm2s_burst_size {16} \
] [get_bd_cells axi_dma_0]

# ==============================================================
# 3. Update mlp_axi_wrapper
# ==============================================================
# The wrapper may need to be re-added because its port list changed.
# If Vivado does not pick this up automatically:
#   1) delete the old mlp_axi_wrapper_0
#   2) re-add the RTL module (Add Module -> mlp_axi_wrapper)

# ==============================================================
# 4. Connections
# ==============================================================

# 4a. DMA control port to PS GP0 through the AXI SmartConnect
# The existing axi_smc SmartConnect is already attached to GP0;
# connect the DMA's S_AXI_LITE port to the same SmartConnect.
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/S_AXI_LITE] \
                    [get_bd_intf_pins axi_smc/M01_AXI]
# A new master port on the SmartConnect may be required:
set_property CONFIG.NUM_MI {3} [get_bd_cells axi_smc]

# 4b. DMA data read port to PS HP0
# HP0 needs its own AXI SmartConnect or Interconnect
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_smc:1.0 axi_smc_hp0
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] \
                    [get_bd_intf_pins axi_smc_hp0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smc_hp0/M00_AXI] \
                    [get_bd_intf_pins processing_system7_0/S_AXI_HP0]

# 4c. DMA stream output to the MLP wrapper stream input
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] \
                    [get_bd_intf_pins mlp_axi_wrapper_0/S_AXIS]

# 4d. Clock and reset connections
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] \
               [get_bd_pins axi_dma_0/s_axi_lite_aclk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] \
               [get_bd_pins axi_dma_0/m_axi_mm2s_aclk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] \
               [get_bd_pins axi_smc_hp0/aclk]

connect_bd_net [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] \
               [get_bd_pins axi_dma_0/axi_resetn]
connect_bd_net [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] \
               [get_bd_pins axi_smc_hp0/aresetn]

# ==============================================================
# 5. Assign the address map
# ==============================================================
# The DMA base address is assigned automatically; verify it
assign_bd_address
# Typical addresses:
#   mlp_axi_wrapper_0: 0x43C00000 (existing)
#   axi_dma_0:         0x40400000 (new)

# ==============================================================
# 6. Validate and save
# ==============================================================
validate_bd_design
save_bd_design
