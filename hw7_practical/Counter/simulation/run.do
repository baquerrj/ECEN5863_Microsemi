quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "C:/Microsemi_Prj/hw7_practical/Counter"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap smartfusion "C:/Microsemi/Libero_SoC_v11.8/Designer/lib/modelsim/precompiled/vlog/smartfusion"

vcom -2008 -explicit  -work postsynth "${PROJECT_DIR}/synthesis/Counter.vhd"
vcom -2008 -explicit  -work postsynth "${PROJECT_DIR}/stimulus/Counter_tb.vhd"

vsim -L smartfusion -L postsynth  -t 1ps postsynth.Counter_tb
add wave /Counter_tb/*
run 1000ns
