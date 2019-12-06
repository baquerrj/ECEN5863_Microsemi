quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "C:/Microsemi_Prj/hw7/p4"

if {[file exists ../designer/impl1/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/impl1/simulation/postlayout already exists"
} else {
   file delete -force ../designer/impl1/simulation/postlayout 
   vlib ../designer/impl1/simulation/postlayout
}
vmap postlayout ../designer/impl1/simulation/postlayout
vmap smartfusion "C:/Microsemi/Libero_SoC_v11.8/Designer/lib/modelsim/precompiled/vlog/smartfusion"

vlog -vlog01compat -work postlayout "${PROJECT_DIR}/designer/impl1/Strained_ba.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work postlayout "${PROJECT_DIR}/stimulus/Strained_tb.v"

vsim -L smartfusion -L postlayout  -t 1ps -sdfmax /Strained_0=${PROJECT_DIR}/designer/impl1/Strained_ba.sdf postlayout.Strained_tb
add wave /Strained_tb/*
set slist [find signals {/Strained_tb/Strained_0/*/Q}];
set slist [lsort -dictionary $slist];
foreach s $slist { add wave $s };
run 1000ns
