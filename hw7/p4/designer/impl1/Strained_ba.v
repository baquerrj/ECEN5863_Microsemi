`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


module Strained(
       clk,
       reset,
       TC
    );
input  clk;
input  reset;
output TC;

    wire \Q[0]_net_1 , \Q[1]_net_1 , \Q[2]_net_1 , \Q[3]_net_1 , 
        \Q[4]_net_1 , \Q[5]_net_1 , \Q[6]_net_1 , \Q[7]_net_1 , 
        \Q[8]_net_1 , \Q[9]_net_1 , \Q[10]_net_1 , \Q[11]_net_1 , 
        \Q[12]_net_1 , \Q[13]_net_1 , \Q[14]_net_1 , \Q[15]_net_1 , 
        \Q[16]_net_1 , \Q[17]_net_1 , \Q[18]_net_1 , \Q[19]_net_1 , 
        \Q[20]_net_1 , \Q[21]_net_1 , \Q[22]_net_1 , \Q[23]_net_1 , 
        Q_n1_net_1, Q_n2_net_1, Q_n3_net_1, Q_n4_net_1, Q_n5_net_1, 
        Q_n6_net_1, Q_n7_net_1, Q_n8_net_1, Q_n9_net_1, Q_n10_net_1, 
        Q_n11_net_1, Q_n12_net_1, Q_n13_net_1, Q_n14_net_1, 
        Q_n15_net_1, Q_n16_net_1, Q_n17_net_1, Q_n18_net_1, 
        Q_n19_net_1, Q_n20_net_1, Q_n21_net_1, Q_n22_net_1, 
        Q_n23_net_1, Q_n0_net_1, Q_c22_net_1, Q_c21_net_1, Q_c20_net_1, 
        Q_c19_net_1, Q_c18_net_1, Q_c17_net_1, Q_c16_net_1, 
        Q_c15_net_1, Q_c14_net_1, Q_c13, Q_c12_net_1, Q_c11_net_1, 
        Q_c10_net_1, Q_c9_net_1, Q_c8_net_1, Q_c7_net_1, Q_c6_net_1, 
        Q_c5_net_1, Q_c4_net_1, Q_c3_net_1, Q_c2_net_1, Q_c1_net_1, 
        clk_c, reset_c, Q_c23_c, Q_c13_m6_0_a2_2_net_1, 
        Q_c13_m6_0_a2_4_net_1, Q_c13_m6_0_a2_5_net_1, 
        Q_c13_m6_0_a2_6_net_1, Q_c23_m6_0_a2_1_net_1, 
        Q_c23_m6_0_a2_2_net_1, Q_c23_m6_0_a2_4_net_1, 
        Q_c23_m6_0_a2_6_net_1, Q_c23_m6_0_a2_7_net_1, 
        \reset_pad/U0/NET1 , \TC_pad/U0/NET1 , \TC_pad/U0/NET2 , VCC, 
        \clk_pad/U0/NET1 , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    XA1B Q_n4 (.A(\Q[4]_net_1 ), .B(Q_c3_net_1), .C(reset_c), .Y(
        Q_n4_net_1));
    NOR2B Q_c6 (.A(Q_c5_net_1), .B(\Q[6]_net_1 ), .Y(Q_c6_net_1));
    NOR2B Q_c5 (.A(Q_c4_net_1), .B(\Q[5]_net_1 ), .Y(Q_c5_net_1));
    NOR2B Q_c22 (.A(Q_c21_net_1), .B(\Q[22]_net_1 ), .Y(Q_c22_net_1));
    XA1B Q_n7 (.A(\Q[7]_net_1 ), .B(Q_c6_net_1), .C(reset_c), .Y(
        Q_n7_net_1));
    NOR2B Q_c4 (.A(Q_c3_net_1), .B(\Q[4]_net_1 ), .Y(Q_c4_net_1));
    NOR2B Q_c15 (.A(Q_c14_net_1), .B(\Q[15]_net_1 ), .Y(Q_c15_net_1));
    DFN1 \Q[11]  (.D(Q_n11_net_1), .CLK(clk_c), .Q(\Q[11]_net_1 ));
    NOR2B Q_c16 (.A(Q_c15_net_1), .B(\Q[16]_net_1 ), .Y(Q_c16_net_1));
    NOR3C Q_c13_m6_0_a2_6 (.A(\Q[6]_net_1 ), .B(\Q[7]_net_1 ), .C(
        Q_c13_m6_0_a2_4_net_1), .Y(Q_c13_m6_0_a2_6_net_1));
    DFN1 \Q[23]  (.D(Q_n23_net_1), .CLK(clk_c), .Q(\Q[23]_net_1 ));
    NOR2B Q_c7 (.A(Q_c6_net_1), .B(\Q[7]_net_1 ), .Y(Q_c7_net_1));
    NOR2B Q_c23_m6_0_a2_1 (.A(\Q[22]_net_1 ), .B(\Q[21]_net_1 ), .Y(
        Q_c23_m6_0_a2_1_net_1));
    DFN1 \Q[17]  (.D(Q_n17_net_1), .CLK(clk_c), .Q(\Q[17]_net_1 ));
    DFN1 \Q[1]  (.D(Q_n1_net_1), .CLK(clk_c), .Q(\Q[1]_net_1 ));
    NOR2B Q_c21 (.A(Q_c20_net_1), .B(\Q[21]_net_1 ), .Y(Q_c21_net_1));
    XA1B Q_n8 (.A(\Q[8]_net_1 ), .B(Q_c7_net_1), .C(reset_c), .Y(
        Q_n8_net_1));
    XA1B Q_n18 (.A(\Q[18]_net_1 ), .B(Q_c17_net_1), .C(reset_c), .Y(
        Q_n18_net_1));
    NOR2 Q_n0 (.A(\Q[0]_net_1 ), .B(reset_c), .Y(Q_n0_net_1));
    XA1B Q_n11 (.A(\Q[11]_net_1 ), .B(Q_c10_net_1), .C(reset_c), .Y(
        Q_n11_net_1));
    XA1B Q_n19 (.A(\Q[19]_net_1 ), .B(Q_c18_net_1), .C(reset_c), .Y(
        Q_n19_net_1));
    DFN1 \Q[5]  (.D(Q_n5_net_1), .CLK(clk_c), .Q(\Q[5]_net_1 ));
    NOR2B Q_c8 (.A(Q_c7_net_1), .B(\Q[8]_net_1 ), .Y(Q_c8_net_1));
    XA1B Q_n10 (.A(\Q[10]_net_1 ), .B(Q_c9_net_1), .C(reset_c), .Y(
        Q_n10_net_1));
    DFN1 \Q[10]  (.D(Q_n10_net_1), .CLK(clk_c), .Q(\Q[10]_net_1 ));
    XA1B Q_n16 (.A(\Q[16]_net_1 ), .B(Q_c15_net_1), .C(reset_c), .Y(
        Q_n16_net_1));
    NOR3C Q_c13_m6_0_a2_5 (.A(\Q[11]_net_1 ), .B(\Q[12]_net_1 ), .C(
        Q_c13_m6_0_a2_2_net_1), .Y(Q_c13_m6_0_a2_5_net_1));
    DFN1 \Q[22]  (.D(Q_n22_net_1), .CLK(clk_c), .Q(\Q[22]_net_1 ));
    DFN1 \Q[0]  (.D(Q_n0_net_1), .CLK(clk_c), .Q(\Q[0]_net_1 ));
    XA1B Q_n13 (.A(\Q[13]_net_1 ), .B(Q_c12_net_1), .C(reset_c), .Y(
        Q_n13_net_1));
    NOR2B Q_c14 (.A(Q_c13), .B(\Q[14]_net_1 ), .Y(Q_c14_net_1));
    DFN1 \Q[7]  (.D(Q_n7_net_1), .CLK(clk_c), .Q(\Q[7]_net_1 ));
    NOR3C Q_c23_m6_0_a2_6 (.A(\Q[16]_net_1 ), .B(\Q[17]_net_1 ), .C(
        Q_c23_m6_0_a2_4_net_1), .Y(Q_c23_m6_0_a2_6_net_1));
    XA1B Q_n1 (.A(\Q[0]_net_1 ), .B(\Q[1]_net_1 ), .C(reset_c), .Y(
        Q_n1_net_1));
    NOR2B Q_c20 (.A(Q_c19_net_1), .B(\Q[20]_net_1 ), .Y(Q_c20_net_1));
    NOR2B Q_c19 (.A(Q_c18_net_1), .B(\Q[19]_net_1 ), .Y(Q_c19_net_1));
    NOR2B Q_c1 (.A(\Q[0]_net_1 ), .B(\Q[1]_net_1 ), .Y(Q_c1_net_1));
    NOR2B Q_c18 (.A(Q_c17_net_1), .B(\Q[18]_net_1 ), .Y(Q_c18_net_1));
    XA1B Q_n22 (.A(\Q[22]_net_1 ), .B(Q_c21_net_1), .C(reset_c), .Y(
        Q_n22_net_1));
    DFN1 \Q[3]  (.D(Q_n3_net_1), .CLK(clk_c), .Q(\Q[3]_net_1 ));
    XA1B Q_n3 (.A(\Q[3]_net_1 ), .B(Q_c2_net_1), .C(reset_c), .Y(
        Q_n3_net_1));
    CLKSRC \clk_pad/U0/U1  (.A(\clk_pad/U0/NET1 ), .Y(clk_c));
    IOIN_IB \reset_pad/U0/U1  (.YIN(\reset_pad/U0/NET1 ), .Y(reset_c));
    NOR2B Q_c23_m6_0_a2 (.A(Q_c23_m6_0_a2_7_net_1), .B(Q_c14_net_1), 
        .Y(Q_c23_c));
    NOR3C Q_c13_m6_0_a2_4 (.A(\Q[9]_net_1 ), .B(\Q[13]_net_1 ), .C(
        \Q[5]_net_1 ), .Y(Q_c13_m6_0_a2_4_net_1));
    NOR2B Q_c3 (.A(Q_c2_net_1), .B(\Q[3]_net_1 ), .Y(Q_c3_net_1));
    DFN1 \Q[6]  (.D(Q_n6_net_1), .CLK(clk_c), .Q(\Q[6]_net_1 ));
    DFN1 \Q[18]  (.D(Q_n18_net_1), .CLK(clk_c), .Q(\Q[18]_net_1 ));
    NOR2B Q_c12 (.A(Q_c11_net_1), .B(\Q[12]_net_1 ), .Y(Q_c12_net_1));
    DFN1 \Q[9]  (.D(Q_n9_net_1), .CLK(clk_c), .Q(\Q[9]_net_1 ));
    DFN1 \Q[21]  (.D(Q_n21_net_1), .CLK(clk_c), .Q(\Q[21]_net_1 ));
    XA1B Q_n14 (.A(\Q[14]_net_1 ), .B(Q_c13), .C(reset_c), .Y(
        Q_n14_net_1));
    DFN1 \Q[14]  (.D(Q_n14_net_1), .CLK(clk_c), .Q(\Q[14]_net_1 ));
    IOTRI_OB_EB \TC_pad/U0/U1  (.D(Q_c23_c), .E(VCC), .DOUT(
        \TC_pad/U0/NET1 ), .EOUT(\TC_pad/U0/NET2 ));
    IOPAD_TRI \TC_pad/U0/U0  (.D(\TC_pad/U0/NET1 ), .E(
        \TC_pad/U0/NET2 ), .PAD(TC));
    DFN1 \Q[13]  (.D(Q_n13_net_1), .CLK(clk_c), .Q(\Q[13]_net_1 ));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    NOR2B Q_c17 (.A(Q_c16_net_1), .B(\Q[17]_net_1 ), .Y(Q_c17_net_1));
    NOR2B Q_c11 (.A(Q_c10_net_1), .B(\Q[11]_net_1 ), .Y(Q_c11_net_1));
    NOR2B Q_c13_m6_0_a2_2 (.A(\Q[10]_net_1 ), .B(\Q[8]_net_1 ), .Y(
        Q_c13_m6_0_a2_2_net_1));
    DFN1 \Q[2]  (.D(Q_n2_net_1), .CLK(clk_c), .Q(\Q[2]_net_1 ));
    IOPAD_IN \clk_pad/U0/U0  (.PAD(clk), .Y(\clk_pad/U0/NET1 ));
    XA1B Q_n21 (.A(\Q[21]_net_1 ), .B(Q_c20_net_1), .C(reset_c), .Y(
        Q_n21_net_1));
    DFN1 \Q[16]  (.D(Q_n16_net_1), .CLK(clk_c), .Q(\Q[16]_net_1 ));
    XA1B Q_n20 (.A(\Q[20]_net_1 ), .B(Q_c19_net_1), .C(reset_c), .Y(
        Q_n20_net_1));
    DFN1 \Q[20]  (.D(Q_n20_net_1), .CLK(clk_c), .Q(\Q[20]_net_1 ));
    DFN1 \Q[8]  (.D(Q_n8_net_1), .CLK(clk_c), .Q(\Q[8]_net_1 ));
    NOR3C Q_c23_m6_0_a2_4 (.A(\Q[19]_net_1 ), .B(\Q[23]_net_1 ), .C(
        \Q[15]_net_1 ), .Y(Q_c23_m6_0_a2_4_net_1));
    DFN1 \Q[19]  (.D(Q_n19_net_1), .CLK(clk_c), .Q(\Q[19]_net_1 ));
    DFN1 \Q[12]  (.D(Q_n12_net_1), .CLK(clk_c), .Q(\Q[12]_net_1 ));
    XA1B Q_n23 (.A(\Q[23]_net_1 ), .B(Q_c22_net_1), .C(reset_c), .Y(
        Q_n23_net_1));
    NOR3C Q_c13_m6_0_a2 (.A(Q_c13_m6_0_a2_6_net_1), .B(
        Q_c13_m6_0_a2_5_net_1), .C(Q_c4_net_1), .Y(Q_c13));
    XA1B Q_n17 (.A(\Q[17]_net_1 ), .B(Q_c16_net_1), .C(reset_c), .Y(
        Q_n17_net_1));
    DFN1 \Q[15]  (.D(Q_n15_net_1), .CLK(clk_c), .Q(\Q[15]_net_1 ));
    NOR2B Q_c10 (.A(Q_c9_net_1), .B(\Q[10]_net_1 ), .Y(Q_c10_net_1));
    DFN1 \Q[4]  (.D(Q_n4_net_1), .CLK(clk_c), .Q(\Q[4]_net_1 ));
    XA1B Q_n2 (.A(\Q[2]_net_1 ), .B(Q_c1_net_1), .C(reset_c), .Y(
        Q_n2_net_1));
    NOR2B Q_c23_m6_0_a2_2 (.A(\Q[20]_net_1 ), .B(\Q[18]_net_1 ), .Y(
        Q_c23_m6_0_a2_2_net_1));
    NOR2B Q_c2 (.A(Q_c1_net_1), .B(\Q[2]_net_1 ), .Y(Q_c2_net_1));
    XA1B Q_n15 (.A(\Q[15]_net_1 ), .B(Q_c14_net_1), .C(reset_c), .Y(
        Q_n15_net_1));
    XA1B Q_n9 (.A(\Q[9]_net_1 ), .B(Q_c8_net_1), .C(reset_c), .Y(
        Q_n9_net_1));
    XA1B Q_n6 (.A(\Q[6]_net_1 ), .B(Q_c5_net_1), .C(reset_c), .Y(
        Q_n6_net_1));
    XA1B Q_n12 (.A(\Q[12]_net_1 ), .B(Q_c11_net_1), .C(reset_c), .Y(
        Q_n12_net_1));
    NOR3C Q_c23_m6_0_a2_7 (.A(Q_c23_m6_0_a2_2_net_1), .B(
        Q_c23_m6_0_a2_1_net_1), .C(Q_c23_m6_0_a2_6_net_1), .Y(
        Q_c23_m6_0_a2_7_net_1));
    XA1B Q_n5 (.A(\Q[5]_net_1 ), .B(Q_c4_net_1), .C(reset_c), .Y(
        Q_n5_net_1));
    NOR2B Q_c9 (.A(Q_c8_net_1), .B(\Q[9]_net_1 ), .Y(Q_c9_net_1));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
