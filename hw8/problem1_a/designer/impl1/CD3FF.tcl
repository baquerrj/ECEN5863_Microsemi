# Created by Microsemi Libero Software 11.8.0.26
# Wed Nov 20 19:12:52 2019

# (OPEN DESIGN)

open_design "CD3FF.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "CD3FF_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Microsemi_Prj\hw8\problem1_a\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design
