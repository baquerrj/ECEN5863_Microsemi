# Created by Microsemi Libero Software 11.8.0.26
# Mon Nov 18 19:56:10 2019

# (OPEN DESIGN)

open_design "CD3FF.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "CD3FF_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Microsemi_Prj\hw8\p1a\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


layout -timing_driven
report -type "status" {CD3FF_place_and_route_report.txt}
report -type "globalnet" {CD3FF_globalnet_report.txt}
report -type "globalusage" {CD3FF_globalusage_report.txt}
report -type "iobank" {CD3FF_iobank_report.txt}
report -type "pin" -listby "name" {CD3FF_report_pin_byname.txt}
report -type "pin" -listby "number" {CD3FF_report_pin_bynumber.txt}

save_design
