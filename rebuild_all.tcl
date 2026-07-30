#=============================================================================
# rebuild_all.tcl -- synthesis, implementation, bitstream, reports and .xsa
#
# Usage (Vivado Tcl console):
#     cd {D:/vivado projects/hft}
#     source rebuild_all.tcl
#
# Or in batch mode:
#     vivado -mode batch -source {D:/vivado projects/hft/rebuild_all.tcl}
#
# This replaces the earlier run_synth.tcl and build_bitstream.tcl, which
# were broken in three ways:
#   * run_synth.tcl tried to add a weights_pkg.vhd that does not exist and
#     to remove files deleted long ago (Controller_FSM, MAC_Unit,
#     PingPong_RAM, weight_rom), so it errored out.
#   * Report paths were relative, so output landed in Vivado's own working
#     directory instead of the project.
#   * Paths containing spaces were not braced, giving "No files matched".
#=============================================================================

set PRJ  {D:/vivado projects/hft}
set RPT  "$PRJ/reports"
set XSA  "$PRJ/mlp_system_wrapper.xsa"
set JOBS 6

puts "=========================================================="
puts " MLP hizlandirici -- tam yeniden derleme"
puts "=========================================================="

open_project "$PRJ/hft.xpr"
update_compile_order -fileset sources_1
file mkdir $RPT

#--- Synthesis -----------------------------------------------------------------
puts "\n\[1/5\] Sentez..."
reset_run synth_1
launch_runs synth_1 -jobs $JOBS
wait_on_run synth_1
if {[get_property PROGRESS [get_runs synth_1]] != "100%"} {
    error "SYNTHESIS FAILED -- see the synth_1 log for details"
}

#--- Implementation and bitstream ---------------------------------------------
puts "\n\[2/5\] Implementation + bitstream..."
reset_run impl_1
launch_runs impl_1 -to_step write_bitstream -jobs $JOBS
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {
    error "IMPLEMENTATION FAILED -- see the impl_1 log"
}

#--- Reports, absolute paths -------------------------------------
puts "\n\[3/5\] Reports -> $RPT"
open_run impl_1
report_utilization      -file "$RPT/util.rpt"
report_timing_summary   -file "$RPT/timing.rpt"
report_power            -file "$RPT/power.rpt"
report_clock_utilization -file "$RPT/clock.rpt"
# Critical path: explains where the Fmax ceiling comes from
report_timing -max_paths 10 -nworst 10 -delay_type max -sort_by group \
              -file "$RPT/critical_paths.rpt"

#--- .xsa export with the bitstream included ------------------------------------------------
puts "\n\[4/5\] Hardware platform -> $XSA"
write_hw_platform -fixed -include_bit -force -file $XSA

#--- Summary -------------------------------------------------------------------
puts "\n\[5/5\] Summary"
set wns [get_property STATS.WNS [get_runs impl_1]]
set whs [get_property STATS.WHS [get_runs impl_1]]
set tns [get_property STATS.TNS [get_runs impl_1]]
puts "=========================================================="
puts [format "  WNS  %8.3f ns    WHS %8.3f ns    TNS %8.3f ns" $wns $whs $tns]
if {$wns < 0} { puts "  !! TIMING NOT MET" } else { puts "  Timing met." }
puts "  Reports  : $RPT"
puts "  Platform : $XSA"
puts "=========================================================="
puts ""
puts "NEXT STEPS:"
puts "  1. Vitis: mlp_platform -> Update Hardware Specification with the new .xsa"
puts "  2. Clean-build the platform and lwip_echo_server"
puts "  3. BOOT.bin: bootgen -image verify_boot.bif -arch zynq -o BOOT.bin -w on"
puts "  4. Check that the packaged .bit md5 matches this synthesis run"
puts "  5. Repeat the on-board verification runs"
