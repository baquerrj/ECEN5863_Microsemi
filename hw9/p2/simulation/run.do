quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "C:/Microsemi_Prj/hw9/p2"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap smartfusion "C:/Microsemi/Libero_SoC_v11.8/Designer/lib/modelsim/precompiled/vlog/smartfusion"

vcom -2008 -explicit  -work postsynth "${PROJECT_DIR}/hdl/fifo_array_type.vhd"
vcom -2008 -explicit  -work postsynth "${PROJECT_DIR}/synthesis/fifo2x8.vhd"
vcom -2008 -explicit  -work postsynth "${PROJECT_DIR}/stimulus/fifo2x8_tb.vhd"

vsim -L smartfusion -L postsynth  -t 1ps postsynth.fifo2x8_tb
add wave /fifo2x8_tb/*
run 1000ns
