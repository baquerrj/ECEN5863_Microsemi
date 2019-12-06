`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26


module skewedClock(
       CLK_c,
       PRE_c,
       sQ3_c,
       sQ0,
       sQ1,
       sQ2
    );
input  CLK_c;
input  PRE_c;
output sQ3_c;
output sQ0;
output sQ1;
output sQ2;

    wire INV_3_Y, INV_2_Y, INV_1_Y, INV_0_Y, GND, VCC;
    
    INV INV_3 (.A(sQ2), .Y(INV_3_Y));
    DFN1P0 DFN1P0_2 (.D(INV_3_Y), .CLK(sQ1), .PRE(PRE_c), .Q(sQ2));
    INV INV_0 (.A(sQ0), .Y(INV_0_Y));
    DFN1P0 DFN1P0_1 (.D(INV_1_Y), .CLK(sQ0), .PRE(PRE_c), .Q(sQ1));
    VCC VCC_i (.Y(VCC));
    INV INV_2 (.A(sQ3_c), .Y(INV_2_Y));
    INV INV_1 (.A(sQ1), .Y(INV_1_Y));
    GND GND_i (.Y(GND));
    DFN1P0 DFN1P0_3 (.D(INV_2_Y), .CLK(sQ2), .PRE(PRE_c), .Q(sQ3_c));
    DFN1P0 DFN1P0_0 (.D(INV_0_Y), .CLK(CLK_c), .PRE(PRE_c), .Q(sQ0));
    
endmodule


module Skewed(
       CLK_c,
       TC_c,
       CLR_c,
       sQ2,
       sQ1,
       sQ3_c,
       sQ0
    );
input  CLK_c;
output TC_c;
input  CLR_c;
input  sQ2;
input  sQ1;
input  sQ3_c;
input  sQ0;

    wire uQ_n4_i_o2_out, \uQ[0]_net_1 , \uQ[3]_net_1 , 
        uQ_n7_i_o2_out_0, \uQ[6]_net_1 , \uQ[5]_net_1 , \uQ[4]_net_1 , 
        uQ_n3_i_o2_out, \uQ[1]_net_1 , \uQ[2]_net_1 , uQ_n9_0_o2_out, 
        \uQ[7]_net_1 , \uQ[8]_net_1 , uQ_m4_0_a2_5_net_1, 
        uQ_m4_0_a2_2_net_1, uQ_m4_0_a2_1_net_1, uQ_m4_0_a2_3_net_1, 
        \uQ[9]_net_1 , uQ_n2_i_0_net_1, uQ_n1_i_0_net_1, TC_9_1_net_1, 
        uQ_m6_0_a2_7_net_1, uQ_m6_0_a2_2_net_1, uQ_m6_0_a2_1_net_1, 
        N_28, uQ_m6_0_a2_6_net_1, uQ_m6_0_a2_4_net_1, \uQ[10]_net_1 , 
        TC_9_net_1, N_23, N_21, N_19, N_30, N_85, N_17, N_15, N_31, 
        N_13, N_34, N_72, N_11, N_9, N_74, N_83, uQ_N_13_mux, 
        uQ_N_10_mux_0, uQ_n10, uQ_n9, N_88, N_89, uQ_n11, 
        \uQ[11]_net_1 , TC_c_1, GND, VCC;
    
    XA1A uQ_n4_i (.A(N_30), .B(\uQ[4]_net_1 ), .C(TC_9_net_1), .Y(N_17)
        );
    NOR3C uQ_m6_0_a2_4 (.A(\uQ[2]_net_1 ), .B(\uQ[10]_net_1 ), .C(
        \uQ[3]_net_1 ), .Y(uQ_m6_0_a2_4_net_1));
    DFN1E0 \uQ[8]  (.D(N_9), .CLK(CLK_c), .E(N_89), .Q(\uQ[8]_net_1 ));
    NOR2B uQ_m4_0_a2_1 (.A(\uQ[4]_net_1 ), .B(\uQ[3]_net_1 ), .Y(
        uQ_m4_0_a2_1_net_1));
    OR2A uQ_n5_i_o2 (.A(\uQ[4]_net_1 ), .B(N_30), .Y(N_31));
    OR2 uQ_n7_i_o2 (.A(uQ_n7_i_o2_out_0), .B(N_30), .Y(N_34));
    DFN1E0 \uQ[7]  (.D(N_11), .CLK(CLK_c), .E(N_89), .Q(\uQ[7]_net_1 ));
    NOR2B uQ_m6_0_a2_2 (.A(\uQ[9]_net_1 ), .B(\uQ[8]_net_1 ), .Y(
        uQ_m6_0_a2_2_net_1));
    VCC VCC_i (.Y(VCC));
    OA1C uQ_n8_i_a2 (.A(\uQ[7]_net_1 ), .B(N_34), .C(\uQ[8]_net_1 ), 
        .Y(N_83));
    DFN1E0 \uQ[4]  (.D(N_17), .CLK(CLK_c), .E(N_89), .Q(\uQ[4]_net_1 ));
    OR2 uQ_n4_i_o2 (.A(uQ_n4_i_o2_out), .B(uQ_n3_i_o2_out), .Y(N_30));
    OR2B uQ_n3_i_o2_s (.A(\uQ[1]_net_1 ), .B(\uQ[2]_net_1 ), .Y(
        uQ_n3_i_o2_out));
    NOR3B uQ_n3_i (.A(N_30), .B(TC_9_net_1), .C(N_85), .Y(N_19));
    DFN1E0 \uQ[11]  (.D(uQ_n11), .CLK(CLK_c), .E(N_89), .Q(
        \uQ[11]_net_1 ));
    OR3 uQ_n9_0_o2 (.A(uQ_n9_0_o2_out), .B(uQ_n7_i_o2_out_0), .C(N_30), 
        .Y(N_74));
    NOR2A TC_9 (.A(TC_9_1_net_1), .B(sQ2), .Y(TC_9_net_1));
    XNOR2 uQ_n1_i_0 (.A(\uQ[0]_net_1 ), .B(\uQ[1]_net_1 ), .Y(
        uQ_n1_i_0_net_1));
    NOR3C uQ_m4_0_a2_5 (.A(uQ_m4_0_a2_2_net_1), .B(uQ_m4_0_a2_1_net_1), 
        .C(uQ_m4_0_a2_3_net_1), .Y(uQ_m4_0_a2_5_net_1));
    NOR2B uQ_m4_0_a2_2 (.A(\uQ[8]_net_1 ), .B(\uQ[7]_net_1 ), .Y(
        uQ_m4_0_a2_2_net_1));
    OR3C uQ_n7_i_o2_s_0 (.A(\uQ[6]_net_1 ), .B(\uQ[5]_net_1 ), .C(
        \uQ[4]_net_1 ), .Y(uQ_n7_i_o2_out_0));
    NOR2B uQ_m6_0_a2_RNIU3CH1 (.A(TC_c_1), .B(uQ_N_13_mux), .Y(TC_c));
    OA1C uQ_n6_i_a2 (.A(\uQ[5]_net_1 ), .B(N_31), .C(\uQ[6]_net_1 ), 
        .Y(N_72));
    DFN1E0 \uQ[0]  (.D(N_88), .CLK(CLK_c), .E(N_89), .Q(\uQ[0]_net_1 ));
    XA1 uQ_n11_0 (.A(\uQ[11]_net_1 ), .B(uQ_N_13_mux), .C(TC_9_net_1), 
        .Y(uQ_n11));
    DFN1E0 \uQ[9]  (.D(uQ_n9), .CLK(CLK_c), .E(N_89), .Q(\uQ[9]_net_1 )
        );
    OR2B uQ_n4_i_o2_s (.A(\uQ[0]_net_1 ), .B(\uQ[3]_net_1 ), .Y(
        uQ_n4_i_o2_out));
    NOR3C uQ_m6_0_a2_6 (.A(\uQ[4]_net_1 ), .B(\uQ[5]_net_1 ), .C(
        uQ_m6_0_a2_4_net_1), .Y(uQ_m6_0_a2_6_net_1));
    XA1A uQ_n7_i (.A(N_34), .B(\uQ[7]_net_1 ), .C(TC_9_net_1), .Y(N_11)
        );
    GND GND_i (.Y(GND));
    NOR2 uQlde_i_a2 (.A(CLR_c), .B(TC_9_net_1), .Y(N_89));
    OR2B uQ_n9_0_o2_s (.A(\uQ[7]_net_1 ), .B(\uQ[8]_net_1 ), .Y(
        uQ_n9_0_o2_out));
    NOR3B uQ_m6_0_a2_7 (.A(uQ_m6_0_a2_2_net_1), .B(uQ_m6_0_a2_1_net_1), 
        .C(N_28), .Y(uQ_m6_0_a2_7_net_1));
    AX1E uQ_n2_i_0 (.A(\uQ[1]_net_1 ), .B(\uQ[0]_net_1 ), .C(
        \uQ[2]_net_1 ), .Y(uQ_n2_i_0_net_1));
    NOR2A uQ_n1_i (.A(TC_9_net_1), .B(uQ_n1_i_0_net_1), .Y(N_23));
    OR2B uQ_n2_i_o2 (.A(\uQ[1]_net_1 ), .B(\uQ[0]_net_1 ), .Y(N_28));
    DFN1E0 \uQ[1]  (.D(N_23), .CLK(CLK_c), .E(N_89), .Q(\uQ[1]_net_1 ));
    NOR3B uQ_n8_i (.A(N_74), .B(TC_9_net_1), .C(N_83), .Y(N_9));
    OA1C uQ_n3_i_a2 (.A(\uQ[0]_net_1 ), .B(uQ_n3_i_o2_out), .C(
        \uQ[3]_net_1 ), .Y(N_85));
    XA1A uQ_n5_i (.A(N_31), .B(\uQ[5]_net_1 ), .C(TC_9_net_1), .Y(N_15)
        );
    DFN1E0 \uQ[6]  (.D(N_13), .CLK(CLK_c), .E(N_89), .Q(\uQ[6]_net_1 ));
    DFN1E0 \uQ[10]  (.D(uQ_n10), .CLK(CLK_c), .E(N_89), .Q(
        \uQ[10]_net_1 ));
    DFN1E0 \uQ[2]  (.D(N_21), .CLK(CLK_c), .E(N_89), .Q(\uQ[2]_net_1 ));
    NOR3 TC_9_1 (.A(sQ0), .B(sQ3_c), .C(sQ1), .Y(TC_9_1_net_1));
    NOR3C uQ_m4_0_a2_3 (.A(\uQ[5]_net_1 ), .B(\uQ[6]_net_1 ), .C(
        \uQ[9]_net_1 ), .Y(uQ_m4_0_a2_3_net_1));
    DFN1E0 \uQ[5]  (.D(N_15), .CLK(CLK_c), .E(N_89), .Q(\uQ[5]_net_1 ));
    NOR2B \uQ_RNIL7171[11]  (.A(TC_9_net_1), .B(\uQ[11]_net_1 ), .Y(
        TC_c_1));
    NOR3B uQ_n6_i (.A(TC_9_net_1), .B(N_34), .C(N_72), .Y(N_13));
    XA1A uQ_n9_0 (.A(N_74), .B(\uQ[9]_net_1 ), .C(TC_9_net_1), .Y(
        uQ_n9));
    XA1 uQ_n10_0 (.A(uQ_N_10_mux_0), .B(\uQ[10]_net_1 ), .C(TC_9_net_1)
        , .Y(uQ_n10));
    NOR2B uQ_m6_0_a2_1 (.A(\uQ[7]_net_1 ), .B(\uQ[6]_net_1 ), .Y(
        uQ_m6_0_a2_1_net_1));
    NOR2B uQ_m6_0_a2 (.A(uQ_m6_0_a2_7_net_1), .B(uQ_m6_0_a2_6_net_1), 
        .Y(uQ_N_13_mux));
    DFN1E0 \uQ[3]  (.D(N_19), .CLK(CLK_c), .E(N_89), .Q(\uQ[3]_net_1 ));
    NOR2A uQ_n2_i (.A(TC_9_net_1), .B(uQ_n2_i_0_net_1), .Y(N_21));
    NOR3B uQ_m4_0_a2 (.A(\uQ[0]_net_1 ), .B(uQ_m4_0_a2_5_net_1), .C(
        uQ_n3_i_o2_out), .Y(uQ_N_10_mux_0));
    NOR2A uQ_n0_i_a2 (.A(TC_9_net_1), .B(\uQ[0]_net_1 ), .Y(N_88));
    
endmodule


module top_level_counter(
       CLK,
       CLR,
       PRE,
       TC,
       sQ0,
       sQ1,
       sQ2,
       sQ3
    );
input  CLK;
input  CLR;
input  PRE;
output TC;
output sQ0;
output sQ1;
output sQ2;
output sQ3;

    wire GND, VCC, CLK_c, CLR_c, PRE_c, TC_c, sQ0_net_1, sQ1_net_1, 
        sQ2_net_1, sQ3_c;
    
    skewedClock skewedClock_0 (.CLK_c(CLK_c), .PRE_c(PRE_c), .sQ3_c(
        sQ3_c), .sQ0(sQ0_net_1), .sQ1(sQ1_net_1), .sQ2(sQ2_net_1));
    OUTBUF sQ3_pad (.D(sQ3_c), .PAD(sQ3));
    INBUF PRE_pad (.PAD(PRE), .Y(PRE_c));
    OUTBUF sQ1_pad (.D(sQ1_net_1), .PAD(sQ1));
    OUTBUF sQ0_pad (.D(sQ0_net_1), .PAD(sQ0));
    VCC VCC_i (.Y(VCC));
    Skewed Skewed_0 (.CLK_c(CLK_c), .TC_c(TC_c), .CLR_c(CLR_c), .sQ2(
        sQ2_net_1), .sQ1(sQ1_net_1), .sQ3_c(sQ3_c), .sQ0(sQ0_net_1));
    GND GND_i (.Y(GND));
    OUTBUF TC_pad (.D(TC_c), .PAD(TC));
    OUTBUF sQ2_pad (.D(sQ2_net_1), .PAD(sQ2));
    INBUF CLR_pad (.PAD(CLR), .Y(CLR_c));
    CLKBUF CLK_pad (.PAD(CLK), .Y(CLK_c));
    
endmodule
