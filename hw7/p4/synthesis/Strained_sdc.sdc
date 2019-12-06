# Top Level Design Parameters

# Clocks

create_clock -name {Strained|clk} -period 15.000000 -waveform {0.000000 7.500000} clk

# False Paths Between Clocks


# False Path Constraints


# Maximum Delay Constraints


# Multicycle Constraints


# Virtual Clocks
# Output Load Constraints
# Driving Cell Constraints
# Wire Loads
# set_wire_load_mode top

# Other Constraints
set_input_delay 1.000 -clock {clk} {reset}
set_output_delay 1.100 -clock {Strained|clk} {TC}
