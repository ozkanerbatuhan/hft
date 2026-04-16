open_project {d:/vivado projects/hft/hft.xpr}
add_files -norecurse {d:/vivado projects/hft/hft.srcs/sources_1/new/weights_pkg.vhd}
remove_files {d:/vivado projects/hft/hft.srcs/sources_1/new/Controller_FSM.vhd d:/vivado projects/hft/hft.srcs/sources_1/new/MAC_Unit.vhd d:/vivado projects/hft/hft.srcs/sources_1/new/PingPong_RAM.vhd d:/vivado projects/hft/hft.srcs/sources_1/new/weight_rom.vhd}
update_compile_order -fileset sources_1
reset_run synth_1
launch_runs synth_1 -jobs 6
wait_on_run synth_1
exit
