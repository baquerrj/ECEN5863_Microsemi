`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


module SlowFast(
       Aclk,
       Bclk,
       reset,
       Dout
    );
input  Aclk;
input  Bclk;
input  reset;
output [3:0] Dout;

    wire shift_in_net_1, \dataA[0] , \dataA[1] , \dataA[2] , 
        \dataA[3] , sync, \dataLocked[0]_net_1 , \dataLocked[1]_net_1 , 
        \dataLocked[2]_net_1 , \dataLocked[3]_net_1 , 
        \dataLocked_0[0]_net_1 , \dataLocked_0[1]_net_1 , 
        \dataLocked_0[2]_net_1 , \dataLocked_0[3]_net_1 , 
        \dataLocked_1[0]_net_1 , \dataLocked_1[1]_net_1 , 
        \dataLocked_1[2]_net_1 , \dataLocked_1[3]_net_1 , 
        \Dout_RNO[0]_net_1 , \Dout_RNO[1]_net_1 , \Dout_RNO[2]_net_1 , 
        \Dout_RNO[3]_net_1 , shift_in_RNO_net_1, Aclk_c, Bclk_c, 
        reset_c, \Dout_c[0] , \Dout_c[1] , \Dout_c[2] , \Dout_c[3] , 
        \synchronizer/S1_RNO_net_1 , \synchronizer/S2_RNO_net_1 , 
        \synchronizer/S1_net_1 , \synchronizer/sync_RNO_net_1 , 
        \synchronizer/S2_net_1 , \Bclk_pad/U0/NET1 , 
        \Dout_pad[3]/U0/NET1 , \Dout_pad[3]/U0/NET2 , 
        \Aclk_pad/U0/NET1 , \Dout_pad[1]/U0/NET1 , 
        \Dout_pad[1]/U0/NET2 , \reset_pad/U0/NET1 , 
        \Dout_pad[2]/U0/NET1 , \Dout_pad[2]/U0/NET2 , 
        \Dout_pad[0]/U0/NET1 , \Dout_pad[0]/U0/NET2 , VCC, AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR2A \Dout_RNO[1]  (.A(\dataLocked[1]_net_1 ), .B(reset_c), .Y(
        \Dout_RNO[1]_net_1 ));
    NOR2 shift_in_RNO (.A(reset_c), .B(shift_in_net_1), .Y(
        shift_in_RNO_net_1));
    MX2 \dataLocked_0[0]  (.A(\dataLocked[0]_net_1 ), .B(\dataA[0] ), 
        .S(sync), .Y(\dataLocked_0[0]_net_1 ));
    DFN1 \shiftRegister/data_out[1]  (.D(\dataA[0] ), .CLK(Aclk_c), .Q(
        \dataA[1] ));
    IOPAD_IN \Aclk_pad/U0/U0  (.PAD(Aclk), .Y(\Aclk_pad/U0/NET1 ));
    DFN1 \dataLocked[0]  (.D(\dataLocked_1[0]_net_1 ), .CLK(Aclk_c), 
        .Q(\dataLocked[0]_net_1 ));
    DFN1 \shiftRegister/data_out[0]  (.D(shift_in_net_1), .CLK(Aclk_c), 
        .Q(\dataA[0] ));
    MX2 \dataLocked_0[3]  (.A(\dataLocked[3]_net_1 ), .B(\dataA[3] ), 
        .S(sync), .Y(\dataLocked_0[3]_net_1 ));
    NOR2A \Dout_RNO[3]  (.A(\dataLocked[3]_net_1 ), .B(reset_c), .Y(
        \Dout_RNO[3]_net_1 ));
    DFN1 \dataLocked[3]  (.D(\dataLocked_1[3]_net_1 ), .CLK(Aclk_c), 
        .Q(\dataLocked[3]_net_1 ));
    DFN1 \synchronizer/S1  (.D(\synchronizer/S1_RNO_net_1 ), .CLK(
        Aclk_c), .Q(\synchronizer/S1_net_1 ));
    DFN1 \Dout[2]  (.D(\Dout_RNO[2]_net_1 ), .CLK(Bclk_c), .Q(
        \Dout_c[2] ));
    IOTRI_OB_EB \Dout_pad[3]/U0/U1  (.D(\Dout_c[3] ), .E(VCC), .DOUT(
        \Dout_pad[3]/U0/NET1 ), .EOUT(\Dout_pad[3]/U0/NET2 ));
    IOTRI_OB_EB \Dout_pad[1]/U0/U1  (.D(\Dout_c[1] ), .E(VCC), .DOUT(
        \Dout_pad[1]/U0/NET1 ), .EOUT(\Dout_pad[1]/U0/NET2 ));
    NOR2A \synchronizer/S1_RNO  (.A(Bclk_c), .B(reset_c), .Y(
        \synchronizer/S1_RNO_net_1 ));
    DFN1 \dataLocked[2]  (.D(\dataLocked_1[2]_net_1 ), .CLK(Aclk_c), 
        .Q(\dataLocked[2]_net_1 ));
    MX2 \dataLocked_0[1]  (.A(\dataLocked[1]_net_1 ), .B(\dataA[1] ), 
        .S(sync), .Y(\dataLocked_0[1]_net_1 ));
    NOR2A \Dout_RNO[0]  (.A(\dataLocked[0]_net_1 ), .B(reset_c), .Y(
        \Dout_RNO[0]_net_1 ));
    DFN1 shift_in (.D(shift_in_RNO_net_1), .CLK(Aclk_c), .Q(
        shift_in_net_1));
    NOR2A \synchronizer/sync_RNO  (.A(\synchronizer/S2_net_1 ), .B(
        reset_c), .Y(\synchronizer/sync_RNO_net_1 ));
    IOPAD_TRI \Dout_pad[3]/U0/U0  (.D(\Dout_pad[3]/U0/NET1 ), .E(
        \Dout_pad[3]/U0/NET2 ), .PAD(Dout[3]));
    IOPAD_TRI \Dout_pad[1]/U0/U0  (.D(\Dout_pad[1]/U0/NET1 ), .E(
        \Dout_pad[1]/U0/NET2 ), .PAD(Dout[1]));
    DFN1 \Dout[3]  (.D(\Dout_RNO[3]_net_1 ), .CLK(Bclk_c), .Q(
        \Dout_c[3] ));
    CLKSRC \Bclk_pad/U0/U1  (.A(\Bclk_pad/U0/NET1 ), .Y(Bclk_c));
    IOTRI_OB_EB \Dout_pad[0]/U0/U1  (.D(\Dout_c[0] ), .E(VCC), .DOUT(
        \Dout_pad[0]/U0/NET1 ), .EOUT(\Dout_pad[0]/U0/NET2 ));
    DFN1 \synchronizer/sync  (.D(\synchronizer/sync_RNO_net_1 ), .CLK(
        Aclk_c), .Q(sync));
    IOIN_IB \reset_pad/U0/U1  (.YIN(\reset_pad/U0/NET1 ), .Y(reset_c));
    NOR2A \synchronizer/S2_RNO  (.A(\synchronizer/S1_net_1 ), .B(
        reset_c), .Y(\synchronizer/S2_RNO_net_1 ));
    IOTRI_OB_EB \Dout_pad[2]/U0/U1  (.D(\Dout_c[2] ), .E(VCC), .DOUT(
        \Dout_pad[2]/U0/NET1 ), .EOUT(\Dout_pad[2]/U0/NET2 ));
    IOPAD_IN \Bclk_pad/U0/U0  (.PAD(Bclk), .Y(\Bclk_pad/U0/NET1 ));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    NOR2A \Dout_RNO[2]  (.A(\dataLocked[2]_net_1 ), .B(reset_c), .Y(
        \Dout_RNO[2]_net_1 ));
    NOR2A \dataLocked_1[3]  (.A(\dataLocked_0[3]_net_1 ), .B(reset_c), 
        .Y(\dataLocked_1[3]_net_1 ));
    IOPAD_TRI \Dout_pad[0]/U0/U0  (.D(\Dout_pad[0]/U0/NET1 ), .E(
        \Dout_pad[0]/U0/NET2 ), .PAD(Dout[0]));
    MX2 \dataLocked_0[2]  (.A(\dataLocked[2]_net_1 ), .B(\dataA[2] ), 
        .S(sync), .Y(\dataLocked_0[2]_net_1 ));
    DFN1 \Dout[1]  (.D(\Dout_RNO[1]_net_1 ), .CLK(Bclk_c), .Q(
        \Dout_c[1] ));
    NOR2A \dataLocked_1[1]  (.A(\dataLocked_0[1]_net_1 ), .B(reset_c), 
        .Y(\dataLocked_1[1]_net_1 ));
    DFN1 \shiftRegister/data_out[2]  (.D(\dataA[1] ), .CLK(Aclk_c), .Q(
        \dataA[2] ));
    IOPAD_TRI \Dout_pad[2]/U0/U0  (.D(\Dout_pad[2]/U0/NET1 ), .E(
        \Dout_pad[2]/U0/NET2 ), .PAD(Dout[2]));
    DFN1 \Dout[0]  (.D(\Dout_RNO[0]_net_1 ), .CLK(Bclk_c), .Q(
        \Dout_c[0] ));
    DFN1 \dataLocked[1]  (.D(\dataLocked_1[1]_net_1 ), .CLK(Aclk_c), 
        .Q(\dataLocked[1]_net_1 ));
    CLKSRC \Aclk_pad/U0/U1  (.A(\Aclk_pad/U0/NET1 ), .Y(Aclk_c));
    NOR2A \dataLocked_1[2]  (.A(\dataLocked_0[2]_net_1 ), .B(reset_c), 
        .Y(\dataLocked_1[2]_net_1 ));
    DFN1 \synchronizer/S2  (.D(\synchronizer/S2_RNO_net_1 ), .CLK(
        Aclk_c), .Q(\synchronizer/S2_net_1 ));
    NOR2A \dataLocked_1[0]  (.A(\dataLocked_0[0]_net_1 ), .B(reset_c), 
        .Y(\dataLocked_1[0]_net_1 ));
    DFN1 \shiftRegister/data_out[3]  (.D(\dataA[2] ), .CLK(Aclk_c), .Q(
        \dataA[3] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
