quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "C:/Microsemi_Prj/hw8/q1b"

if {[file exists ../designer/impl1/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/impl1/simulation/postlayout already exists"
} else {
   file delete -force ../designer/impl1/simulation/postlayout 
   vlib ../designer/impl1/simulation/postlayout
}
vmap postlayout ../designer/impl1/simulation/postlayout
vmap smartfusion "C:/Microsemi/Libero_SoC_v11.8/Designer/lib/modelsim/precompiled/vlog/smartfusion"

vlog -vlog01compat -work postlayout "${PROJECT_DIR}/designer/impl1/CD3FF_ba.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work postlayout "${PROJECT_DIR}/stimulus/CD3FF_testbench.v"

vsim -L smartfusion -L postlayout  -t 1ps -sdfmax /CD3FF_0=${PROJECT_DIR}/designer/impl1/CD3FF_ba.sdf postlayout.CD3FF_testbench
add wave /CD3FF_testbench/*
run 1000ns
