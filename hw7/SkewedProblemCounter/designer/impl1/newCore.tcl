# Created by Microsemi Libero Software 11.8.0.26
# Sat Nov 02 19:15:50 2019

# (OPEN DESIGN)

open_design "newCore.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "newCore_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Microsemi_Prj\hw7\SkewedProblemCounter\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


layout -timing_driven
report -type "status" {newCore_place_and_route_report.txt}
report -type "globalnet" {newCore_globalnet_report.txt}
report -type "globalusage" {newCore_globalusage_report.txt}
report -type "iobank" {newCore_iobank_report.txt}
report -type "pin" -listby "name" {newCore_report_pin_byname.txt}
report -type "pin" -listby "number" {newCore_report_pin_bynumber.txt}

save_design
