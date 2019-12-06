`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26


module myCounter(
       Q_c,
       CLK_c,
       TC_c,
       CLR_c,
       sQ2,
       sQ1,
       sQ3_c,
       sQ0
    );
output [15:4] Q_c;
input  CLK_c;
output TC_c;
input  CLR_c;
input  sQ2;
input  sQ1;
input  sQ3_c;
input  sQ0;

    wire uQ_n4_i_0_net_1, N_29, uQ_n2_i_0_net_1, N_28, 
        uQ_m1_0_a2_0_net_1, uQ_n1_i_0_net_1, uQ_m4_0_a2_5_net_1, 
        uQ_m2_0_a2_1_net_1, uQ_m4_0_a2_1_net_1, uQ_m4_0_a2_3_net_1, 
        TC_9_1_net_1, uQ_m4_0_a2_3_0_net_1, uQ_m2_0_a2_2_net_1, 
        TC_9_net_1, N_23, N_21, N_19, N_17, N_11, uQ_N_5_mux_0_0, N_9, 
        N_80, uQ_N_9_mux, uQ_N_3_mux_0, uQ_N_10_mux, uQ_N_4_mux_0_0, 
        N_13, uQ_n10, N_72, uQ_n9, N_15, N_70_i, N_89, uQ_n11, GND, 
        VCC;
    
    NOR2A uQ_n4_i (.A(TC_9_net_1), .B(uQ_n4_i_0_net_1), .Y(N_17));
    NOR3C uQ_m1_0_a2_RNIV6502 (.A(Q_c[15]), .B(TC_9_net_1), .C(
        uQ_N_3_mux_0), .Y(TC_c));
    DFN1E0 \uQ[8]  (.D(N_9), .CLK(CLK_c), .E(N_89), .Q(Q_c[12]));
    OR2B uQ_n10_0_o2 (.A(Q_c[13]), .B(uQ_N_9_mux), .Y(N_72));
    NOR2B uQ_m4_0_a2_1 (.A(Q_c[11]), .B(Q_c[9]), .Y(uQ_m4_0_a2_1_net_1)
        );
    DFN1E0 \uQ[7]  (.D(N_11), .CLK(CLK_c), .E(N_89), .Q(Q_c[11]));
    NOR2B uQ_m4_0_a2_3_0 (.A(Q_c[9]), .B(Q_c[6]), .Y(
        uQ_m4_0_a2_3_0_net_1));
    VCC VCC_i (.Y(VCC));
    AOI1 uQ_n8_i_a2 (.A(Q_c[11]), .B(uQ_N_5_mux_0_0), .C(Q_c[12]), .Y(
        N_80));
    DFN1E0 \uQ[4]  (.D(N_17), .CLK(CLK_c), .E(N_89), .Q(Q_c[8]));
    XA1A uQ_n3_i (.A(N_29), .B(Q_c[7]), .C(TC_9_net_1), .Y(N_19));
    DFN1E0 \uQ[11]  (.D(uQ_n11), .CLK(CLK_c), .E(N_89), .Q(Q_c[15]));
    NOR2A TC_9 (.A(TC_9_1_net_1), .B(sQ2), .Y(TC_9_net_1));
    XNOR2 uQ_n1_i_0 (.A(Q_c[4]), .B(Q_c[5]), .Y(uQ_n1_i_0_net_1));
    NOR3C uQ_m4_0_a2_5 (.A(uQ_m2_0_a2_1_net_1), .B(uQ_m4_0_a2_1_net_1), 
        .C(uQ_m4_0_a2_3_net_1), .Y(uQ_m4_0_a2_5_net_1));
    NOR2B uQ_m2_0_a2_1 (.A(Q_c[8]), .B(Q_c[7]), .Y(uQ_m2_0_a2_1_net_1));
    DFN1E0 \uQ[0]  (.D(N_70_i), .CLK(CLK_c), .E(N_89), .Q(Q_c[4]));
    XA1 uQ_n11_0 (.A(Q_c[15]), .B(uQ_N_3_mux_0), .C(TC_9_net_1), .Y(
        uQ_n11));
    NOR3B uQ_m1_0_a2_0 (.A(uQ_m2_0_a2_1_net_1), .B(Q_c[6]), .C(N_28), 
        .Y(uQ_N_4_mux_0_0));
    DFN1E0 \uQ[9]  (.D(uQ_n9), .CLK(CLK_c), .E(N_89), .Q(Q_c[13]));
    XA1 uQ_n7_i (.A(uQ_N_5_mux_0_0), .B(Q_c[11]), .C(TC_9_net_1), .Y(
        N_11));
    GND GND_i (.Y(GND));
    NOR2 uQlde_i_a2 (.A(CLR_c), .B(TC_9_net_1), .Y(N_89));
    XOR2 uQ_n2_i_0 (.A(N_28), .B(Q_c[6]), .Y(uQ_n2_i_0_net_1));
    NOR3C uQ_m4_0_a2_3_3 (.A(Q_c[10]), .B(Q_c[12]), .C(Q_c[6]), .Y(
        uQ_m4_0_a2_3_net_1));
    NOR2A uQ_n1_i (.A(TC_9_net_1), .B(uQ_n1_i_0_net_1), .Y(N_23));
    OR2B uQ_n2_i_o2 (.A(Q_c[5]), .B(Q_c[4]), .Y(N_28));
    NOR3C uQ_m2_0_a2_2 (.A(Q_c[9]), .B(Q_c[10]), .C(Q_c[6]), .Y(
        uQ_m2_0_a2_2_net_1));
    DFN1E0 \uQ[1]  (.D(N_23), .CLK(CLK_c), .E(N_89), .Q(Q_c[5]));
    NOR3A uQ_n8_i (.A(TC_9_net_1), .B(N_80), .C(uQ_N_9_mux), .Y(N_9));
    XA1 uQ_n6_i_1 (.A(uQ_N_10_mux), .B(Q_c[10]), .C(TC_9_net_1), .Y(
        N_13));
    XA1 uQ_n5_i (.A(uQ_N_4_mux_0_0), .B(Q_c[9]), .C(TC_9_net_1), .Y(
        N_15));
    NOR3B uQ_m2_0_a2 (.A(uQ_m2_0_a2_2_net_1), .B(uQ_m2_0_a2_1_net_1), 
        .C(N_28), .Y(uQ_N_5_mux_0_0));
    NOR2B uQ_m1_0_a2_0_2 (.A(Q_c[14]), .B(Q_c[13]), .Y(
        uQ_m1_0_a2_0_net_1));
    DFN1E0 \uQ[6]  (.D(N_13), .CLK(CLK_c), .E(N_89), .Q(Q_c[10]));
    DFN1E0 \uQ[10]  (.D(uQ_n10), .CLK(CLK_c), .E(N_89), .Q(Q_c[14]));
    DFN1E0 \uQ[2]  (.D(N_21), .CLK(CLK_c), .E(N_89), .Q(Q_c[6]));
    AX1A uQ_n4_i_0 (.A(N_29), .B(Q_c[7]), .C(Q_c[8]), .Y(
        uQ_n4_i_0_net_1));
    NOR3 TC_9_1 (.A(sQ0), .B(sQ3_c), .C(sQ1), .Y(TC_9_1_net_1));
    NOR3B uQ_m4_0_a2_3 (.A(uQ_m2_0_a2_1_net_1), .B(
        uQ_m4_0_a2_3_0_net_1), .C(N_28), .Y(uQ_N_10_mux));
    DFN1E0 \uQ[5]  (.D(N_15), .CLK(CLK_c), .E(N_89), .Q(Q_c[9]));
    XA1 uQ_n9_0 (.A(uQ_N_9_mux), .B(Q_c[13]), .C(TC_9_net_1), .Y(uQ_n9)
        );
    XA1A uQ_n10_0 (.A(N_72), .B(Q_c[14]), .C(TC_9_net_1), .Y(uQ_n10));
    DFN1E0 \uQ[3]  (.D(N_19), .CLK(CLK_c), .E(N_89), .Q(Q_c[7]));
    OR2A uQ_n3_i_o2 (.A(Q_c[6]), .B(N_28), .Y(N_29));
    NOR2A uQ_n2_i (.A(TC_9_net_1), .B(uQ_n2_i_0_net_1), .Y(N_21));
    NOR2A uQ_m4_0_a2 (.A(uQ_m4_0_a2_5_net_1), .B(N_28), .Y(uQ_N_9_mux));
    NOR2B uQ_m1_0_a2 (.A(uQ_m1_0_a2_0_net_1), .B(uQ_N_9_mux), .Y(
        uQ_N_3_mux_0));
    NOR2A uQ_n0_i_a2 (.A(TC_9_net_1), .B(Q_c[4]), .Y(N_70_i));
    
endmodule


module skewedClock(
       CLK_c,
       PRE_c,
       sQ3_c,
       sQ3_c_i,
       sQ2,
       sQ2_c_i,
       sQ1,
       sQ1_c_i,
       sQ0,
       sQ0_c_i
    );
input  CLK_c;
input  PRE_c;
output sQ3_c;
output sQ3_c_i;
output sQ2;
output sQ2_c_i;
output sQ1;
output sQ1_c_i;
output sQ0;
output sQ0_c_i;

    wire INV_3_Y, INV_2_Y, INV_1_Y, INV_0_Y, GND, VCC;
    
    INV sQ1_inferred_clock_RNIQFF7 (.A(sQ1), .Y(sQ1_c_i));
    INV DFN1P0_3_RNI7RRE (.A(sQ3_c), .Y(sQ3_c_i));
    DFN1P0 DFN1P0_2 (.D(INV_3_Y), .CLK(sQ1), .PRE(PRE_c), .Q(sQ2));
    INV sQ0_inferred_clock_RNIP06D (.A(sQ0), .Y(sQ0_c_i));
    DFN1P0 DFN1P0_3 (.D(INV_2_Y), .CLK(sQ2), .PRE(PRE_c), .Q(sQ3_c));
    INV INV_2 (.A(sQ3_c), .Y(INV_2_Y));
    DFN1P0 DFN1P0_1 (.D(INV_1_Y), .CLK(sQ0), .PRE(PRE_c), .Q(sQ1));
    INV sQ2_inferred_clock_RNIRUO1 (.A(sQ2), .Y(sQ2_c_i));
    INV INV_3 (.A(sQ2), .Y(INV_3_Y));
    INV INV_1 (.A(sQ1), .Y(INV_1_Y));
    VCC VCC_i (.Y(VCC));
    INV INV_0 (.A(sQ0), .Y(INV_0_Y));
    GND GND_i (.Y(GND));
    DFN1P0 DFN1P0_0 (.D(INV_0_Y), .CLK(CLK_c), .PRE(PRE_c), .Q(sQ0));
    
endmodule


module top_level_counter(
       CLK,
       CLR,
       PRE,
       Q,
       TC,
       sQ0,
       sQ1,
       sQ2,
       sQ3
    );
input  CLK;
input  CLR;
input  PRE;
output [15:0] Q;
output TC;
output sQ0;
output sQ1;
output sQ2;
output sQ3;

    wire GND, VCC, CLK_c, CLR_c, PRE_c, \Q_c[4] , \Q_c[5] , \Q_c[6] , 
        \Q_c[7] , \Q_c[8] , \Q_c[9] , \Q_c[10] , \Q_c[11] , \Q_c[12] , 
        \Q_c[13] , \Q_c[14] , \Q_c[15] , TC_c, sQ0_net_1, sQ1_net_1, 
        sQ2_net_1, sQ3_c, sQ3_c_i, sQ2_c_i, sQ1_c_i, sQ0_c_i;
    
    OUTBUF sQ0_pad (.D(sQ0_net_1), .PAD(sQ0));
    OUTBUF \Q_pad[1]  (.D(sQ1_c_i), .PAD(Q[1]));
    CLKBUF CLK_pad (.PAD(CLK), .Y(CLK_c));
    OUTBUF \Q_pad[5]  (.D(\Q_c[5] ), .PAD(Q[5]));
    OUTBUF \Q_pad[10]  (.D(\Q_c[10] ), .PAD(Q[10]));
    OUTBUF \Q_pad[2]  (.D(sQ2_c_i), .PAD(Q[2]));
    OUTBUF sQ1_pad (.D(sQ1_net_1), .PAD(sQ1));
    OUTBUF \Q_pad[11]  (.D(\Q_c[11] ), .PAD(Q[11]));
    OUTBUF sQ3_pad (.D(sQ3_c), .PAD(sQ3));
    myCounter myCounter_0 (.Q_c({\Q_c[15] , \Q_c[14] , \Q_c[13] , 
        \Q_c[12] , \Q_c[11] , \Q_c[10] , \Q_c[9] , \Q_c[8] , \Q_c[7] , 
        \Q_c[6] , \Q_c[5] , \Q_c[4] }), .CLK_c(CLK_c), .TC_c(TC_c), 
        .CLR_c(CLR_c), .sQ2(sQ2_net_1), .sQ1(sQ1_net_1), .sQ3_c(sQ3_c), 
        .sQ0(sQ0_net_1));
    OUTBUF \Q_pad[15]  (.D(\Q_c[15] ), .PAD(Q[15]));
    VCC VCC_i (.Y(VCC));
    OUTBUF \Q_pad[12]  (.D(\Q_c[12] ), .PAD(Q[12]));
    OUTBUF \Q_pad[9]  (.D(\Q_c[9] ), .PAD(Q[9]));
    OUTBUF sQ2_pad (.D(sQ2_net_1), .PAD(sQ2));
    INBUF PRE_pad (.PAD(PRE), .Y(PRE_c));
    GND GND_i (.Y(GND));
    OUTBUF \Q_pad[13]  (.D(\Q_c[13] ), .PAD(Q[13]));
    OUTBUF \Q_pad[8]  (.D(\Q_c[8] ), .PAD(Q[8]));
    OUTBUF TC_pad (.D(TC_c), .PAD(TC));
    OUTBUF \Q_pad[14]  (.D(\Q_c[14] ), .PAD(Q[14]));
    INBUF CLR_pad (.PAD(CLR), .Y(CLR_c));
    skewedClock skewedClock_0 (.CLK_c(CLK_c), .PRE_c(PRE_c), .sQ3_c(
        sQ3_c), .sQ3_c_i(sQ3_c_i), .sQ2(sQ2_net_1), .sQ2_c_i(sQ2_c_i), 
        .sQ1(sQ1_net_1), .sQ1_c_i(sQ1_c_i), .sQ0(sQ0_net_1), .sQ0_c_i(
        sQ0_c_i));
    OUTBUF \Q_pad[3]  (.D(sQ3_c_i), .PAD(Q[3]));
    OUTBUF \Q_pad[7]  (.D(\Q_c[7] ), .PAD(Q[7]));
    OUTBUF \Q_pad[0]  (.D(sQ0_c_i), .PAD(Q[0]));
    OUTBUF \Q_pad[4]  (.D(\Q_c[4] ), .PAD(Q[4]));
    OUTBUF \Q_pad[6]  (.D(\Q_c[6] ), .PAD(Q[6]));
    
endmodule
