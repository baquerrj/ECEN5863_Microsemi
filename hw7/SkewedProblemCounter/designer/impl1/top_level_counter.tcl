# Created by Microsemi Libero Software 11.8.0.26
# Sun Nov 03 16:26:29 2019

# (NEW DESIGN)

# create a new design
new_design -name "top_level_counter" -family "SmartFusion"

# set default back-annotation base-name
set_defvar "BA_NAME" "top_level_counter_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Microsemi_Prj\hw7\SkewedProblemCounter\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

# set working directory
set_defvar "DESDIR" "C:/Microsemi_Prj/hw7/SkewedProblemCounter/designer/impl1"

# set back-annotation output directory
set_defvar "BA_DIR" "C:/Microsemi_Prj/hw7/SkewedProblemCounter/designer/impl1"

# enable the export back-annotation netlist
set_defvar "BA_NETLIST_ALSO" "1"

# set EDIF options
set_defvar "EDNINFLAVOR" "GENERIC"

# set HDL options
set_defvar "NETLIST_NAMING_STYLE" "VERILOG"

# setup status report options
set_defvar "EXPORT_STATUS_REPORT" "1"
set_defvar "EXPORT_STATUS_REPORT_FILENAME" "top_level_counter.rpt"

# legacy audit-mode flags (left here for historical reasons)
set_defvar "AUDIT_NETLIST_FILE" "1"
set_defvar "AUDIT_DCF_FILE" "1"
set_defvar "AUDIT_PIN_FILE" "1"
set_defvar "AUDIT_ADL_FILE" "1"

# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/top_level_counter.edn}

# export translation of original netlist
export -format "verilog" {../../synthesis/top_level_counter.v}
