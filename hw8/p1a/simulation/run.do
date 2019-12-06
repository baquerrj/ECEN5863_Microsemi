quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "C:/Microsemi_Prj/hw8/p1a"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap smartfusion "C:/Microsemi/Libero_SoC_v11.8/Designer/lib/modelsim/precompiled/vlog/smartfusion"

vcom -2008 -explicit  -work postsynth "${PROJECT_DIR}/synthesis/CD3FF.vhd"
vcom -2008 -explicit  -work postsynth "${PROJECT_DIR}/stimulus/CD3FF_testbench.vhd"

vsim -L smartfusion -L postsynth  -t 1ps postsynth.CD3FF_testbench
add wave /CD3FF_testbench/*
run 1000ns
