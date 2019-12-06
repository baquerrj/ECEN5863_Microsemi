`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


module myCounter(
       CLK,
       RESET,
       Q
    );
input  CLK;
input  RESET;
output [15:0] Q;

    wire Q_n1_net_1, Q_n2_net_1, Q_n3_net_1, Q_n4_net_1, Q_n5_net_1, 
        Q_n6_net_1, Q_n7_net_1, Q_n8_net_1, Q_n9_net_1, Q_n10_net_1, 
        Q_n11_net_1, Q_n12_net_1, Q_n13_net_1, Q_n14_net_1, 
        Q_n15_net_1, Q_n0_net_1, N_65, Q_c13_net_1, Q_c11_net_1, 
        Q_c9_net_1, Q_c6_net_1, Q_c5_net_1, Q_c4_net_1, Q_c3_net_1, 
        Q_c2_net_1, Q_c1_net_1, CLK_c, RESET_c, \Q_c[0] , \Q_c[1] , 
        \Q_c[2] , \Q_c[3] , \Q_c[4] , \Q_c[5] , \Q_c[6] , \Q_c[7] , 
        \Q_c[8] , \Q_c[9] , \Q_c[10] , \Q_c[11] , \Q_c[12] , \Q_c[13] , 
        \Q_c[14] , \Q_c[15] , Q_n13_tz_net_1, Q_n11_tz_net_1, 
        Q_n9_tz_net_1, Q_c8_m4_0_a2_0_net_1, Q_c8_m4_0_a2_2_net_1, 
        Q_c8_m4_0_a2_4_net_1, Q_c8_m4_0_a2_5_net_1, Q_32_0_net_1, 
        Q_c7_net_1, \Q_pad[12]/U0/NET1 , \Q_pad[12]/U0/NET2 , 
        \Q_pad[4]/U0/NET1 , \Q_pad[4]/U0/NET2 , \Q_pad[9]/U0/NET1 , 
        \Q_pad[9]/U0/NET2 , \Q_pad[2]/U0/NET1 , \Q_pad[2]/U0/NET2 , 
        \Q_pad[14]/U0/NET1 , \Q_pad[14]/U0/NET2 , \Q_pad[10]/U0/NET1 , 
        \Q_pad[10]/U0/NET2 , \Q_pad[5]/U0/NET1 , \Q_pad[5]/U0/NET2 , 
        \Q_pad[6]/U0/NET1 , \Q_pad[6]/U0/NET2 , \Q_pad[15]/U0/NET1 , 
        \Q_pad[15]/U0/NET2 , \RESET_pad/U0/NET1 , \Q_pad[8]/U0/NET1 , 
        \Q_pad[8]/U0/NET2 , \Q_pad[3]/U0/NET1 , \Q_pad[3]/U0/NET2 , 
        \Q_pad[1]/U0/NET1 , \Q_pad[1]/U0/NET2 , \Q_pad[11]/U0/NET1 , 
        \Q_pad[11]/U0/NET2 , \Q_pad[0]/U0/NET1 , \Q_pad[0]/U0/NET2 , 
        \Q_pad[13]/U0/NET1 , \Q_pad[13]/U0/NET2 , \Q_pad[7]/U0/NET1 , 
        \Q_pad[7]/U0/NET2 , VCC, \CLK_pad/U0/NET1 , AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    XA1B Q_n4 (.A(\Q_c[4] ), .B(Q_c3_net_1), .C(RESET_c), .Y(
        Q_n4_net_1));
    NOR2B Q_c6 (.A(Q_c5_net_1), .B(\Q_c[6] ), .Y(Q_c6_net_1));
    NOR2B Q_c5 (.A(Q_c4_net_1), .B(\Q_c[5] ), .Y(Q_c5_net_1));
    IOTRI_OB_EB \Q_pad[14]/U0/U1  (.D(\Q_c[14] ), .E(VCC), .DOUT(
        \Q_pad[14]/U0/NET1 ), .EOUT(\Q_pad[14]/U0/NET2 ));
    XA1B Q_n7 (.A(\Q_c[7] ), .B(Q_c6_net_1), .C(RESET_c), .Y(
        Q_n7_net_1));
    NOR2B Q_c4 (.A(Q_c3_net_1), .B(\Q_c[4] ), .Y(Q_c4_net_1));
    DFN1 \Q[11]  (.D(Q_n11_net_1), .CLK(CLK_c), .Q(\Q_c[11] ));
    IOPAD_TRI \Q_pad[15]/U0/U0  (.D(\Q_pad[15]/U0/NET1 ), .E(
        \Q_pad[15]/U0/NET2 ), .PAD(Q[15]));
    IOPAD_TRI \Q_pad[11]/U0/U0  (.D(\Q_pad[11]/U0/NET1 ), .E(
        \Q_pad[11]/U0/NET2 ), .PAD(Q[11]));
    IOTRI_OB_EB \Q_pad[0]/U0/U1  (.D(\Q_c[0] ), .E(VCC), .DOUT(
        \Q_pad[0]/U0/NET1 ), .EOUT(\Q_pad[0]/U0/NET2 ));
    NOR2B Q_c7 (.A(Q_c6_net_1), .B(\Q_c[7] ), .Y(Q_c7_net_1));
    DFN1 \Q[1]  (.D(Q_n1_net_1), .CLK(CLK_c), .Q(\Q_c[1] ));
    IOTRI_OB_EB \Q_pad[7]/U0/U1  (.D(\Q_c[7] ), .E(VCC), .DOUT(
        \Q_pad[7]/U0/NET1 ), .EOUT(\Q_pad[7]/U0/NET2 ));
    IOPAD_TRI \Q_pad[10]/U0/U0  (.D(\Q_pad[10]/U0/NET1 ), .E(
        \Q_pad[10]/U0/NET2 ), .PAD(Q[10]));
    XA1B Q_n8 (.A(\Q_c[8] ), .B(Q_c7_net_1), .C(RESET_c), .Y(
        Q_n8_net_1));
    NOR2 Q_n0 (.A(\Q_c[0] ), .B(RESET_c), .Y(Q_n0_net_1));
    NOR2A Q_n11 (.A(Q_n11_tz_net_1), .B(RESET_c), .Y(Q_n11_net_1));
    IOTRI_OB_EB \Q_pad[1]/U0/U1  (.D(\Q_c[1] ), .E(VCC), .DOUT(
        \Q_pad[1]/U0/NET1 ), .EOUT(\Q_pad[1]/U0/NET2 ));
    DFN1 \Q[5]  (.D(Q_n5_net_1), .CLK(CLK_c), .Q(\Q_c[5] ));
    IOPAD_TRI \Q_pad[3]/U0/U0  (.D(\Q_pad[3]/U0/NET1 ), .E(
        \Q_pad[3]/U0/NET2 ), .PAD(Q[3]));
    XA1B Q_n10 (.A(\Q_c[10] ), .B(Q_c9_net_1), .C(RESET_c), .Y(
        Q_n10_net_1));
    IOTRI_OB_EB \Q_pad[2]/U0/U1  (.D(\Q_c[2] ), .E(VCC), .DOUT(
        \Q_pad[2]/U0/NET1 ), .EOUT(\Q_pad[2]/U0/NET2 ));
    DFN1 \Q[10]  (.D(Q_n10_net_1), .CLK(CLK_c), .Q(\Q_c[10] ));
    IOPAD_TRI \Q_pad[12]/U0/U0  (.D(\Q_pad[12]/U0/NET1 ), .E(
        \Q_pad[12]/U0/NET2 ), .PAD(Q[12]));
    IOPAD_TRI \Q_pad[6]/U0/U0  (.D(\Q_pad[6]/U0/NET1 ), .E(
        \Q_pad[6]/U0/NET2 ), .PAD(Q[6]));
    DFN1 \Q[0]  (.D(Q_n0_net_1), .CLK(CLK_c), .Q(\Q_c[0] ));
    NOR2A Q_n13 (.A(Q_n13_tz_net_1), .B(RESET_c), .Y(Q_n13_net_1));
    IOTRI_OB_EB \Q_pad[5]/U0/U1  (.D(\Q_c[5] ), .E(VCC), .DOUT(
        \Q_pad[5]/U0/NET1 ), .EOUT(\Q_pad[5]/U0/NET2 ));
    DFN1 \Q[7]  (.D(Q_n7_net_1), .CLK(CLK_c), .Q(\Q_c[7] ));
    IOPAD_TRI \Q_pad[14]/U0/U0  (.D(\Q_pad[14]/U0/NET1 ), .E(
        \Q_pad[14]/U0/NET2 ), .PAD(Q[14]));
    NOR3C Q_c13 (.A(\Q_c[12] ), .B(Q_c11_net_1), .C(\Q_c[13] ), .Y(
        Q_c13_net_1));
    IOTRI_OB_EB \Q_pad[4]/U0/U1  (.D(\Q_c[4] ), .E(VCC), .DOUT(
        \Q_pad[4]/U0/NET1 ), .EOUT(\Q_pad[4]/U0/NET2 ));
    XA1B Q_n1 (.A(\Q_c[0] ), .B(\Q_c[1] ), .C(RESET_c), .Y(Q_n1_net_1));
    AX1C Q_n9_tz (.A(Q_c8_m4_0_a2_4_net_1), .B(Q_c8_m4_0_a2_5_net_1), 
        .C(\Q_c[9] ), .Y(Q_n9_tz_net_1));
    NOR2B Q_c1 (.A(\Q_c[0] ), .B(\Q_c[1] ), .Y(Q_c1_net_1));
    IOTRI_OB_EB \Q_pad[8]/U0/U1  (.D(\Q_c[8] ), .E(VCC), .DOUT(
        \Q_pad[8]/U0/NET1 ), .EOUT(\Q_pad[8]/U0/NET2 ));
    IOTRI_OB_EB \Q_pad[13]/U0/U1  (.D(\Q_c[13] ), .E(VCC), .DOUT(
        \Q_pad[13]/U0/NET1 ), .EOUT(\Q_pad[13]/U0/NET2 ));
    IOPAD_TRI \Q_pad[0]/U0/U0  (.D(\Q_pad[0]/U0/NET1 ), .E(
        \Q_pad[0]/U0/NET2 ), .PAD(Q[0]));
    NOR2A Q_32_0 (.A(\Q_c[14] ), .B(RESET_c), .Y(Q_32_0_net_1));
    DFN1 \Q[3]  (.D(Q_n3_net_1), .CLK(CLK_c), .Q(\Q_c[3] ));
    XA1B Q_n3 (.A(\Q_c[3] ), .B(Q_c2_net_1), .C(RESET_c), .Y(
        Q_n3_net_1));
    CLKSRC \CLK_pad/U0/U1  (.A(\CLK_pad/U0/NET1 ), .Y(CLK_c));
    IOPAD_TRI \Q_pad[7]/U0/U0  (.D(\Q_pad[7]/U0/NET1 ), .E(
        \Q_pad[7]/U0/NET2 ), .PAD(Q[7]));
    IOIN_IB \RESET_pad/U0/U1  (.YIN(\RESET_pad/U0/NET1 ), .Y(RESET_c));
    IOTRI_OB_EB \Q_pad[9]/U0/U1  (.D(\Q_c[9] ), .E(VCC), .DOUT(
        \Q_pad[9]/U0/NET1 ), .EOUT(\Q_pad[9]/U0/NET2 ));
    NOR2B Q_c3 (.A(Q_c2_net_1), .B(\Q_c[3] ), .Y(Q_c3_net_1));
    DFN1 \Q[6]  (.D(Q_n6_net_1), .CLK(CLK_c), .Q(\Q_c[6] ));
    DFN1 \Q[9]  (.D(Q_n9_net_1), .CLK(CLK_c), .Q(\Q_c[9] ));
    IOPAD_TRI \Q_pad[1]/U0/U0  (.D(\Q_pad[1]/U0/NET1 ), .E(
        \Q_pad[1]/U0/NET2 ), .PAD(Q[1]));
    XA1B Q_n14 (.A(\Q_c[14] ), .B(Q_c13_net_1), .C(RESET_c), .Y(
        Q_n14_net_1));
    NOR3C Q_c8_m4_0_a2_4 (.A(\Q_c[3] ), .B(\Q_c[4] ), .C(
        Q_c8_m4_0_a2_2_net_1), .Y(Q_c8_m4_0_a2_4_net_1));
    DFN1 \Q[14]  (.D(Q_n14_net_1), .CLK(CLK_c), .Q(\Q_c[14] ));
    DFN1 \Q[13]  (.D(Q_n13_net_1), .CLK(CLK_c), .Q(\Q_c[13] ));
    IOPAD_TRI \Q_pad[2]/U0/U0  (.D(\Q_pad[2]/U0/NET1 ), .E(
        \Q_pad[2]/U0/NET2 ), .PAD(Q[2]));
    IOPAD_IN \RESET_pad/U0/U0  (.PAD(RESET), .Y(\RESET_pad/U0/NET1 ));
    NOR3C Q_c11 (.A(\Q_c[10] ), .B(Q_c9_net_1), .C(\Q_c[11] ), .Y(
        Q_c11_net_1));
    DFN1 \Q[2]  (.D(Q_n2_net_1), .CLK(CLK_c), .Q(\Q_c[2] ));
    IOPAD_IN \CLK_pad/U0/U0  (.PAD(CLK), .Y(\CLK_pad/U0/NET1 ));
    IOPAD_TRI \Q_pad[5]/U0/U0  (.D(\Q_pad[5]/U0/NET1 ), .E(
        \Q_pad[5]/U0/NET2 ), .PAD(Q[5]));
    NOR2B Q_c8_m4_0_a2_2 (.A(\Q_c[2] ), .B(\Q_c[6] ), .Y(
        Q_c8_m4_0_a2_2_net_1));
    IOPAD_TRI \Q_pad[4]/U0/U0  (.D(\Q_pad[4]/U0/NET1 ), .E(
        \Q_pad[4]/U0/NET2 ), .PAD(Q[4]));
    IOPAD_TRI \Q_pad[13]/U0/U0  (.D(\Q_pad[13]/U0/NET1 ), .E(
        \Q_pad[13]/U0/NET2 ), .PAD(Q[13]));
    DFN1 \Q[8]  (.D(Q_n8_net_1), .CLK(CLK_c), .Q(\Q_c[8] ));
    IOTRI_OB_EB \Q_pad[15]/U0/U1  (.D(\Q_c[15] ), .E(VCC), .DOUT(
        \Q_pad[15]/U0/NET1 ), .EOUT(\Q_pad[15]/U0/NET2 ));
    DFN1 \Q[12]  (.D(Q_n12_net_1), .CLK(CLK_c), .Q(\Q_c[12] ));
    IOPAD_TRI \Q_pad[8]/U0/U0  (.D(\Q_pad[8]/U0/NET1 ), .E(
        \Q_pad[8]/U0/NET2 ), .PAD(Q[8]));
    IOTRI_OB_EB \Q_pad[11]/U0/U1  (.D(\Q_c[11] ), .E(VCC), .DOUT(
        \Q_pad[11]/U0/NET1 ), .EOUT(\Q_pad[11]/U0/NET2 ));
    DFN1 \Q[15]  (.D(Q_n15_net_1), .CLK(CLK_c), .Q(\Q_c[15] ));
    IOTRI_OB_EB \Q_pad[3]/U0/U1  (.D(\Q_c[3] ), .E(VCC), .DOUT(
        \Q_pad[3]/U0/NET1 ), .EOUT(\Q_pad[3]/U0/NET2 ));
    NOR2B Q_c8_m4_0_a2_0 (.A(\Q_c[8] ), .B(\Q_c[5] ), .Y(
        Q_c8_m4_0_a2_0_net_1));
    DFN1 \Q[4]  (.D(Q_n4_net_1), .CLK(CLK_c), .Q(\Q_c[4] ));
    XA1B Q_n2 (.A(\Q_c[2] ), .B(Q_c1_net_1), .C(RESET_c), .Y(
        Q_n2_net_1));
    AX1C Q_n11_tz (.A(\Q_c[10] ), .B(Q_c9_net_1), .C(\Q_c[11] ), .Y(
        Q_n11_tz_net_1));
    IOTRI_OB_EB \Q_pad[10]/U0/U1  (.D(\Q_c[10] ), .E(VCC), .DOUT(
        \Q_pad[10]/U0/NET1 ), .EOUT(\Q_pad[10]/U0/NET2 ));
    IOPAD_TRI \Q_pad[9]/U0/U0  (.D(\Q_pad[9]/U0/NET1 ), .E(
        \Q_pad[9]/U0/NET2 ), .PAD(Q[9]));
    NOR2A Q_33 (.A(\Q_c[15] ), .B(RESET_c), .Y(N_65));
    IOTRI_OB_EB \Q_pad[6]/U0/U1  (.D(\Q_c[6] ), .E(VCC), .DOUT(
        \Q_pad[6]/U0/NET1 ), .EOUT(\Q_pad[6]/U0/NET2 ));
    NOR2B Q_c2 (.A(Q_c1_net_1), .B(\Q_c[2] ), .Y(Q_c2_net_1));
    AX1C Q_n15 (.A(Q_c13_net_1), .B(Q_32_0_net_1), .C(N_65), .Y(
        Q_n15_net_1));
    NOR3C Q_c8_m4_0_a2_5 (.A(Q_c8_m4_0_a2_0_net_1), .B(\Q_c[7] ), .C(
        Q_c1_net_1), .Y(Q_c8_m4_0_a2_5_net_1));
    NOR2A Q_n9 (.A(Q_n9_tz_net_1), .B(RESET_c), .Y(Q_n9_net_1));
    IOTRI_OB_EB \Q_pad[12]/U0/U1  (.D(\Q_c[12] ), .E(VCC), .DOUT(
        \Q_pad[12]/U0/NET1 ), .EOUT(\Q_pad[12]/U0/NET2 ));
    XA1B Q_n6 (.A(\Q_c[6] ), .B(Q_c5_net_1), .C(RESET_c), .Y(
        Q_n6_net_1));
    AX1C Q_n13_tz (.A(\Q_c[12] ), .B(Q_c11_net_1), .C(\Q_c[13] ), .Y(
        Q_n13_tz_net_1));
    XA1B Q_n12 (.A(\Q_c[12] ), .B(Q_c11_net_1), .C(RESET_c), .Y(
        Q_n12_net_1));
    XA1B Q_n5 (.A(\Q_c[5] ), .B(Q_c4_net_1), .C(RESET_c), .Y(
        Q_n5_net_1));
    NOR3C Q_c9 (.A(Q_c8_m4_0_a2_4_net_1), .B(Q_c8_m4_0_a2_5_net_1), .C(
        \Q_c[9] ), .Y(Q_c9_net_1));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
