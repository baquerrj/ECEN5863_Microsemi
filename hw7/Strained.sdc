# Top Level Design Parameters

# Clocks

create_clock -name {Strained|clk} -period 20.000000 -waveform {0.000000 5.000000} clk

# Minimum input delay
set_input_delay 1.0 -clock clk -min {reset}
# Maximum input delay
set_input_delay 1.5 -clock clk -max {reset}

# Minimum output delay
set_output_delay 1.0 -clock clk -min {TC}
# Maximum output delay
set_output_delay 1.2 -clock clk -max {TC}