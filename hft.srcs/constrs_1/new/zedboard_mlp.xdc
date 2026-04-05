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
set_property PACKAGE_PIN T22  [get_ports {o_led_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[0]}]

## LD1 → HOLD sinyalı
set_property PACKAGE_PIN T21  [get_ports {o_led_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[1]}]

## LD2 → BUY sinyalı
set_property PACKAGE_PIN U22  [get_ports {o_led_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led_0[2]}]

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
