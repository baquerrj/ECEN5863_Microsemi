`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


module skewedClock(
       CLK,
       PRE,
       sQ0,
       sQ1,
       sQ2,
       sQ3
    );
input  CLK;
input  PRE;
output sQ0;
output sQ1;
output sQ2;
output sQ3;

    wire INV_0_Y, INV_1_Y, INV_3_Y, INV_2_Y, CLK_c, PRE_c, sQ0_net_1, 
        sQ1_net_1, sQ2_net_1, sQ3_c, \sQ3_pad/U0/NET1 , 
        \sQ3_pad/U0/NET2 , \PRE_pad/U0/NET1 , \sQ1_pad/U0/NET1 , 
        \sQ1_pad/U0/NET2 , \sQ0_pad/U0/NET1 , \sQ0_pad/U0/NET2 , 
        \sQ2_pad/U0/NET1 , \sQ2_pad/U0/NET2 , VCC, \CLK_pad/U0/NET1 , 
        GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOIN_IB \PRE_pad/U0/U1  (.YIN(\PRE_pad/U0/NET1 ), .Y(PRE_c));
    DFN1P0 DFN1P0_0 (.D(INV_0_Y), .CLK(CLK_c), .PRE(PRE_c), .Q(
        sQ0_net_1));
    IOTRI_OB_EB \sQ2_pad/U0/U1  (.D(sQ2_net_1), .E(VCC), .DOUT(
        \sQ2_pad/U0/NET1 ), .EOUT(\sQ2_pad/U0/NET2 ));
    IOTRI_OB_EB \sQ1_pad/U0/U1  (.D(sQ1_net_1), .E(VCC), .DOUT(
        \sQ1_pad/U0/NET1 ), .EOUT(\sQ1_pad/U0/NET2 ));
    INV INV_0 (.A(sQ0_net_1), .Y(INV_0_Y));
    DFN1P0 DFN1P0_1 (.D(INV_1_Y), .CLK(sQ0_net_1), .PRE(PRE_c), .Q(
        sQ1_net_1));
    IOPAD_TRI \sQ2_pad/U0/U0  (.D(\sQ2_pad/U0/NET1 ), .E(
        \sQ2_pad/U0/NET2 ), .PAD(sQ2));
    IOPAD_IN \CLK_pad/U0/U0  (.PAD(CLK), .Y(\CLK_pad/U0/NET1 ));
    IOPAD_TRI \sQ1_pad/U0/U0  (.D(\sQ1_pad/U0/NET1 ), .E(
        \sQ1_pad/U0/NET2 ), .PAD(sQ1));
    IOTRI_OB_EB \sQ3_pad/U0/U1  (.D(sQ3_c), .E(VCC), .DOUT(
        \sQ3_pad/U0/NET1 ), .EOUT(\sQ3_pad/U0/NET2 ));
    IOPAD_IN \PRE_pad/U0/U0  (.PAD(PRE), .Y(\PRE_pad/U0/NET1 ));
    INV INV_3 (.A(sQ2_net_1), .Y(INV_3_Y));
    DFN1P0 DFN1P0_2 (.D(INV_3_Y), .CLK(sQ1_net_1), .PRE(PRE_c), .Q(
        sQ2_net_1));
    IOTRI_OB_EB \sQ0_pad/U0/U1  (.D(sQ0_net_1), .E(VCC), .DOUT(
        \sQ0_pad/U0/NET1 ), .EOUT(\sQ0_pad/U0/NET2 ));
    IOPAD_TRI \sQ0_pad/U0/U0  (.D(\sQ0_pad/U0/NET1 ), .E(
        \sQ0_pad/U0/NET2 ), .PAD(sQ0));
    INV INV_1 (.A(sQ1_net_1), .Y(INV_1_Y));
    IOPAD_TRI \sQ3_pad/U0/U0  (.D(\sQ3_pad/U0/NET1 ), .E(
        \sQ3_pad/U0/NET2 ), .PAD(sQ3));
    INV INV_2 (.A(sQ3_c), .Y(INV_2_Y));
    DFN1P0 DFN1P0_3 (.D(INV_2_Y), .CLK(sQ2_net_1), .PRE(PRE_c), .Q(
        sQ3_c));
    IOIN_IB \CLK_pad/U0/U1  (.YIN(\CLK_pad/U0/NET1 ), .Y(CLK_c));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
