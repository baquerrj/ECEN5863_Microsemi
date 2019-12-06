# Top Level Design Parameters

# Clocks

create_clock -name {SlowFast|Bclk} -period 10.000000 -waveform {0.000000 5.000000} Bclk
create_clock -name {SlowFast|Aclk} -period 10.000000 -waveform {0.000000 5.000000} Aclk

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
