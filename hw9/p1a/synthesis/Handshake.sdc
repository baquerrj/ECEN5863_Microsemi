# Top Level Design Parameters

# Clocks

create_clock -name {Handshake|bclk} -period 26.666667 [get_ports bclk]
create_clock -name {Handshake|aclk} -period 40.000000 [get_ports aclk]

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
