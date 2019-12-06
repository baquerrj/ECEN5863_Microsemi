`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26


module Counter(
       CLK,
       RESET,
       CE,
       Q,
       TC
    );
input  CLK;
input  RESET;
input  CE;
output [15:0] Q;
output TC;

    wire GND, VCC, CLK_c, RESET_c, CE_c, \Q_c[0] , \Q_c[1] , \Q_c[2] , 
        \Q_c[3] , \Q_c[4] , \Q_c[5] , \Q_c[6] , \Q_c[7] , \Q_c[8] , 
        \Q_c[9] , \Q_c[10] , \Q_c[11] , \Q_c[12] , \Q_c[13] , 
        \Q_c[14] , \Q_c[15] , TC_pad_RNO_net_1, counte, count_n10, 
        count_n9, N_14, N_16, N_18, N_20, N_22, N_24, N_26, N_86_i, 
        N_33, N_109, N_30, N_29, N_40, N_90, N_93, N_94, N_87, 
        count_n11, count_n12, count_n13, count_n14, count_n15, 
        count_n10_0_o2_N_11_mux, count_n9_0_o2_N_9_mux, 
        count_n5_i_o2_N_3_mux, count_n13_0_o2_N_3_mux, 
        count_n8_i_N_8_mux, count_n8_i_N_7_mux_i_0, 
        count_n7_i_60_N_4_mux, count_n9_0_o2_m4_0_a2_2_net_1, 
        count_n9_0_o2_m4_0_a2_3_net_1, count_n9_0_o2_m4_0_a2_4_net_1, 
        count_n5_i_o2_m1_0_a2_1_net_1, count_n10_0_o2_m5_0_a2_1_net_1, 
        count_n10_0_o2_m5_0_a2_4_net_1, count_n10_0_o2_m5_0_a2_5_net_1, 
        count_n8_i_m2_i_a3_1_net_1, count_n7_i_60_m1_0_a2_0_net_1, 
        count_n13_0_o2_m1_0_a2_0_net_1, count_n14_0_o2_m1_0_a2_1_net_1, 
        count_n14_0_o2_m1_0_a2_2_net_1, count_n13_0_a2_0, 
        count_n13_0_a2_0_0_net_1, count_n14_0_a2_0_net_1, 
        count_n14_0_a2_0_0_net_1, count_n11_0_a2_0_0_net_1, 
        count_n11_0_a2_0, count_n12_0_a2_0_0_net_1, count_n12_0_a2_0, 
        count_n15_0_a2_0_0_net_1, count_n15_0_a2_0;
    
    NOR2B count_n15_0_a2_0_1 (.A(RESET_c), .B(\Q_c[15] ), .Y(
        count_n15_0_a2_0));
    NOR3B count_n15_0_a2_0_0 (.A(RESET_c), .B(\Q_c[9] ), .C(\Q_c[15] ), 
        .Y(count_n15_0_a2_0_0_net_1));
    MX2 count_n11_0 (.A(count_n11_0_a2_0_0_net_1), .B(count_n11_0_a2_0)
        , .S(N_40), .Y(count_n11));
    DFN1E1 \count[5]  (.D(N_18), .CLK(CLK_c), .E(counte), .Q(\Q_c[5] ));
    DFN1E1 \count[1]  (.D(N_26), .CLK(CLK_c), .E(counte), .Q(\Q_c[1] ));
    XA1 count_n1_i (.A(\Q_c[0] ), .B(\Q_c[1] ), .C(RESET_c), .Y(N_26));
    OUTBUF \Q_pad[12]  (.D(\Q_c[12] ), .PAD(Q[12]));
    DFN1E1 \count[10]  (.D(count_n10), .CLK(CLK_c), .E(counte), .Q(
        \Q_c[10] ));
    DFN1E1 \count[0]  (.D(N_86_i), .CLK(CLK_c), .E(counte), .Q(
        \Q_c[0] ));
    DFN1E1 \count[14]  (.D(count_n14), .CLK(CLK_c), .E(counte), .Q(
        \Q_c[14] ));
    OR2A count_n12_0_o2 (.A(\Q_c[11] ), .B(N_40), .Y(N_87));
    OR2B count_n6_i_o2 (.A(\Q_c[5] ), .B(count_n5_i_o2_N_3_mux), .Y(
        N_33));
    NOR3B count_n14_0_a2_0_0_0 (.A(RESET_c), .B(\Q_c[9] ), .C(
        \Q_c[14] ), .Y(count_n14_0_a2_0_0_net_1));
    MX2 count_n15_0 (.A(count_n15_0_a2_0_0_net_1), .B(count_n15_0_a2_0)
        , .S(N_90), .Y(count_n15));
    NOR3B count_n9_0_o2_m4_0_a2 (.A(count_n9_0_o2_m4_0_a2_4_net_1), .B(
        count_n9_0_o2_m4_0_a2_3_net_1), .C(N_29), .Y(
        count_n9_0_o2_N_9_mux));
    AO1 count_n8_i_m2_i (.A(count_n8_i_m2_i_a3_1_net_1), .B(
        count_n5_i_o2_N_3_mux), .C(\Q_c[8] ), .Y(
        count_n8_i_N_7_mux_i_0));
    NOR3C count_n14_0_a2_0 (.A(count_n10_0_o2_N_11_mux), .B(
        count_n14_0_o2_m1_0_a2_2_net_1), .C(count_n14_0_a2_0_0_net_1), 
        .Y(N_94));
    AOI1B count_n14_0_a2 (.A(count_n14_0_o2_m1_0_a2_2_net_1), .B(
        count_n10_0_o2_N_11_mux), .C(count_n14_0_a2_0_net_1), .Y(N_93));
    OR2A countlde (.A(RESET_c), .B(CE_c), .Y(counte));
    VCC VCC_i (.Y(VCC));
    OUTBUF \Q_pad[4]  (.D(\Q_c[4] ), .PAD(Q[4]));
    XA1 count_n5_i (.A(count_n5_i_o2_N_3_mux), .B(\Q_c[5] ), .C(
        RESET_c), .Y(N_18));
    NOR2B count_n14_0_a2_0_0 (.A(RESET_c), .B(\Q_c[14] ), .Y(
        count_n14_0_a2_0_net_1));
    NOR2B count_n13_0_o2_m1_0_a2_0 (.A(\Q_c[12] ), .B(\Q_c[11] ), .Y(
        count_n13_0_o2_m1_0_a2_0_net_1));
    NOR2A count_n0_i_a2 (.A(RESET_c), .B(\Q_c[0] ), .Y(N_86_i));
    DFN1E1 \count[8]  (.D(count_n8_i_N_8_mux), .CLK(CLK_c), .E(counte), 
        .Q(\Q_c[8] ));
    NOR3B count_n8_i_m4 (.A(RESET_c), .B(count_n8_i_N_7_mux_i_0), .C(
        count_n9_0_o2_N_9_mux), .Y(count_n8_i_N_8_mux));
    INBUF CE_pad (.PAD(CE), .Y(CE_c));
    OUTBUF \Q_pad[9]  (.D(\Q_c[9] ), .PAD(Q[9]));
    OR2 count_n14_0 (.A(N_93), .B(N_94), .Y(count_n14));
    OUTBUF \Q_pad[2]  (.D(\Q_c[2] ), .PAD(Q[2]));
    XA1 count_n9_0 (.A(\Q_c[9] ), .B(count_n9_0_o2_N_9_mux), .C(
        RESET_c), .Y(count_n9));
    NOR2B count_n13_0_a2_0_0 (.A(RESET_c), .B(\Q_c[13] ), .Y(
        count_n13_0_a2_0));
    OR2B count_n2_i_o2 (.A(\Q_c[1] ), .B(\Q_c[0] ), .Y(N_29));
    NOR3C count_n10_0_o2_m5_0_a2_4 (.A(\Q_c[8] ), .B(\Q_c[9] ), .C(
        count_n10_0_o2_m5_0_a2_1_net_1), .Y(
        count_n10_0_o2_m5_0_a2_4_net_1));
    DFN1E1 \count[15]  (.D(count_n15), .CLK(CLK_c), .E(counte), .Q(
        \Q_c[15] ));
    OUTBUF \Q_pad[14]  (.D(\Q_c[14] ), .PAD(Q[14]));
    DFN1E1 \count[11]  (.D(count_n11), .CLK(CLK_c), .E(counte), .Q(
        \Q_c[11] ));
    OR3C count_n15_0_o2 (.A(count_n10_0_o2_N_11_mux), .B(
        count_n14_0_o2_m1_0_a2_2_net_1), .C(\Q_c[14] ), .Y(N_90));
    NOR2B count_n9_0_o2_m4_0_a2_2 (.A(\Q_c[2] ), .B(\Q_c[5] ), .Y(
        count_n9_0_o2_m4_0_a2_2_net_1));
    NOR3C count_n8_i_m2_i_a3_1 (.A(\Q_c[6] ), .B(\Q_c[7] ), .C(
        \Q_c[5] ), .Y(count_n8_i_m2_i_a3_1_net_1));
    DFN1E1 \count[13]  (.D(count_n13), .CLK(CLK_c), .E(counte), .Q(
        \Q_c[13] ));
    OUTBUF \Q_pad[10]  (.D(\Q_c[10] ), .PAD(Q[10]));
    NOR3B count_n13_0_a2_0_0_0 (.A(RESET_c), .B(\Q_c[9] ), .C(
        \Q_c[13] ), .Y(count_n13_0_a2_0_0_net_1));
    NOR2B count_n11_0_a2_0_1 (.A(RESET_c), .B(\Q_c[11] ), .Y(
        count_n11_0_a2_0));
    NOR3B count_n11_0_a2_0_0 (.A(RESET_c), .B(\Q_c[9] ), .C(\Q_c[11] ), 
        .Y(count_n11_0_a2_0_0_net_1));
    DFN1E1 \count[2]  (.D(N_24), .CLK(CLK_c), .E(counte), .Q(\Q_c[2] ));
    MX2 count_n12_0 (.A(count_n12_0_a2_0_0_net_1), .B(count_n12_0_a2_0)
        , .S(N_87), .Y(count_n12));
    NOR2B count_n7_i_60_m1_0_a2_0 (.A(\Q_c[6] ), .B(\Q_c[5] ), .Y(
        count_n7_i_60_m1_0_a2_0_net_1));
    OUTBUF \Q_pad[5]  (.D(\Q_c[5] ), .PAD(Q[5]));
    NOR3C count_n9_0_o2_m4_0_a2_3 (.A(\Q_c[4] ), .B(\Q_c[8] ), .C(
        \Q_c[6] ), .Y(count_n9_0_o2_m4_0_a2_3_net_1));
    OA1C count_n4_i_a2 (.A(\Q_c[3] ), .B(N_30), .C(\Q_c[4] ), .Y(N_109)
        );
    OUTBUF \Q_pad[6]  (.D(\Q_c[6] ), .PAD(Q[6]));
    OUTBUF \Q_pad[15]  (.D(\Q_c[15] ), .PAD(Q[15]));
    NOR3B count_n10_0_o2_m5_0_a2 (.A(count_n10_0_o2_m5_0_a2_5_net_1), 
        .B(count_n10_0_o2_m5_0_a2_4_net_1), .C(N_29), .Y(
        count_n10_0_o2_N_11_mux));
    GND GND_i (.Y(GND));
    DFN1E1 \count[9]  (.D(count_n9), .CLK(CLK_c), .E(counte), .Q(
        \Q_c[9] ));
    INBUF RESET_pad (.PAD(RESET), .Y(RESET_c));
    NOR2B count_n7_i_60_m1_0_a2 (.A(count_n7_i_60_m1_0_a2_0_net_1), .B(
        count_n5_i_o2_N_3_mux), .Y(count_n7_i_60_N_4_mux));
    OUTBUF \Q_pad[8]  (.D(\Q_c[8] ), .PAD(Q[8]));
    OR2B count_n11_0_o2 (.A(count_n10_0_o2_N_11_mux), .B(\Q_c[10] ), 
        .Y(N_40));
    XA1A count_n3_i (.A(N_30), .B(\Q_c[3] ), .C(RESET_c), .Y(N_22));
    XA1A count_n2_i (.A(N_29), .B(\Q_c[2] ), .C(RESET_c), .Y(N_24));
    MX2 count_n13_0 (.A(count_n13_0_a2_0), .B(count_n13_0_a2_0_0_net_1)
        , .S(count_n13_0_o2_N_3_mux), .Y(count_n13));
    OUTBUF \Q_pad[3]  (.D(\Q_c[3] ), .PAD(Q[3]));
    NOR3C count_n13_0_o2_m1_0_a2 (.A(count_n13_0_o2_m1_0_a2_0_net_1), 
        .B(\Q_c[10] ), .C(count_n10_0_o2_N_11_mux), .Y(
        count_n13_0_o2_N_3_mux));
    DFN1E1 \count[6]  (.D(N_16), .CLK(CLK_c), .E(counte), .Q(\Q_c[6] ));
    NOR3C count_n14_0_o2_m1_0_a2_2 (.A(\Q_c[12] ), .B(\Q_c[13] ), .C(
        count_n14_0_o2_m1_0_a2_1_net_1), .Y(
        count_n14_0_o2_m1_0_a2_2_net_1));
    NOR3C count_n10_0_o2_m5_0_a2_5 (.A(\Q_c[2] ), .B(\Q_c[3] ), .C(
        count_n7_i_60_m1_0_a2_0_net_1), .Y(
        count_n10_0_o2_m5_0_a2_5_net_1));
    XA1 count_n10_0 (.A(\Q_c[10] ), .B(count_n10_0_o2_N_11_mux), .C(
        RESET_c), .Y(count_n10));
    NOR3B TC_pad_RNO (.A(\Q_c[15] ), .B(CE_c), .C(N_90), .Y(
        TC_pad_RNO_net_1));
    NOR3C count_n5_i_o2_m1_0_a2_1 (.A(\Q_c[3] ), .B(\Q_c[4] ), .C(
        \Q_c[2] ), .Y(count_n5_i_o2_m1_0_a2_1_net_1));
    NOR2B count_n12_0_a2_0_1 (.A(RESET_c), .B(\Q_c[12] ), .Y(
        count_n12_0_a2_0));
    NOR3B count_n12_0_a2_0_0 (.A(RESET_c), .B(\Q_c[9] ), .C(\Q_c[12] ), 
        .Y(count_n12_0_a2_0_0_net_1));
    DFN1E1 \count[3]  (.D(N_22), .CLK(CLK_c), .E(counte), .Q(\Q_c[3] ));
    OUTBUF \Q_pad[1]  (.D(\Q_c[1] ), .PAD(Q[1]));
    OUTBUF \Q_pad[11]  (.D(\Q_c[11] ), .PAD(Q[11]));
    NOR3A count_n4_i (.A(RESET_c), .B(count_n5_i_o2_N_3_mux), .C(N_109)
        , .Y(N_20));
    OUTBUF \Q_pad[0]  (.D(\Q_c[0] ), .PAD(Q[0]));
    XA1A count_n6_i (.A(N_33), .B(\Q_c[6] ), .C(RESET_c), .Y(N_16));
    XA1 count_n7_i (.A(count_n7_i_60_N_4_mux), .B(\Q_c[7] ), .C(
        RESET_c), .Y(N_14));
    OUTBUF \Q_pad[13]  (.D(\Q_c[13] ), .PAD(Q[13]));
    NOR2B count_n14_0_o2_m1_0_a2_1 (.A(\Q_c[11] ), .B(\Q_c[10] ), .Y(
        count_n14_0_o2_m1_0_a2_1_net_1));
    NOR2B count_n10_0_o2_m5_0_a2_1 (.A(\Q_c[4] ), .B(\Q_c[7] ), .Y(
        count_n10_0_o2_m5_0_a2_1_net_1));
    NOR3C count_n9_0_o2_m4_0_a2_4 (.A(\Q_c[3] ), .B(\Q_c[7] ), .C(
        count_n9_0_o2_m4_0_a2_2_net_1), .Y(
        count_n9_0_o2_m4_0_a2_4_net_1));
    NOR2A count_n5_i_o2_m1_0_a2 (.A(count_n5_i_o2_m1_0_a2_1_net_1), .B(
        N_29), .Y(count_n5_i_o2_N_3_mux));
    OUTBUF \Q_pad[7]  (.D(\Q_c[7] ), .PAD(Q[7]));
    DFN1E1 \count[4]  (.D(N_20), .CLK(CLK_c), .E(counte), .Q(\Q_c[4] ));
    OR2A count_n3_i_o2 (.A(\Q_c[2] ), .B(N_29), .Y(N_30));
    DFN1E1 \count[12]  (.D(count_n12), .CLK(CLK_c), .E(counte), .Q(
        \Q_c[12] ));
    DFN1E1 \count[7]  (.D(N_14), .CLK(CLK_c), .E(counte), .Q(\Q_c[7] ));
    OUTBUF TC_pad (.D(TC_pad_RNO_net_1), .PAD(TC));
    CLKBUF CLK_pad (.PAD(CLK), .Y(CLK_c));
    
endmodule
