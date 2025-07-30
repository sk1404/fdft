set_attr lib_search_path /home/pgstudent14/counter_design_database_45nm/lib/
set_attr hdl_search_path /home/pgstudent14/counter_design_database_45nm/rtl/
set_attr library /home/pgstudent14/counter_design_database_45nm/lib/slow_vdd1v0_basicCells.lib
read_hdl /home/pgstudent14/counter_design_database_45nm/simulation/engg/s27.v 
elaborate
#read_sdc /home/pgstudent1/counter_design_database_45nm/simulation/abhivtv/constraints.sdc
synthesize -to_mapped -effort medium
write_hdl > s27_netlist.v 
#write_sdc > dft_10_count_sdc.sdc
#report_area > 4_bit_count_area.rep
#report_gates > 4_bit_count_gates.rep
#report_power > 4_bit_count_power.rep
#report_timing > 4_bit_count_timing.rep
gui_show
