################################################################################
## zedboard_mlp.xdc
## ZedBoard (xc7z020clg484-1) Pin Constraints for HFT-MLP Project
##
## Bu dosya LED ve Switch pinlerini tanımlar.
## Zynq PS pinleri (DDR, MIO, Ethernet) Block Design tarafından otomatik 
## atanacağından burada yer almaz.
################################################################################

## ─────────────────────────────────────────────
## LEDs  (Active High, accent LEDs on ZedBoard)
## ─────────────────────────────────────────────
## LD0 → SELL sinyalı
#set_property PACKAGE_PIN T22  [get_ports {o_led_0[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[0]}]

## LD1 → HOLD sinyalı
#set_property PACKAGE_PIN T21  [get_ports {o_led_0[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[1]}]

## LD2 → BUY sinyalı
#set_property PACKAGE_PIN U22  [get_ports {o_led_0[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[2]}]

## LD3
#set_property PACKAGE_PIN U21  [get_ports {o_led_0[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[3]}]

## LD4
#set_property PACKAGE_PIN V22  [get_ports {o_led_0[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[4]}]

## LD5
#set_property PACKAGE_PIN W22  [get_ports {o_led_0[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[5]}]

## LD6
#set_property PACKAGE_PIN U19  [get_ports {o_led_0[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[6]}]

## LD7
#set_property PACKAGE_PIN U14  [get_ports {o_led_0[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[7]}]

## ─────────────────────────────────────────────
## Switches (isteğe bağlı — debug/test amaçlı)
## ─────────────────────────────────────────────
## SW0 → Genel amaçlı (şimdilik bağlı değil)
# set_property PACKAGE_PIN F22  [get_ports {sw[0]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]

## SW1
# set_property PACKAGE_PIN G22  [get_ports {sw[1]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]

## SW2
# set_property PACKAGE_PIN H22  [get_ports {sw[2]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]

## SW3
# set_property PACKAGE_PIN F21  [get_ports {sw[3]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]

## SW4
# set_property PACKAGE_PIN H19  [get_ports {sw[4]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]

## SW5
# set_property PACKAGE_PIN H18  [get_ports {sw[5]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]

## SW6
# set_property PACKAGE_PIN H17  [get_ports {sw[6]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]

## SW7
# set_property PACKAGE_PIN M15  [get_ports {sw[7]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]

## ─────────────────────────────────────────────
## Push Buttons (isteğe bağlı — debug/test amaçlı)
## ─────────────────────────────────────────────
## BTNC (Center)
# set_property PACKAGE_PIN P16  [get_ports btn_center]
# set_property IOSTANDARD LVCMOS33 [get_ports btn_center]

## BTND (Down)
# set_property PACKAGE_PIN R16  [get_ports btn_down]
# set_property IOSTANDARD LVCMOS33 [get_ports btn_down]

## BTNL (Left)
# set_property PACKAGE_PIN N15  [get_ports btn_left]
# set_property IOSTANDARD LVCMOS33 [get_ports btn_left]

## BTNR (Right)
# set_property PACKAGE_PIN R18  [get_ports btn_right]
# set_property IOSTANDARD LVCMOS33 [get_ports btn_right]

## BTNU (Up)
# set_property PACKAGE_PIN T18  [get_ports btn_up]
# set_property IOSTANDARD LVCMOS33 [get_ports btn_up]

## ─────────────────────────────────────────────
## PMOD JA — Osiloskop Debug Pinleri
## ZedBoard PMOD JA Header (3.3V)
##
## Sinyal Açıklamaları:
##   JA1 (dbg_stream_active) : DMA veri akışı aktif (HIGH = veri alınıyor)
##   JA2 (dbg_mlp_busy)      : MLP hesaplama çekirdeği meşgul
##   JA3 (dbg_mlp_done)      : MLP hesaplama bitti (tek clock pulse)
##   JA4 (dbg_tlast_seen)    : TLAST alındı (tek clock pulse)
##
## Osiloskop Kullanımı:
##   CH1 → JA1 (dbg_stream_active)  : Yükselen kenar = veri gelmeye başladı
##   CH2 → JA2 (dbg_mlp_busy)       : Yükselen kenar = hesaplama başladı
##                                     Düşen kenar  = hesaplama bitti
##   CH1-CH2 arası süre = toplam PL gecikme
## ─────────────────────────────────────────────

## JA1 — DMA Stream Active
#set_property PACKAGE_PIN Y11  [get_ports {dbg_stream_active_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_stream_active_0}]

## JA2 — MLP Busy
#set_property PACKAGE_PIN AA11 [get_ports {dbg_mlp_busy_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_mlp_busy_0}]

## JA3 — MLP Done (pulse)
#set_property PACKAGE_PIN Y19  [get_ports {dbg_mlp_done_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_mlp_done_0}]

## JA4 — TLAST Seen (pulse)
#set_property PACKAGE_PIN AA9  [get_ports {dbg_tlast_seen_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_tlast_seen_0}]

# =====================================================================
# DEBUG STRETCHERS (JB = 10us, JC = 100us, JD = 1ms)
# =====================================================================

## JB — 10x Stretched (PMOD JB Top Row)
#set_property PACKAGE_PIN W12 [get_ports {dbg_stream_active_jb_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_stream_active_jb_0}]

#set_property PACKAGE_PIN W11 [get_ports {dbg_mlp_busy_jb_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_mlp_busy_jb_0}]

#set_property PACKAGE_PIN V10 [get_ports {dbg_mlp_done_jb_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_mlp_done_jb_0}]

#set_property PACKAGE_PIN W8  [get_ports {dbg_tlast_seen_jb_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_tlast_seen_jb_0}]

## JC — 100x Stretched (PMOD JC Top Row - differential pins used as single-ended)
#set_property PACKAGE_PIN AB6 [get_ports {dbg_stream_active_jc_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_stream_active_jc_0}]

#set_property PACKAGE_PIN AB7 [get_ports {dbg_mlp_busy_jc_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_mlp_busy_jc_0}]

#set_property PACKAGE_PIN AA4 [get_ports {dbg_mlp_done_jc_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_mlp_done_jc_0}]

#set_property PACKAGE_PIN Y4  [get_ports {dbg_tlast_seen_jc_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_tlast_seen_jc_0}]

## JD — 1000x Stretched (PMOD JD Top Row - differential pins used as single-ended)
#set_property PACKAGE_PIN W7  [get_ports {dbg_stream_active_jd_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_stream_active_jd_0}]

#set_property PACKAGE_PIN V7  [get_ports {dbg_mlp_busy_jd_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_mlp_busy_jd_0}]

#set_property PACKAGE_PIN V4  [get_ports {dbg_mlp_done_jd_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_mlp_done_jd_0}]

#set_property PACKAGE_PIN V5  [get_ports {dbg_tlast_seen_jd_0}]
#set_property IOSTANDARD LVCMOS33 [get_ports {dbg_tlast_seen_jd_0}]
