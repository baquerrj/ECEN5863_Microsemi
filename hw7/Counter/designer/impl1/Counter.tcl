# Created by Microsemi Libero Software 11.8.0.26
# Wed Nov 06 19:35:33 2019

# (OPEN DESIGN)

open_design "Counter.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "Counter_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Microsemi_Prj\hw7\Counter\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VHDL93" -netlist

save_design
