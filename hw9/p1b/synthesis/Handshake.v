`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26


module counter(
       adata_c_0,
       adatain_c,
       aclk_c,
       aready_c,
       un1_anxtdata_NE_5,
       anxtdata_c,
       un1_anxtdata_NE_1,
       un1_anxtdata_2,
       arst_c
    );
input  adata_c_0;
output [7:0] adatain_c;
input  aclk_c;
input  aready_c;
input  un1_anxtdata_NE_5;
output anxtdata_c;
input  un1_anxtdata_NE_1;
input  un1_anxtdata_2;
input  arst_c;

    wire q_15_0, un1_anxtdata_NE_4, un1_anxtdata_7, N_34, q_c5, q_n6, 
        q_n5, q_c4, q_n4, q_c3, q_n3, q_c2, q_n2, q_c1, qe, q_n7, q_n1, 
        N_44, GND, VCC;
    
    DFN1E1 \q[6]  (.D(q_n6), .CLK(aclk_c), .E(qe), .Q(adatain_c[6]));
    NOR2B \q_RNO_0[7]  (.A(q_15_0), .B(q_c5), .Y(N_34));
    NOR2B \q_RNI2FEH[3]  (.A(q_c2), .B(adatain_c[3]), .Y(q_c3));
    XA1B \q_RNO[6]  (.A(q_c5), .B(adatain_c[6]), .C(arst_c), .Y(q_n6));
    XA1B \q_RNO[5]  (.A(q_c4), .B(adatain_c[5]), .C(arst_c), .Y(q_n5));
    XA1B \q_RNO[3]  (.A(adatain_c[3]), .B(q_c2), .C(arst_c), .Y(q_n3));
    DFN1E1 \q[2]  (.D(q_n2), .CLK(aclk_c), .E(qe), .Q(adatain_c[2]));
    OR3 \q_RNISOHT1[7]  (.A(un1_anxtdata_2), .B(un1_anxtdata_7), .C(
        un1_anxtdata_NE_1), .Y(un1_anxtdata_NE_4));
    NOR2B \q_RNID5QL[4]  (.A(q_c3), .B(adatain_c[4]), .Y(q_c4));
    DFN1E1 \q[4]  (.D(q_n4), .CLK(aclk_c), .E(qe), .Q(adatain_c[4]));
    VCC VCC_i (.Y(VCC));
    OR2 qlde (.A(aready_c), .B(arst_c), .Y(qe));
    XA1B \q_RNO[1]  (.A(adatain_c[1]), .B(adatain_c[0]), .C(arst_c), 
        .Y(q_n1));
    NOR2B \q_RNIPS5Q[5]  (.A(q_c4), .B(adatain_c[5]), .Y(q_c5));
    NOR2B \q_RNIF5N8[1]  (.A(adatain_c[1]), .B(adatain_c[0]), .Y(q_c1));
    NOR2A \q_RNO_1[7]  (.A(adatain_c[6]), .B(arst_c), .Y(q_15_0));
    GND GND_i (.Y(GND));
    XA1B \q_RNO[4]  (.A(adatain_c[4]), .B(q_c3), .C(arst_c), .Y(q_n4));
    AX1 \q_RNO[7]  (.A(arst_c), .B(adatain_c[7]), .C(N_34), .Y(q_n7));
    DFN1E1 \q[3]  (.D(q_n3), .CLK(aclk_c), .E(qe), .Q(adatain_c[3]));
    OR2 \q_RNI824R3[7]  (.A(un1_anxtdata_NE_5), .B(un1_anxtdata_NE_4), 
        .Y(anxtdata_c));
    DFN1E1 \q[7]  (.D(q_n7), .CLK(aclk_c), .E(qe), .Q(adatain_c[7]));
    DFN1E1 \q[1]  (.D(q_n1), .CLK(aclk_c), .E(qe), .Q(adatain_c[1]));
    DFN1E1 \q[0]  (.D(N_44), .CLK(aclk_c), .E(qe), .Q(adatain_c[0]));
    NOR2B \q_RNIOP2D[2]  (.A(q_c1), .B(adatain_c[2]), .Y(q_c2));
    XA1B \q_RNO[2]  (.A(adatain_c[2]), .B(q_c1), .C(arst_c), .Y(q_n2));
    NOR2 \q_RNO[0]  (.A(adatain_c[0]), .B(arst_c), .Y(N_44));
    DFN1E1 \q[5]  (.D(q_n5), .CLK(aclk_c), .E(qe), .Q(adatain_c[5]));
    XOR2 \q_RNIGNCF[7]  (.A(adata_c_0), .B(adatain_c[7]), .Y(
        un1_anxtdata_7));
    
endmodule


module synchronizer_0(
       breq_c,
       bclk_c,
       areq_c_c,
       brst_c
    );
output breq_c;
input  bclk_c;
input  areq_c_c;
input  brst_c;

    wire q_RNO_0, q1_net_1, q1_RNO_0, GND, VCC;
    
    NOR2A q_RNO (.A(q1_net_1), .B(brst_c), .Y(q_RNO_0));
    NOR2A q1_RNO (.A(areq_c_c), .B(brst_c), .Y(q1_RNO_0));
    DFN1 q (.D(q_RNO_0), .CLK(bclk_c), .Q(breq_c));
    VCC VCC_i (.Y(VCC));
    DFN1 q1 (.D(q1_RNO_0), .CLK(bclk_c), .Q(q1_net_1));
    GND GND_i (.Y(GND));
    
endmodule


module receiver_fsm(
       state_1_RNIJN77_0,
       bclk_c,
       brst_c,
       bload_c,
       bload_data,
       bvalid_c_c,
       breq_c,
       back_c_c
    );
output state_1_RNIJN77_0;
input  bclk_c;
input  brst_c;
input  bload_c;
output bload_data;
output bvalid_c_c;
input  breq_c;
output back_c_c;

    wire N_38, N_37, \state_1_nss[1] , \state_1_nss[0] , GND, VCC;
    
    OR2 \state_1_RNIJN77[0]  (.A(back_c_c), .B(bvalid_c_c), .Y(
        state_1_RNIJN77_0));
    DFN1 \state_1[1]  (.D(\state_1_nss[1] ), .CLK(bclk_c), .Q(
        bvalid_c_c));
    NOR3A \state_1_ns_0_a3_0[1]  (.A(back_c_c), .B(breq_c), .C(
        bvalid_c_c), .Y(N_38));
    VCC VCC_i (.Y(VCC));
    OA1B \state_1_srsts[1]  (.A(N_37), .B(N_38), .C(brst_c), .Y(
        \state_1_nss[1] ));
    NOR3A \state_1_srsts[0]  (.A(breq_c), .B(bvalid_c_c), .C(brst_c), 
        .Y(\state_1_nss[0] ));
    NOR2B \state_1_RNITSE8[1]  (.A(bvalid_c_c), .B(bload_c), .Y(
        bload_data));
    NOR2A \state_1_ns_0_a3[1]  (.A(bvalid_c_c), .B(bload_c), .Y(N_37));
    DFN1 \state_1[0]  (.D(\state_1_nss[0] ), .CLK(bclk_c), .Q(back_c_c)
        );
    GND GND_i (.Y(GND));
    
endmodule


module receiver(
       state_1_RNIJN77_0,
       adata_c,
       bdata_c,
       back_c_c,
       breq_c,
       bvalid_c_c,
       bload_c,
       bclk_c,
       brst_c
    );
output state_1_RNIJN77_0;
input  [7:0] adata_c;
output [7:0] bdata_c;
output back_c_c;
input  breq_c;
output bvalid_c_c;
input  bload_c;
input  bclk_c;
input  brst_c;

    wire \bdata_RNO_0[7]_net_1 , bload_data, \bdata_RNO_0[6]_net_1 , 
        \bdata_RNO_0[5]_net_1 , \bdata_RNO_0[4]_net_1 , 
        \bdata_RNO_0[3]_net_1 , \bdata_RNO_0[2]_net_1 , 
        \bdata_RNO_0[1]_net_1 , \bdata_RNO_0[0]_net_1 , 
        \bdata_RNO[7]_net_1 , \bdata_RNO[6]_net_1 , 
        \bdata_RNO[5]_net_1 , \bdata_RNO[4]_net_1 , 
        \bdata_RNO[3]_net_1 , \bdata_RNO[2]_net_1 , 
        \bdata_RNO[1]_net_1 , \bdata_RNO[0]_net_1 , GND, VCC;
    
    MX2 \bdata_RNO_0[6]  (.A(bdata_c[6]), .B(adata_c[6]), .S(
        bload_data), .Y(\bdata_RNO_0[6]_net_1 ));
    receiver_fsm fsm (.state_1_RNIJN77_0(state_1_RNIJN77_0), .bclk_c(
        bclk_c), .brst_c(brst_c), .bload_c(bload_c), .bload_data(
        bload_data), .bvalid_c_c(bvalid_c_c), .breq_c(breq_c), 
        .back_c_c(back_c_c));
    NOR2A \bdata_RNO[5]  (.A(\bdata_RNO_0[5]_net_1 ), .B(brst_c), .Y(
        \bdata_RNO[5]_net_1 ));
    NOR2A \bdata_RNO[2]  (.A(\bdata_RNO_0[2]_net_1 ), .B(brst_c), .Y(
        \bdata_RNO[2]_net_1 ));
    MX2 \bdata_RNO_0[7]  (.A(bdata_c[7]), .B(adata_c[7]), .S(
        bload_data), .Y(\bdata_RNO_0[7]_net_1 ));
    MX2 \bdata_RNO_0[5]  (.A(bdata_c[5]), .B(adata_c[5]), .S(
        bload_data), .Y(\bdata_RNO_0[5]_net_1 ));
    NOR2A \bdata_RNO[6]  (.A(\bdata_RNO_0[6]_net_1 ), .B(brst_c), .Y(
        \bdata_RNO[6]_net_1 ));
    NOR2A \bdata_RNO[7]  (.A(\bdata_RNO_0[7]_net_1 ), .B(brst_c), .Y(
        \bdata_RNO[7]_net_1 ));
    NOR2A \bdata_RNO[3]  (.A(\bdata_RNO_0[3]_net_1 ), .B(brst_c), .Y(
        \bdata_RNO[3]_net_1 ));
    DFN1 \bdata[1]  (.D(\bdata_RNO[1]_net_1 ), .CLK(bclk_c), .Q(
        bdata_c[1]));
    MX2 \bdata_RNO_0[3]  (.A(bdata_c[3]), .B(adata_c[3]), .S(
        bload_data), .Y(\bdata_RNO_0[3]_net_1 ));
    VCC VCC_i (.Y(VCC));
    MX2 \bdata_RNO_0[2]  (.A(bdata_c[2]), .B(adata_c[2]), .S(
        bload_data), .Y(\bdata_RNO_0[2]_net_1 ));
    MX2 \bdata_RNO_0[0]  (.A(bdata_c[0]), .B(adata_c[0]), .S(
        bload_data), .Y(\bdata_RNO_0[0]_net_1 ));
    NOR2A \bdata_RNO[1]  (.A(\bdata_RNO_0[1]_net_1 ), .B(brst_c), .Y(
        \bdata_RNO[1]_net_1 ));
    MX2 \bdata_RNO_0[1]  (.A(bdata_c[1]), .B(adata_c[1]), .S(
        bload_data), .Y(\bdata_RNO_0[1]_net_1 ));
    NOR2A \bdata_RNO[0]  (.A(\bdata_RNO_0[0]_net_1 ), .B(brst_c), .Y(
        \bdata_RNO[0]_net_1 ));
    DFN1 \bdata[4]  (.D(\bdata_RNO[4]_net_1 ), .CLK(bclk_c), .Q(
        bdata_c[4]));
    DFN1 \bdata[0]  (.D(\bdata_RNO[0]_net_1 ), .CLK(bclk_c), .Q(
        bdata_c[0]));
    GND GND_i (.Y(GND));
    DFN1 \bdata[6]  (.D(\bdata_RNO[6]_net_1 ), .CLK(bclk_c), .Q(
        bdata_c[6]));
    DFN1 \bdata[2]  (.D(\bdata_RNO[2]_net_1 ), .CLK(bclk_c), .Q(
        bdata_c[2]));
    MX2 \bdata_RNO_0[4]  (.A(bdata_c[4]), .B(adata_c[4]), .S(
        bload_data), .Y(\bdata_RNO_0[4]_net_1 ));
    DFN1 \bdata[3]  (.D(\bdata_RNO[3]_net_1 ), .CLK(bclk_c), .Q(
        bdata_c[3]));
    NOR2A \bdata_RNO[4]  (.A(\bdata_RNO_0[4]_net_1 ), .B(brst_c), .Y(
        \bdata_RNO[4]_net_1 ));
    DFN1 \bdata[7]  (.D(\bdata_RNO[7]_net_1 ), .CLK(bclk_c), .Q(
        bdata_c[7]));
    DFN1 \bdata[5]  (.D(\bdata_RNO[5]_net_1 ), .CLK(bclk_c), .Q(
        bdata_c[5]));
    
endmodule


module sender_fsm(
       astate_c_0,
       aclk_c,
       aload_data,
       anxtdata_c,
       areq_c_c,
       arst_c,
       aack_c,
       aready_c,
       aready_c_i
    );
output astate_c_0;
input  aclk_c;
output aload_data;
input  anxtdata_c;
output areq_c_c;
input  arst_c;
input  aack_c;
output aready_c;
output aready_c_i;

    wire \state_1_ns_i_0[0]_net_1 , \state_1_nss[0] , N_41, 
        \state_1_nss[1] , GND, VCC;
    
    NOR3 \state_1_srsts[0]  (.A(N_41), .B(\state_1_ns_i_0[0]_net_1 ), 
        .C(arst_c), .Y(\state_1_nss[0] ));
    NOR2B \state_1_ns_i_a3_RNI9MC14[1]  (.A(anxtdata_c), .B(aready_c), 
        .Y(aload_data));
    NOR2 \state_1_ns_i_a3[1]  (.A(astate_c_0), .B(areq_c_c), .Y(
        aready_c));
    INV \state_1_ns_i_a3_RNI1K86[1]  (.A(aready_c), .Y(aready_c_i));
    NOR3A \state_1_srsts[1]  (.A(aack_c), .B(aready_c), .C(arst_c), .Y(
        \state_1_nss[1] ));
    DFN1 \state_1[1]  (.D(\state_1_nss[1] ), .CLK(aclk_c), .Q(
        astate_c_0));
    NOR2 \state_1_ns_i_a3[0]  (.A(anxtdata_c), .B(areq_c_c), .Y(N_41));
    VCC VCC_i (.Y(VCC));
    OR2 \state_1_ns_i_0[0]  (.A(aack_c), .B(astate_c_0), .Y(
        \state_1_ns_i_0[0]_net_1 ));
    DFN1 \state_1[0]  (.D(\state_1_nss[0] ), .CLK(aclk_c), .Q(areq_c_c)
        );
    GND GND_i (.Y(GND));
    
endmodule


module sender(
       astate_c_0,
       adatain_c,
       adata_c,
       aready_c_i,
       aready_c,
       aack_c,
       areq_c_c,
       anxtdata_c,
       aclk_c,
       un1_anxtdata_2,
       arst_c,
       un1_anxtdata_NE_1,
       un1_anxtdata_NE_5
    );
output astate_c_0;
input  [7:0] adatain_c;
output [7:0] adata_c;
output aready_c_i;
output aready_c;
input  aack_c;
output areq_c_c;
input  anxtdata_c;
input  aclk_c;
output un1_anxtdata_2;
input  arst_c;
output un1_anxtdata_NE_1;
output un1_anxtdata_NE_5;

    wire un1_anxtdata_5, un1_anxtdata_6, un1_anxtdata_NE_3, 
        un1_anxtdata_3, un1_anxtdata_0, \adata_RNO[0]_net_1 , N_3, 
        \adata_RNO[1]_net_1 , N_4, \adata_RNO[2]_net_1 , N_5, 
        \adata_RNO[3]_net_1 , N_6, \adata_RNO[4]_net_1 , N_7, 
        aload_data, \adata_RNO_0[7]_net_1 , \adata_RNO_0[6]_net_1 , 
        \adata_RNO_0[5]_net_1 , \adata_RNO[7]_net_1 , 
        \adata_RNO[6]_net_1 , \adata_RNO[5]_net_1 , GND, VCC;
    
    OR3 \adata_RNIC9IT1[4]  (.A(un1_anxtdata_5), .B(un1_anxtdata_6), 
        .C(un1_anxtdata_NE_3), .Y(un1_anxtdata_NE_5));
    DFN1 \adata[6]  (.D(\adata_RNO[6]_net_1 ), .CLK(aclk_c), .Q(
        adata_c[6]));
    DFN1 \adata[0]  (.D(\adata_RNO[0]_net_1 ), .CLK(aclk_c), .Q(
        adata_c[0]));
    MX2 \adata_RNO_0[0]  (.A(adata_c[0]), .B(adatain_c[0]), .S(
        aload_data), .Y(N_3));
    NOR2A \adata_RNO[7]  (.A(\adata_RNO_0[7]_net_1 ), .B(arst_c), .Y(
        \adata_RNO[7]_net_1 ));
    XOR2 \adata_RNI8FCF[3]  (.A(adata_c[3]), .B(adatain_c[3]), .Y(
        un1_anxtdata_3));
    NOR2A \adata_RNO[4]  (.A(N_7), .B(arst_c), .Y(\adata_RNO[4]_net_1 )
        );
    VCC VCC_i (.Y(VCC));
    NOR2A \adata_RNO[6]  (.A(\adata_RNO_0[6]_net_1 ), .B(arst_c), .Y(
        \adata_RNO[6]_net_1 ));
    NOR2A \adata_RNO[2]  (.A(N_5), .B(arst_c), .Y(\adata_RNO[2]_net_1 )
        );
    MX2 \adata_RNO_0[2]  (.A(adata_c[2]), .B(adatain_c[2]), .S(
        aload_data), .Y(N_5));
    NOR2A \adata_RNO[5]  (.A(\adata_RNO_0[5]_net_1 ), .B(arst_c), .Y(
        \adata_RNO[5]_net_1 ));
    XOR2 \adata_RNIELCF[6]  (.A(adata_c[6]), .B(adatain_c[6]), .Y(
        un1_anxtdata_6));
    XOR2 \adata_RNI6DCF[2]  (.A(adata_c[2]), .B(adatain_c[2]), .Y(
        un1_anxtdata_2));
    GND GND_i (.Y(GND));
    MX2 \adata_RNO_0[1]  (.A(adata_c[1]), .B(adatain_c[1]), .S(
        aload_data), .Y(N_4));
    sender_fsm fsm (.astate_c_0(astate_c_0), .aclk_c(aclk_c), 
        .aload_data(aload_data), .anxtdata_c(anxtdata_c), .areq_c_c(
        areq_c_c), .arst_c(arst_c), .aack_c(aack_c), .aready_c(
        aready_c), .aready_c_i(aready_c_i));
    DFN1 \adata[7]  (.D(\adata_RNO[7]_net_1 ), .CLK(aclk_c), .Q(
        adata_c[7]));
    DFN1 \adata[2]  (.D(\adata_RNO[2]_net_1 ), .CLK(aclk_c), .Q(
        adata_c[2]));
    MX2 \adata_RNO_0[5]  (.A(adata_c[5]), .B(adatain_c[5]), .S(
        aload_data), .Y(\adata_RNO_0[5]_net_1 ));
    NOR2A \adata_RNO[3]  (.A(N_6), .B(arst_c), .Y(\adata_RNO[3]_net_1 )
        );
    DFN1 \adata[4]  (.D(\adata_RNO[4]_net_1 ), .CLK(aclk_c), .Q(
        adata_c[4]));
    XOR2 \adata_RNI29CF[0]  (.A(adata_c[0]), .B(adatain_c[0]), .Y(
        un1_anxtdata_0));
    XO1 \adata_RNII0PU[4]  (.A(adatain_c[4]), .B(adata_c[4]), .C(
        un1_anxtdata_3), .Y(un1_anxtdata_NE_3));
    NOR2A \adata_RNO[0]  (.A(N_3), .B(arst_c), .Y(\adata_RNO[0]_net_1 )
        );
    XO1 \adata_RNI6KOU[1]  (.A(adatain_c[1]), .B(adata_c[1]), .C(
        un1_anxtdata_0), .Y(un1_anxtdata_NE_1));
    DFN1 \adata[3]  (.D(\adata_RNO[3]_net_1 ), .CLK(aclk_c), .Q(
        adata_c[3]));
    MX2 \adata_RNO_0[6]  (.A(adata_c[6]), .B(adatain_c[6]), .S(
        aload_data), .Y(\adata_RNO_0[6]_net_1 ));
    DFN1 \adata[5]  (.D(\adata_RNO[5]_net_1 ), .CLK(aclk_c), .Q(
        adata_c[5]));
    DFN1 \adata[1]  (.D(\adata_RNO[1]_net_1 ), .CLK(aclk_c), .Q(
        adata_c[1]));
    NOR2A \adata_RNO[1]  (.A(N_4), .B(arst_c), .Y(\adata_RNO[1]_net_1 )
        );
    XOR2 \adata_RNICJCF[5]  (.A(adata_c[5]), .B(adatain_c[5]), .Y(
        un1_anxtdata_5));
    MX2 \adata_RNO_0[4]  (.A(adata_c[4]), .B(adatain_c[4]), .S(
        aload_data), .Y(N_7));
    MX2 \adata_RNO_0[7]  (.A(adata_c[7]), .B(adatain_c[7]), .S(
        aload_data), .Y(\adata_RNO_0[7]_net_1 ));
    MX2 \adata_RNO_0[3]  (.A(adata_c[3]), .B(adatain_c[3]), .S(
        aload_data), .Y(N_6));
    
endmodule


module synchronizer_1(
       aack_c,
       aclk_c,
       back_c_c,
       arst_c
    );
output aack_c;
input  aclk_c;
input  back_c_c;
input  arst_c;

    wire q_RNO_net_1, q1_net_1, q1_RNO_net_1, GND, VCC;
    
    NOR2A q_RNO (.A(q1_net_1), .B(arst_c), .Y(q_RNO_net_1));
    NOR2A q1_RNO (.A(back_c_c), .B(arst_c), .Y(q1_RNO_net_1));
    DFN1 q (.D(q_RNO_net_1), .CLK(aclk_c), .Q(aack_c));
    VCC VCC_i (.Y(VCC));
    DFN1 q1 (.D(q1_RNO_net_1), .CLK(aclk_c), .Q(q1_net_1));
    GND GND_i (.Y(GND));
    
endmodule


module Handshake(
       aclk,
       arst,
       aready,
       anxtdata,
       adata,
       adatain,
       areq_fsm,
       astate,
       bclk,
       brst,
       bdata,
       bvalid,
       bload,
       back_fsm,
       bstate,
       back,
       areq,
       aack,
       breq
    );
input  aclk;
input  arst;
output aready;
output anxtdata;
output [7:0] adata;
output [7:0] adatain;
output areq_fsm;
output [1:0] astate;
input  bclk;
input  brst;
output [7:0] bdata;
output bvalid;
output bload;
output back_fsm;
output [1:0] bstate;
output back;
output areq;
output aack;
output breq;

    wire bloadq_RNO_net_1, un1_anxtdata_2, GND, VCC, 
        \state_1_RNIJN77[0] , aclk_c, arst_c, aready_c, anxtdata_c, 
        \adata_c[0] , \adata_c[1] , \adata_c[2] , \adata_c[3] , 
        \adata_c[4] , \adata_c[5] , \adata_c[6] , \adata_c[7] , 
        \adatain_c[0] , \adatain_c[1] , \adatain_c[2] , \adatain_c[3] , 
        \adatain_c[4] , \adatain_c[5] , \adatain_c[6] , \adatain_c[7] , 
        \astate_c[1] , bclk_c, brst_c, \bdata_c[0] , \bdata_c[1] , 
        \bdata_c[2] , \bdata_c[3] , \bdata_c[4] , \bdata_c[5] , 
        \bdata_c[6] , \bdata_c[7] , bload_c, bvalid_c_c, back_c_c, 
        areq_c_c, aack_c, breq_c, un1_anxtdata_NE_1, un1_anxtdata_NE_5, 
        aready_c_i;
    
    OUTBUF back_fsm_pad (.D(back_c_c), .PAD(back_fsm));
    OUTBUF areq_pad (.D(areq_c_c), .PAD(areq));
    OUTBUF \bstate_pad[1]  (.D(bvalid_c_c), .PAD(bstate[1]));
    OUTBUF \adatain_pad[6]  (.D(\adatain_c[6] ), .PAD(adatain[6]));
    OUTBUF \bdata_pad[3]  (.D(\bdata_c[3] ), .PAD(bdata[3]));
    CLKBUF bclk_pad (.PAD(bclk), .Y(bclk_c));
    OUTBUF \astate_pad[0]  (.D(aready_c_i), .PAD(astate[0]));
    VCC VCC_i (.Y(VCC));
    OUTBUF \adatain_pad[1]  (.D(\adatain_c[1] ), .PAD(adatain[1]));
    OUTBUF back_pad (.D(back_c_c), .PAD(back));
    OUTBUF \bstate_pad[0]  (.D(\state_1_RNIJN77[0] ), .PAD(bstate[0]));
    counter data_generator (.adata_c_0(\adata_c[7] ), .adatain_c({
        \adatain_c[7] , \adatain_c[6] , \adatain_c[5] , \adatain_c[4] , 
        \adatain_c[3] , \adatain_c[2] , \adatain_c[1] , \adatain_c[0] })
        , .aclk_c(aclk_c), .aready_c(aready_c), .un1_anxtdata_NE_5(
        un1_anxtdata_NE_5), .anxtdata_c(anxtdata_c), 
        .un1_anxtdata_NE_1(un1_anxtdata_NE_1), .un1_anxtdata_2(
        un1_anxtdata_2), .arst_c(arst_c));
    CLKBUF aclk_pad (.PAD(aclk), .Y(aclk_c));
    OUTBUF \adata_pad[0]  (.D(\adata_c[0] ), .PAD(adata[0]));
    OUTBUF \bdata_pad[0]  (.D(\bdata_c[0] ), .PAD(bdata[0]));
    OUTBUF areq_fsm_pad (.D(areq_c_c), .PAD(areq_fsm));
    synchronizer_0 a2b_sync (.breq_c(breq_c), .bclk_c(bclk_c), 
        .areq_c_c(areq_c_c), .brst_c(brst_c));
    OUTBUF \adata_pad[3]  (.D(\adata_c[3] ), .PAD(adata[3]));
    OUTBUF \adata_pad[6]  (.D(\adata_c[6] ), .PAD(adata[6]));
    receiver data_sink (.state_1_RNIJN77_0(\state_1_RNIJN77[0] ), 
        .adata_c({\adata_c[7] , \adata_c[6] , \adata_c[5] , 
        \adata_c[4] , \adata_c[3] , \adata_c[2] , \adata_c[1] , 
        \adata_c[0] }), .bdata_c({\bdata_c[7] , \bdata_c[6] , 
        \bdata_c[5] , \bdata_c[4] , \bdata_c[3] , \bdata_c[2] , 
        \bdata_c[1] , \bdata_c[0] }), .back_c_c(back_c_c), .breq_c(
        breq_c), .bvalid_c_c(bvalid_c_c), .bload_c(bload_c), .bclk_c(
        bclk_c), .brst_c(brst_c));
    OUTBUF \bdata_pad[1]  (.D(\bdata_c[1] ), .PAD(bdata[1]));
    OUTBUF \bdata_pad[7]  (.D(\bdata_c[7] ), .PAD(bdata[7]));
    INBUF brst_pad (.PAD(brst), .Y(brst_c));
    NOR2A bloadq_RNO (.A(bvalid_c_c), .B(brst_c), .Y(bloadq_RNO_net_1));
    GND GND_i (.Y(GND));
    OUTBUF \adata_pad[5]  (.D(\adata_c[5] ), .PAD(adata[5]));
    OUTBUF bvalid_pad (.D(bvalid_c_c), .PAD(bvalid));
    OUTBUF \adata_pad[1]  (.D(\adata_c[1] ), .PAD(adata[1]));
    OUTBUF \adatain_pad[3]  (.D(\adatain_c[3] ), .PAD(adatain[3]));
    OUTBUF \adata_pad[4]  (.D(\adata_c[4] ), .PAD(adata[4]));
    DFN1 bloadq (.D(bloadq_RNO_net_1), .CLK(bclk_c), .Q(bload_c));
    OUTBUF \bdata_pad[5]  (.D(\bdata_c[5] ), .PAD(bdata[5]));
    OUTBUF \adata_pad[2]  (.D(\adata_c[2] ), .PAD(adata[2]));
    OUTBUF \adatain_pad[0]  (.D(\adatain_c[0] ), .PAD(adatain[0]));
    OUTBUF aready_pad (.D(aready_c), .PAD(aready));
    OUTBUF \adatain_pad[2]  (.D(\adatain_c[2] ), .PAD(adatain[2]));
    OUTBUF breq_pad (.D(breq_c), .PAD(breq));
    INBUF arst_pad (.PAD(arst), .Y(arst_c));
    OUTBUF \bdata_pad[2]  (.D(\bdata_c[2] ), .PAD(bdata[2]));
    OUTBUF \adatain_pad[4]  (.D(\adatain_c[4] ), .PAD(adatain[4]));
    OUTBUF \adatain_pad[5]  (.D(\adatain_c[5] ), .PAD(adatain[5]));
    sender data_source (.astate_c_0(\astate_c[1] ), .adatain_c({
        \adatain_c[7] , \adatain_c[6] , \adatain_c[5] , \adatain_c[4] , 
        \adatain_c[3] , \adatain_c[2] , \adatain_c[1] , \adatain_c[0] })
        , .adata_c({\adata_c[7] , \adata_c[6] , \adata_c[5] , 
        \adata_c[4] , \adata_c[3] , \adata_c[2] , \adata_c[1] , 
        \adata_c[0] }), .aready_c_i(aready_c_i), .aready_c(aready_c), 
        .aack_c(aack_c), .areq_c_c(areq_c_c), .anxtdata_c(anxtdata_c), 
        .aclk_c(aclk_c), .un1_anxtdata_2(un1_anxtdata_2), .arst_c(
        arst_c), .un1_anxtdata_NE_1(un1_anxtdata_NE_1), 
        .un1_anxtdata_NE_5(un1_anxtdata_NE_5));
    OUTBUF bload_pad (.D(bload_c), .PAD(bload));
    OUTBUF \adatain_pad[7]  (.D(\adatain_c[7] ), .PAD(adatain[7]));
    synchronizer_1 b2a_sync (.aack_c(aack_c), .aclk_c(aclk_c), 
        .back_c_c(back_c_c), .arst_c(arst_c));
    OUTBUF aack_pad (.D(aack_c), .PAD(aack));
    OUTBUF \bdata_pad[6]  (.D(\bdata_c[6] ), .PAD(bdata[6]));
    OUTBUF anxtdata_pad (.D(anxtdata_c), .PAD(anxtdata));
    OUTBUF \adata_pad[7]  (.D(\adata_c[7] ), .PAD(adata[7]));
    OUTBUF \bdata_pad[4]  (.D(\bdata_c[4] ), .PAD(bdata[4]));
    OUTBUF \astate_pad[1]  (.D(\astate_c[1] ), .PAD(astate[1]));
    
endmodule
