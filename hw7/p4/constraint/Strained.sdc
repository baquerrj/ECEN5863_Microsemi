# Top Level Design Parameters

# Clocks

create_clock -name {Strained|clk} -period 15.000000 [get_ports {clk}]

# Minimum input delay
set_input_delay 0.0 -clock {Strained|clk} -min {reset}
# Maximum input delay
set_input_delay 1.0 -clock {Strained|clk} -max {reset}

# Minimum output delay
set_output_delay 1.0 -clock {Strained|clk} -min {TC}
# Maximum output delay
set_output_delay 1.1 -clock {Strained|clk} -max {TC}