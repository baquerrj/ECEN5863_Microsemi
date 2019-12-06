`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


module Skewed(
       clk,
       reset,
       TC
    );
input  clk;
input  reset;
output TC;

    wire \q[0]_net_1 , \q[1]_net_1 , \q[2]_net_1 , \q[3]_net_1 , 
        \q[4]_net_1 , \q[5]_net_1 , \q[6]_net_1 , \q[7]_net_1 , 
        \q[8]_net_1 , \q[9]_net_1 , \q[10]_net_1 , \q[11]_net_1 , 
        \q[12]_net_1 , \q[13]_net_1 , \q[14]_net_1 , \q[15]_net_1 , 
        q_n9, q_n10, q_n11, q_n12, q_n13, q_n14, q_n15, N_12, N_14, 
        N_16, N_18, N_20, N_22, N_24, N_26, N_29, N_30, N_32, N_33, 
        N_35, N_71, N_72, N_73, N_90, N_92, N_93, N_95, N_97, clk_c, 
        reset_c, TC_c, q_n12_0_o2_N_13_mux, q_n11_0_o2_N_13_mux, 
        q_n10_0_N_11_mux, q_n9_0_N_11_mux, q_n9_0_m4_e_3_net_1, 
        q_n9_0_m4_e_4_net_1, q_n11_0_o2_m6_0_a2_2_net_1, 
        q_n11_0_o2_m6_0_a2_4_net_1, q_n11_0_o2_m6_0_a2_5_net_1, 
        q_n11_0_o2_m6_0_a2_6_net_1, q_n10_0_m4_0_a2_2_net_1, 
        q_n10_0_m4_0_a2_3_net_1, q_n10_0_m4_0_a2_4_net_1, 
        q_n9_0_m4_e_1, q_n12_0_o2_m6_0_a2_4_net_1, 
        q_n12_0_o2_m6_0_a2_5_net_1, q_n12_0_o2_m6_0_a2_6_net_1, 
        q_n6_i_o2_out, q_n8_i_o2_out_0, \reset_pad/U0/NET1 , 
        \TC_pad/U0/NET1 , \TC_pad/U0/NET2 , VCC, \clk_pad/U0/NET1 , 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR3B q_n10_0_m4_0_a2 (.A(q_n10_0_m4_0_a2_4_net_1), .B(
        q_n10_0_m4_0_a2_3_net_1), .C(N_30), .Y(q_n10_0_N_11_mux));
    DFN1 \q[11]  (.D(q_n11), .CLK(clk_c), .Q(\q[11]_net_1 ));
    XA1C q_n13_0 (.A(\q[13]_net_1 ), .B(N_71), .C(reset_c), .Y(q_n13));
    NOR2A q_n2_i_a2 (.A(N_29), .B(\q[2]_net_1 ), .Y(N_95));
    OR3A q_n8_i_o2 (.A(\q[3]_net_1 ), .B(N_30), .C(q_n8_i_o2_out_0), 
        .Y(N_35));
    DFN1 \q[1]  (.D(N_26), .CLK(clk_c), .Q(\q[1]_net_1 ));
    NOR3C q_n11_0_o2_m6_0_a2_5 (.A(\q[5]_net_1 ), .B(\q[9]_net_1 ), .C(
        q_n11_0_o2_m6_0_a2_2_net_1), .Y(q_n11_0_o2_m6_0_a2_5_net_1));
    XA1C q_n8_i (.A(\q[8]_net_1 ), .B(N_35), .C(reset_c), .Y(N_12));
    NOR3C q_n12_0_o2_m6_0_a2_6 (.A(\q[4]_net_1 ), .B(\q[5]_net_1 ), .C(
        q_n12_0_o2_m6_0_a2_4_net_1), .Y(q_n12_0_o2_m6_0_a2_6_net_1));
    DFN1 \q[5]  (.D(N_18), .CLK(clk_c), .Q(\q[5]_net_1 ));
    NOR3B q_n12_0_o2_m6_0_a2 (.A(q_n12_0_o2_m6_0_a2_6_net_1), .B(
        q_n12_0_o2_m6_0_a2_5_net_1), .C(N_30), .Y(q_n12_0_o2_N_13_mux));
    NOR3C q_n10_0_m4_0_a2_3 (.A(\q[6]_net_1 ), .B(\q[9]_net_1 ), .C(
        \q[7]_net_1 ), .Y(q_n10_0_m4_0_a2_3_net_1));
    NOR3A q_n7_i (.A(N_35), .B(N_90), .C(reset_c), .Y(N_14));
    DFN1 \q[10]  (.D(q_n10), .CLK(clk_c), .Q(\q[10]_net_1 ));
    NOR3A q_n4_i (.A(N_32), .B(N_93), .C(reset_c), .Y(N_20));
    DFN1 \q[0]  (.D(N_97), .CLK(clk_c), .Q(\q[0]_net_1 ));
    OR2B q_n13_0_o2 (.A(q_n12_0_o2_N_13_mux), .B(\q[12]_net_1 ), .Y(
        N_71));
    DFN1 \q[7]  (.D(N_14), .CLK(clk_c), .Q(\q[7]_net_1 ));
    OR2A q_n14_0_o2 (.A(\q[13]_net_1 ), .B(N_71), .Y(N_72));
    NOR3C q_n12_0_o2_m6_0_a2_5 (.A(\q[8]_net_1 ), .B(\q[9]_net_1 ), .C(
        q_n9_0_m4_e_1), .Y(q_n12_0_o2_m6_0_a2_5_net_1));
    XA1B q_n12_0 (.A(\q[12]_net_1 ), .B(q_n12_0_o2_N_13_mux), .C(
        reset_c), .Y(q_n12));
    OR2B q_n6_i_o2_s (.A(\q[4]_net_1 ), .B(\q[5]_net_1 ), .Y(
        q_n6_i_o2_out));
    DFN1 \q[3]  (.D(N_22), .CLK(clk_c), .Q(\q[3]_net_1 ));
    CLKSRC \clk_pad/U0/U1  (.A(\clk_pad/U0/NET1 ), .Y(clk_c));
    IOIN_IB \reset_pad/U0/U1  (.YIN(\reset_pad/U0/NET1 ), .Y(reset_c));
    NOR3B q_n11_0_o2_m6_0_a2 (.A(q_n11_0_o2_m6_0_a2_5_net_1), .B(
        q_n11_0_o2_m6_0_a2_6_net_1), .C(N_29), .Y(q_n11_0_o2_N_13_mux));
    DFN1 \q[6]  (.D(N_16), .CLK(clk_c), .Q(\q[6]_net_1 ));
    NOR2 q_n0_i_a2 (.A(reset_c), .B(\q[0]_net_1 ), .Y(N_97));
    OR3A q_n6_i_o2 (.A(\q[3]_net_1 ), .B(N_30), .C(q_n6_i_o2_out), .Y(
        N_33));
    XA1C q_n3_i (.A(\q[3]_net_1 ), .B(N_30), .C(reset_c), .Y(N_22));
    OR2B q_n2_i_o2 (.A(\q[1]_net_1 ), .B(\q[0]_net_1 ), .Y(N_29));
    DFN1 \q[9]  (.D(q_n9), .CLK(clk_c), .Q(\q[9]_net_1 ));
    NOR3A q_n5_i (.A(N_33), .B(N_92), .C(reset_c), .Y(N_18));
    NOR3A q_n2_i (.A(N_30), .B(N_95), .C(reset_c), .Y(N_24));
    DFN1 \q[14]  (.D(q_n14), .CLK(clk_c), .Q(\q[14]_net_1 ));
    IOTRI_OB_EB \TC_pad/U0/U1  (.D(TC_c), .E(VCC), .DOUT(
        \TC_pad/U0/NET1 ), .EOUT(\TC_pad/U0/NET2 ));
    IOPAD_TRI \TC_pad/U0/U0  (.D(\TC_pad/U0/NET1 ), .E(
        \TC_pad/U0/NET2 ), .PAD(TC));
    DFN1 \q[13]  (.D(q_n13), .CLK(clk_c), .Q(\q[13]_net_1 ));
    NOR3C q_n11_0_o2_m6_0_a2_4 (.A(\q[2]_net_1 ), .B(\q[10]_net_1 ), 
        .C(\q[6]_net_1 ), .Y(q_n11_0_o2_m6_0_a2_4_net_1));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    OR3C q_n3_i_o2 (.A(\q[2]_net_1 ), .B(\q[1]_net_1 ), .C(
        \q[0]_net_1 ), .Y(N_30));
    DFN1 \q[2]  (.D(N_24), .CLK(clk_c), .Q(\q[2]_net_1 ));
    IOPAD_IN \clk_pad/U0/U0  (.PAD(clk), .Y(\clk_pad/U0/NET1 ));
    NOR2A TC_pad_RNO (.A(\q[15]_net_1 ), .B(N_73), .Y(TC_c));
    OR3B q_n8_i_o2_s_0 (.A(\q[7]_net_1 ), .B(\q[6]_net_1 ), .C(
        q_n6_i_o2_out), .Y(q_n8_i_o2_out_0));
    XA1C q_n6_i (.A(\q[6]_net_1 ), .B(N_33), .C(reset_c), .Y(N_16));
    OA1C q_n4_i_a2 (.A(\q[3]_net_1 ), .B(N_30), .C(\q[4]_net_1 ), .Y(
        N_93));
    XA1B q_n1_i (.A(\q[0]_net_1 ), .B(\q[1]_net_1 ), .C(reset_c), .Y(
        N_26));
    NOR3B q_n9_0_m4_e (.A(q_n9_0_m4_e_3_net_1), .B(q_n9_0_m4_e_4_net_1)
        , .C(N_29), .Y(q_n9_0_N_11_mux));
    NOR2B q_n11_0_o2_m6_0_a2_2 (.A(\q[4]_net_1 ), .B(\q[3]_net_1 ), .Y(
        q_n11_0_o2_m6_0_a2_2_net_1));
    XA1C q_n14_0 (.A(\q[14]_net_1 ), .B(N_72), .C(reset_c), .Y(q_n14));
    OA1C q_n7_i_a2 (.A(\q[6]_net_1 ), .B(N_33), .C(\q[7]_net_1 ), .Y(
        N_90));
    NOR2A q_n5_i_a2 (.A(N_32), .B(\q[5]_net_1 ), .Y(N_92));
    DFN1 \q[8]  (.D(N_12), .CLK(clk_c), .Q(\q[8]_net_1 ));
    XA1C q_n15_0 (.A(\q[15]_net_1 ), .B(N_73), .C(reset_c), .Y(q_n15));
    DFN1 \q[12]  (.D(q_n12), .CLK(clk_c), .Q(\q[12]_net_1 ));
    NOR2B q_n10_0_m4_0_a2_2 (.A(\q[3]_net_1 ), .B(\q[8]_net_1 ), .Y(
        q_n10_0_m4_0_a2_2_net_1));
    DFN1 \q[15]  (.D(q_n15), .CLK(clk_c), .Q(\q[15]_net_1 ));
    NOR3C q_n9_0_m4_e_4 (.A(\q[4]_net_1 ), .B(\q[5]_net_1 ), .C(
        q_n9_0_m4_e_1), .Y(q_n9_0_m4_e_4_net_1));
    NOR3C q_n10_0_m4_0_a2_4 (.A(\q[4]_net_1 ), .B(\q[5]_net_1 ), .C(
        q_n10_0_m4_0_a2_2_net_1), .Y(q_n10_0_m4_0_a2_4_net_1));
    XA1B q_n9_0_m6 (.A(q_n9_0_N_11_mux), .B(\q[9]_net_1 ), .C(reset_c), 
        .Y(q_n9));
    NOR3C q_n12_0_o2_m6_0_a2_4 (.A(\q[11]_net_1 ), .B(\q[10]_net_1 ), 
        .C(\q[3]_net_1 ), .Y(q_n12_0_o2_m6_0_a2_4_net_1));
    DFN1 \q[4]  (.D(N_20), .CLK(clk_c), .Q(\q[4]_net_1 ));
    NOR3C q_n9_0_m4_e_3 (.A(\q[8]_net_1 ), .B(\q[2]_net_1 ), .C(
        \q[3]_net_1 ), .Y(q_n9_0_m4_e_3_net_1));
    OR3B q_n5_i_o2 (.A(\q[3]_net_1 ), .B(\q[4]_net_1 ), .C(N_30), .Y(
        N_32));
    NOR3C q_n11_0_o2_m6_0_a2_6 (.A(\q[7]_net_1 ), .B(\q[8]_net_1 ), .C(
        q_n11_0_o2_m6_0_a2_4_net_1), .Y(q_n11_0_o2_m6_0_a2_6_net_1));
    XA1B q_n10_0_m6 (.A(q_n10_0_N_11_mux), .B(\q[10]_net_1 ), .C(
        reset_c), .Y(q_n10));
    OR3B q_n15_0_o2 (.A(\q[13]_net_1 ), .B(\q[14]_net_1 ), .C(N_71), 
        .Y(N_73));
    NOR2B q_n12_0_o2_m6_0_a2_2 (.A(\q[7]_net_1 ), .B(\q[6]_net_1 ), .Y(
        q_n9_0_m4_e_1));
    XA1B q_n11_0 (.A(\q[11]_net_1 ), .B(q_n11_0_o2_N_13_mux), .C(
        reset_c), .Y(q_n11));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
