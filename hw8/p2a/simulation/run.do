quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "C:/Microsemi_Prj/hw8/p2a"

if {[file exists ../designer/impl1/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/impl1/simulation/postlayout already exists"
} else {
   file delete -force ../designer/impl1/simulation/postlayout 
   vlib ../designer/impl1/simulation/postlayout
}
vmap postlayout ../designer/impl1/simulation/postlayout
vmap smartfusion "C:/Microsemi/Libero_SoC_v11.8/Designer/lib/modelsim/precompiled/vlog/smartfusion"

vlog -vlog01compat -work postlayout "${PROJECT_DIR}/designer/impl1/SlowFast_ba.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work postlayout "${PROJECT_DIR}/stimulus/SlowFast_testbench.v"

vsim -L smartfusion -L postlayout  -t 1ps -sdfmax /SlowFast_0=${PROJECT_DIR}/designer/impl1/SlowFast_ba.sdf postlayout.SlowFast_testbench
add wave /SlowFast_testbench/*
run 1000ns
