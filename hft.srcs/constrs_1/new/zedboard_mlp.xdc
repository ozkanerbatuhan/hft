################################################################################
## zedboard_mlp.xdc
## ZedBoard (xc7z020clg484-1) Pin Constraints for HFT-MLP Project
##
## Bu dosya LED, Debug (PMOD) pinlerini tanimlar.
## Zynq PS pinleri (DDR, MIO, Ethernet) Block Design tarafindan otomatik 
## atanacagindan burada yer almaz.
##
## NOT: Block Design wrapper port isimlerine "_0" son eki ekler.
##      DEBUG_BEGIN / DEBUG_END arasindaki tum satirlar makale olcumleri
##      tamamlaninca komple silinecek / comment-out edilecektir.
################################################################################

## ======================= DEBUG_BEGIN =======================

## ─────────────────────────────────────────────
## LEDs  (Active High — ZedBoard LD0-LD7)
## ─────────────────────────────────────────────

## LD0
set_property PACKAGE_PIN T22  [get_ports {o_led_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[0]}]

## LD1
set_property PACKAGE_PIN T21  [get_ports {o_led_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[1]}]

## LD2
set_property PACKAGE_PIN U22  [get_ports {o_led_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[2]}]

## LD3 — Layer 1 Done (sticky)
set_property PACKAGE_PIN U21  [get_ports {o_led_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[3]}]

## LD4 — Layer 2 Done (sticky)
set_property PACKAGE_PIN V22  [get_ports {o_led_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[4]}]

## LD5 — Layer 3 Done (sticky)
set_property PACKAGE_PIN W22  [get_ports {o_led_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[5]}]

## LD6 — Layer 4 Done (sticky)
set_property PACKAGE_PIN U19  [get_ports {o_led_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[6]}]

## LD7 — Inference tamamlandi
set_property PACKAGE_PIN U14  [get_ports {o_led_0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[7]}]

## ─────────────────────────────────────────────
## PMOD JA — Osiloskop Debug Pinleri (3.3V)
## ─────────────────────────────────────────────
##   Sinyal                  Pin    Aciklama
##   ──────────────────────  ─────  ────────────────────────────────────
##   dbg_data_in_pulse_0     JA1    Veri PL'e girdi (1-clk pulse)
##   dbg_layer1_done_0       JA2    Layer 1 bitti (1-clk pulse)
##   dbg_layer2_done_0       JA3    Layer 2 bitti (1-clk pulse)
##   dbg_layer3_done_0       JA4    Layer 3 bitti (1-clk pulse)
##   dbg_layer4_done_0       JA7    Layer 4 / tum MLP bitti (1-clk pulse)
##   dbg_mlp_busy_0          JA8    MLP mesgul (level)
##
## Osiloskop Kullanim Rehberi:
##   CH1 → JA1, CH2 → JA7  : Toplam PL Inference Gecikmesi
##   CH1 → JA1, CH2 → JA2  : Layer 1 suresi
##   CH1 → JA2, CH2 → JA3  : Layer 2 suresi
##   CH1 → JA3, CH2 → JA4  : Layer 3 suresi
##   CH1 → JA4, CH2 → JA7  : Layer 4 suresi

## JA1 — Data In Pulse
set_property PACKAGE_PIN Y11  [get_ports {dbg_data_in_pulse_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {dbg_data_in_pulse_0}]

## JA2 — Layer 1 Done
set_property PACKAGE_PIN AA11 [get_ports {dbg_layer1_done_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {dbg_layer1_done_0}]

## JA3 — Layer 2 Done
set_property PACKAGE_PIN Y10  [get_ports {dbg_layer2_done_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {dbg_layer2_done_0}]

## JA4 — Layer 3 Done
set_property PACKAGE_PIN AA9  [get_ports {dbg_layer3_done_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {dbg_layer3_done_0}]

## JA7 — Layer 4 / MLP Done
set_property PACKAGE_PIN AB11 [get_ports {dbg_layer4_done_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {dbg_layer4_done_0}]

## JA8 — MLP Busy
set_property PACKAGE_PIN AB10 [get_ports {dbg_mlp_busy_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {dbg_mlp_busy_0}]

## ======================= DEBUG_END =========================

## ─────────────────────────────────────────────
## IOB False Path (Debug pinleri timing'i etkilemesin)
## ─────────────────────────────────────────────
set_false_path -to [get_ports {o_led_0[*]}]
set_false_path -to [get_ports {dbg_data_in_pulse_0}]
set_false_path -to [get_ports {dbg_layer1_done_0}]
set_false_path -to [get_ports {dbg_layer2_done_0}]
set_false_path -to [get_ports {dbg_layer3_done_0}]
set_false_path -to [get_ports {dbg_layer4_done_0}]
set_false_path -to [get_ports {dbg_mlp_busy_0}]
