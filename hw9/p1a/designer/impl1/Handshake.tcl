# Created by Microsemi Libero Software 11.8.0.26
# Mon Dec 02 18:50:01 2019

# (OPEN DESIGN)

open_design "Handshake.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "Handshake_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Microsemi_Prj\hw9\p1a\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design
