quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "C:/Microsemi_Prj/hw9/p1b"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap smartfusion "C:/Microsemi/Libero_SoC_v11.8/Designer/lib/modelsim/precompiled/vlog/smartfusion"

vlog -vlog01compat -work postsynth "${PROJECT_DIR}/synthesis/Handshake.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work postsynth "${PROJECT_DIR}/stimulus/Handshake_tb.v"

vsim -L smartfusion -L postsynth  -t 1ps postsynth.Handshake_tb
add wave /Handshake_tb/*
run 3000ns
