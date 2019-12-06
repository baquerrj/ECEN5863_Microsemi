# Created by Microsemi Libero Software 11.8.0.26
# Sun Nov 03 20:16:04 2019

# (OPEN DESIGN)

open_design "Strained.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "Strained_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Microsemi_Prj\hw7\p4\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design
