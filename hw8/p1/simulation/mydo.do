quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "C:/Microsemi_Prj/hw8/p1"
source "${PROJECT_DIR}/simulation/CompileDssBfm.tcl";

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap smartfusion "C:/Microsemi/Libero_SoC_v11.8/Designer/lib/modelsim/precompiled/vlog/smartfusion"
vmap MSS_BFM_LIB "../component/Actel/SmartFusionMSS/MSS/2.5.200/mti/user_verilog/MSS_BFM_LIB"
vcom -work MSS_BFM_LIB -force_refresh
vlog -work MSS_BFM_LIB -force_refresh

vcom -2008 -explicit  -work postsynth "${PROJECT_DIR}/synthesis/CDC3FF_MSS.vhd"
vcom -2008 -explicit  -work postsynth "${PROJECT_DIR}/stimulus/CDC3FF_tb.vhd"

vsim -L smartfusion -L postsynth -L MSS_BFM_LIB  -t 1ps postsynth.CDC3FF_tb
add wave /CDC3FF_tb/*
add wave -position insertpoint sim:/cdc3ff_tb/CDC3FF_MSS_0/clk_source_MSS_0/FAB_CLK
add wave -position insertpoint sim:/cdc3ff_tb/CDC3FF_MSS_0/clk_source_MSS_0/clk_source_MSS_0_GLB
add wave /cdc3ff_tb/CDC3FF_MSS_0/CDC3FF_0/u1/Q
add wave /cdc3ff_tb/CDC3FF_MSS_0/CDC3FF_0/u2/Q
add wave /cdc3ff_tb/CDC3FF_MSS_0/CDC3FF_0/u3/Q

run 1000ns
