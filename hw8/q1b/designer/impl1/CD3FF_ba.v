`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


module CD3FF(
       Aclk,
       Bclk,
       reset,
       Dout
    );
input  Aclk;
input  Bclk;
input  reset;
output Dout;

    wire sync, dataA_net_1, dataLocked_net_1, dataA_RNO_net_1, 
        Dout_RNO_net_1, Aclk_c, Bclk_c, reset_c, Dout_c, 
        \synchronizer/S1_RNO_net_1 , \synchronizer/S2_0_net_1 , 
        \synchronizer/S1_net_1 , \synchronizer/sync_RNO_net_1 , 
        \synchronizer/S2_net_1 , \Bclk_pad/U0/NET1 , 
        \Aclk_pad/U0/NET1 , \reset_pad/U0/NET1 , \Dout_pad/U0/NET1 , 
        \Dout_pad/U0/NET2 , VCC, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR2A \synchronizer/sync_RNO  (.A(\synchronizer/S2_net_1 ), .B(
        reset_c), .Y(\synchronizer/sync_RNO_net_1 ));
    DFN1 \synchronizer/S2  (.D(\synchronizer/S2_0_net_1 ), .CLK(Bclk_c)
        , .Q(\synchronizer/S2_net_1 ));
    CLKSRC \Bclk_pad/U0/U1  (.A(\Bclk_pad/U0/NET1 ), .Y(Bclk_c));
    NOR2A \synchronizer/S2_0  (.A(\synchronizer/S1_net_1 ), .B(reset_c)
        , .Y(\synchronizer/S2_0_net_1 ));
    DLN1 dataLocked (.D(dataA_net_1), .G(sync), .Q(dataLocked_net_1));
    IOTRI_OB_EB \Dout_pad/U0/U1  (.D(Dout_c), .E(VCC), .DOUT(
        \Dout_pad/U0/NET1 ), .EOUT(\Dout_pad/U0/NET2 ));
    IOPAD_TRI \Dout_pad/U0/U0  (.D(\Dout_pad/U0/NET1 ), .E(
        \Dout_pad/U0/NET2 ), .PAD(Dout));
    IOPAD_IN \Bclk_pad/U0/U0  (.PAD(Bclk), .Y(\Bclk_pad/U0/NET1 ));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    CLKSRC \Aclk_pad/U0/U1  (.A(\Aclk_pad/U0/NET1 ), .Y(Aclk_c));
    IOIN_IB \reset_pad/U0/U1  (.YIN(\reset_pad/U0/NET1 ), .Y(reset_c));
    DFN1 Dout_inst_1 (.D(Dout_RNO_net_1), .CLK(Bclk_c), .Q(Dout_c));
    IOPAD_IN \Aclk_pad/U0/U0  (.PAD(Aclk), .Y(\Aclk_pad/U0/NET1 ));
    DFN1 dataA (.D(dataA_RNO_net_1), .CLK(Aclk_c), .Q(dataA_net_1));
    DFN1 \synchronizer/sync  (.D(\synchronizer/sync_RNO_net_1 ), .CLK(
        Bclk_c), .Q(sync));
    NOR2A \synchronizer/S1_RNO  (.A(Aclk_c), .B(reset_c), .Y(
        \synchronizer/S1_RNO_net_1 ));
    NOR2 dataA_RNO (.A(reset_c), .B(dataA_net_1), .Y(dataA_RNO_net_1));
    DFN1 \synchronizer/S1  (.D(\synchronizer/S1_RNO_net_1 ), .CLK(
        Bclk_c), .Q(\synchronizer/S1_net_1 ));
    NOR2A Dout_RNO (.A(dataLocked_net_1), .B(reset_c), .Y(
        Dout_RNO_net_1));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
