# Top Level Design Parameters

# Clocks

create_clock -name {Handshake|bclk} -period 40.000000 -waveform {0.000000 20.000000} bclk
create_clock -name {Handshake|aclk} -period 26.666600 -waveform {0.000000 13.333300} aclk

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
