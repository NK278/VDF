
create_clock -name clk -period 7.5 [get_ports clk]

set_input_delay  2 -clock clk [get_ports {a b}]

set_output_delay 2 -clock clk [get_ports out]
set_multicycle_path 4 -setup -from [get_pins u_out_reg/Q] -to [get_port out]
set_multicycle_path 3 -hold -from [get_pins u_out_reg/Q] -to [get_port out]
set_drive 0 [get_ports {a b clk}]

set_load 0.1 [get_ports out]


