file mkdir sta_after_synthesis/reports
set report_dir sta_after_synthesis/reports

#read_lib slow.lib
read_lib slow.lib
#read_lib typical.lib
read_verilog /home/nishchal22330/Desktop/cad180/nish_vdf/syn_net.v

set_top_module syn_netlist_top

read_sdc design.sdc

check_timing  > $report_dir/check_timing.rpt 
report_timing > $report_dir/timing_report.rpt
report_timing -nworst 5 -late > $report_dir/timing_setup.rpt
report_timing -nworst 5 -early > $report_dir/timing_hold.rpt
report_analysis_coverage > $report_dir/analysis_coverage.rpt 
report_analysis_summary > $report_dir/analysis_summary.rpt 
 
report_clocks > $report_dir/clocks.rpt 
report_case_analysis > $report_dir/case_analysis.rpt 
report_constraints -all_violators > $report_dir/allviolationsinit.rpt 
report_timing -retime path_slew_propagation -max_path 5 -nworst 5 -path_type full_clock > $report_dir/pba.rpt  
