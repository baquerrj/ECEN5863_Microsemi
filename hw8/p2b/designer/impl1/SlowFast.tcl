# Created by Microsemi Libero Software 11.8.0.26
# Wed Nov 20 21:39:15 2019

# (OPEN DESIGN)

open_design "SlowFast.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "SlowFast_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Microsemi_Prj\hw8\p2b\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


layout -timing_driven
report -type "status" {SlowFast_place_and_route_report.txt}
report -type "globalnet" {SlowFast_globalnet_report.txt}
report -type "globalusage" {SlowFast_globalusage_report.txt}
report -type "iobank" {SlowFast_iobank_report.txt}
report -type "pin" -listby "name" {SlowFast_report_pin_byname.txt}
report -type "pin" -listby "number" {SlowFast_report_pin_bynumber.txt}

save_design
