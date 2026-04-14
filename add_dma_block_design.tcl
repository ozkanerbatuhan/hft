# ==============================================================
# HFT-MLP Aşama 1: AXI DMA Block Design TCL Script
# ==============================================================
# Bu scripti Vivado TCL Console'dan çalıştırabilirsiniz.
# Alternatif olarak, aynı adımları GUI'den de yapabilirsiniz.
#
# ÖNEMLİ: Scripti çalıştırmadan önce mlp_system block design 
# açık ve düzenlenebilir olmalı.
# ==============================================================

# Proje yolunu ayarla
set project_dir "D:/vivado projects/hft"

# Block design'ı aç
open_bd_design "${project_dir}/hft.srcs/sources_1/bd/mlp_system/mlp_system.bd"

# ==============================================================
# 1. Zynq PS: S_AXI_HP0 portunu etkinleştir
# ==============================================================
set_property -dict [list \
    CONFIG.PCW_USE_S_AXI_HP0 {1} \
] [get_bd_cells processing_system7_0]

# ==============================================================
# 2. AXI DMA IP'sini ekle
# ==============================================================
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0

# DMA konfigürasyonu:
#   - MM2S (Memory-to-Stream): Etkin — RAM'den MLP'ye veri gönderir
#   - S2MM (Stream-to-Memory): Devre dışı — sonuç AXI-Lite ile okunur
#   - Scatter Gather: Devre dışı — basit mod yeterli (80 byte)
#   - MM2S Data Width: 32 bit
set_property -dict [list \
    CONFIG.c_include_s2mm {0} \
    CONFIG.c_include_sg {0} \
    CONFIG.c_m_axi_mm2s_data_width {32} \
    CONFIG.c_m_axis_mm2s_tdata_width {32} \
    CONFIG.c_mm2s_burst_size {16} \
] [get_bd_cells axi_dma_0]

# ==============================================================
# 3. mlp_axi_wrapper'ı güncelle
# ==============================================================
# Wrapper'ı yeniden eklemek gerekebilir çünkü port listesi değişti.
# Eğer Vivado otomatik algılamazsa:
#   1) Eski mlp_axi_wrapper_0'ı sil
#   2) RTL modülü yeniden ekle (Add Module → mlp_axi_wrapper)

# ==============================================================
# 4. Bağlantılar
# ==============================================================

# 4a. DMA kontrol portu → PS GP0 üzerinden (AXI SmartConnect ile)
# Not: Mevcut axi_smc SmartConnect, zaten GP0'a bağlı.
# DMA'nın S_AXI_LITE portunu aynı SmartConnect'e bağla.
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/S_AXI_LITE] \
                    [get_bd_intf_pins axi_smc/M01_AXI]
# SmartConnect'e yeni bir master port eklemek gerekebilir:
set_property CONFIG.NUM_MI {3} [get_bd_cells axi_smc]

# 4b. DMA veri okuma portu → PS HP0  
# HP0 için ayrı bir AXI SmartConnect/Interconnect gerekir
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_smc:1.0 axi_smc_hp0
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] \
                    [get_bd_intf_pins axi_smc_hp0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smc_hp0/M00_AXI] \
                    [get_bd_intf_pins processing_system7_0/S_AXI_HP0]

# 4c. DMA stream çıkışı → MLP wrapper stream girişi
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] \
                    [get_bd_intf_pins mlp_axi_wrapper_0/S_AXIS]

# 4d. Clock ve Reset bağlantıları
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
# 5. Adres haritasını ata
# ==============================================================
# DMA base address otomatik atanır, ama kontrol edelim
assign_bd_address
# Tipik adresler:
#   mlp_axi_wrapper_0: 0x43C00000 (mevcut)
#   axi_dma_0:         0x40400000 (yeni)

# ==============================================================
# 6. Doğrulama ve Kaydet
# ==============================================================
validate_bd_design
save_bd_design
