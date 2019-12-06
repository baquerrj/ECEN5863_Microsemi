quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "C:/Microsemi_Prj/hw7/Counter"

if {[file exists ../designer/impl1/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/impl1/simulation/postlayout already exists"
} else {
   file delete -force ../designer/impl1/simulation/postlayout 
   vlib ../designer/impl1/simulation/postlayout
}
vmap postlayout ../designer/impl1/simulation/postlayout
vmap smartfusion "C:/Microsemi/Libero_SoC_v11.8/Designer/lib/modelsim/precompiled/vlog/smartfusion"

vcom -2008 -explicit  -work postlayout "${PROJECT_DIR}/designer/impl1/Counter_ba.vhd"
vcom -2008 -explicit  -work postlayout "${PROJECT_DIR}/stimulus/Counter_tb.vhd"

vsim -L smartfusion -L postlayout  -t 1ps -sdfmax /Counter_0=${PROJECT_DIR}/designer/impl1/Counter_ba.sdf postlayout.Counter_tb
add wave /Counter_tb/*
run 1000ns
