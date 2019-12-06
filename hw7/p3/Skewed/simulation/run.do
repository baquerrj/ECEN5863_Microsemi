quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "C:/Microsemi_Prj/hw7/p3/Skewed"

if {[file exists ../designer/impl1/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/impl1/simulation/postlayout already exists"
} else {
   file delete -force ../designer/impl1/simulation/postlayout
   vlib ../designer/impl1/simulation/postlayout
}
vmap postlayout ../designer/impl1/simulation/postlayout
vmap smartfusion "C:/Microsemi/Libero_SoC_v11.8/Designer/lib/modelsim/precompiled/vlog/smartfusion"

vlog -vlog01compat -work postlayout "${PROJECT_DIR}/designer/impl1/Skewed_ba.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work postlayout "${PROJECT_DIR}/stimulus/Skewed_tb.v"

vsim -L smartfusion -L postlayout  -t 1ps -sdfmax /Skewed_0=${PROJECT_DIR}/designer/impl1/Skewed_ba.sdf postlayout.Skewed_tb
add wave /Skewed_tb/*
set slist [find signals {/Skewed_tb/Skewed_0/*/Q}]
set slist [lsort -dictionary $slist]
foreach s $slist { add wave $s }
run 1000ns
