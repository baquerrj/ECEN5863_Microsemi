`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


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

    wire CLK_c, CLR_c, PRE_c, \Q_c[4] , \Q_c[5] , \Q_c[6] , \Q_c[7] , 
        \Q_c[8] , \Q_c[9] , \Q_c[10] , \Q_c[11] , \Q_c[12] , \Q_c[13] , 
        \Q_c[14] , \Q_c[15] , TC_c, sQ0_net_1, sQ1_net_1, sQ2_net_1, 
        sQ3_c, sQ3_c_i, sQ2_c_i, sQ1_c_i, sQ0_c_i, 
        \Skewed_0/uQ_n4_i_0_net_1 , \Skewed_0/N_29 , \Skewed_0/N_28 , 
        \Skewed_0/uQ_m4_0_a2_5_net_1 , \Skewed_0/uQ_m2_0_a2_1_net_1 , 
        \Skewed_0/uQ_m4_0_a2_1_net_1 , \Skewed_0/uQ_m4_0_a2_3_net_1 , 
        \Skewed_0/TC_9_1_net_1 , \Skewed_0/uQ_m4_0_a2_3_0_net_1 , 
        \Skewed_0/uQ_m2_0_a2_2_net_1 , \Skewed_0/TC_9_net_1 , 
        \Skewed_0/N_23 , \Skewed_0/N_21 , \Skewed_0/N_19 , 
        \Skewed_0/N_17 , \Skewed_0/N_11 , \Skewed_0/uQ_N_5_mux_0_0 , 
        \Skewed_0/N_9 , \Skewed_0/N_80 , \Skewed_0/uQ_N_9_mux , 
        \Skewed_0/uQ_N_3_mux_0 , \Skewed_0/uQ_N_10_mux , 
        \Skewed_0/uQ_N_4_mux_0_0 , \Skewed_0/N_13 , \Skewed_0/uQ_n10 , 
        \Skewed_0/N_72 , \Skewed_0/uQ_n9 , \Skewed_0/N_15 , 
        \Skewed_0/N_70_i , \Skewed_0/N_89 , \Skewed_0/uQ_n11 , 
        \skewedClock_0/INV_3_Y , \skewedClock_0/INV_2_Y , 
        \skewedClock_0/INV_1_Y , \skewedClock_0/INV_0_Y , 
        \Q_pad[12]/U0/NET1 , \Q_pad[12]/U0/NET2 , \Q_pad[4]/U0/NET1 , 
        \Q_pad[4]/U0/NET2 , \CLR_pad/U0/NET1 , \Q_pad[9]/U0/NET1 , 
        \Q_pad[9]/U0/NET2 , \sQ0_pad/U0/NET1 , \sQ0_pad/U0/NET2 , 
        \Q_pad[2]/U0/NET1 , \Q_pad[2]/U0/NET2 , \Q_pad[14]/U0/NET1 , 
        \Q_pad[14]/U0/NET2 , \Q_pad[10]/U0/NET1 , \Q_pad[10]/U0/NET2 , 
        \PRE_pad/U0/NET1 , \Q_pad[5]/U0/NET1 , \Q_pad[5]/U0/NET2 , 
        \Q_pad[6]/U0/NET1 , \Q_pad[6]/U0/NET2 , \Q_pad[15]/U0/NET1 , 
        \Q_pad[15]/U0/NET2 , \sQ3_pad/U0/NET1 , \sQ3_pad/U0/NET2 , 
        \sQ2_pad/U0/NET1 , \sQ2_pad/U0/NET2 , \Q_pad[8]/U0/NET1 , 
        \Q_pad[8]/U0/NET2 , \Q_pad[3]/U0/NET1 , \Q_pad[3]/U0/NET2 , 
        \Q_pad[1]/U0/NET1 , \Q_pad[1]/U0/NET2 , \Q_pad[11]/U0/NET1 , 
        \Q_pad[11]/U0/NET2 , \Q_pad[0]/U0/NET1 , \Q_pad[0]/U0/NET2 , 
        \sQ1_pad/U0/NET1 , \sQ1_pad/U0/NET2 , \Q_pad[13]/U0/NET1 , 
        \Q_pad[13]/U0/NET2 , \Q_pad[7]/U0/NET1 , \Q_pad[7]/U0/NET2 , 
        \TC_pad/U0/NET1 , \TC_pad/U0/NET2 , VCC, \CLK_pad/U0/NET1 , 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR3B \Skewed_0/uQ_m4_0_a2_3  (.A(\Skewed_0/uQ_m2_0_a2_1_net_1 ), 
        .B(\Skewed_0/uQ_m4_0_a2_3_0_net_1 ), .C(\Skewed_0/N_28 ), .Y(
        \Skewed_0/uQ_N_10_mux ));
    DFN1E0 \Skewed_0/uQ[6]  (.D(\Skewed_0/N_13 ), .CLK(CLK_c), .E(
        \Skewed_0/N_89 ), .Q(\Q_c[10] ));
    IOTRI_OB_EB \sQ0_pad/U0/U1  (.D(sQ0_net_1), .E(VCC), .DOUT(
        \sQ0_pad/U0/NET1 ), .EOUT(\sQ0_pad/U0/NET2 ));
    INV \skewedClock_0/sQ0_inferred_clock_RNIP06D  (.A(sQ0_net_1), .Y(
        sQ0_c_i));
    IOPAD_TRI \sQ0_pad/U0/U0  (.D(\sQ0_pad/U0/NET1 ), .E(
        \sQ0_pad/U0/NET2 ), .PAD(sQ0));
    NOR2B \Skewed_0/uQ_m2_0_a2_1  (.A(\Q_c[8] ), .B(\Q_c[7] ), .Y(
        \Skewed_0/uQ_m2_0_a2_1_net_1 ));
    NOR3A \Skewed_0/uQ_n8_i  (.A(\Skewed_0/TC_9_net_1 ), .B(
        \Skewed_0/N_80 ), .C(\Skewed_0/uQ_N_9_mux ), .Y(\Skewed_0/N_9 )
        );
    NOR2A \Skewed_0/uQ_n4_i  (.A(\Skewed_0/TC_9_net_1 ), .B(
        \Skewed_0/uQ_n4_i_0_net_1 ), .Y(\Skewed_0/N_17 ));
    NOR2A \Skewed_0/uQ_m4_0_a2  (.A(\Skewed_0/uQ_m4_0_a2_5_net_1 ), .B(
        \Skewed_0/N_28 ), .Y(\Skewed_0/uQ_N_9_mux ));
    IOTRI_OB_EB \Q_pad[14]/U0/U1  (.D(\Q_c[14] ), .E(VCC), .DOUT(
        \Q_pad[14]/U0/NET1 ), .EOUT(\Q_pad[14]/U0/NET2 ));
    INV \skewedClock_0/INV_1  (.A(sQ1_net_1), .Y(
        \skewedClock_0/INV_1_Y ));
    IOPAD_TRI \Q_pad[15]/U0/U0  (.D(\Q_pad[15]/U0/NET1 ), .E(
        \Q_pad[15]/U0/NET2 ), .PAD(Q[15]));
    IOPAD_TRI \Q_pad[11]/U0/U0  (.D(\Q_pad[11]/U0/NET1 ), .E(
        \Q_pad[11]/U0/NET2 ), .PAD(Q[11]));
    IOIN_IB \CLR_pad/U0/U1  (.YIN(\CLR_pad/U0/NET1 ), .Y(CLR_c));
    DFN1E0 \Skewed_0/uQ[3]  (.D(\Skewed_0/N_19 ), .CLK(CLK_c), .E(
        \Skewed_0/N_89 ), .Q(\Q_c[7] ));
    IOTRI_OB_EB \Q_pad[0]/U0/U1  (.D(sQ0_c_i), .E(VCC), .DOUT(
        \Q_pad[0]/U0/NET1 ), .EOUT(\Q_pad[0]/U0/NET2 ));
    IOPAD_TRI \sQ3_pad/U0/U0  (.D(\sQ3_pad/U0/NET1 ), .E(
        \sQ3_pad/U0/NET2 ), .PAD(sQ3));
    IOTRI_OB_EB \Q_pad[7]/U0/U1  (.D(\Q_c[7] ), .E(VCC), .DOUT(
        \Q_pad[7]/U0/NET1 ), .EOUT(\Q_pad[7]/U0/NET2 ));
    IOPAD_TRI \Q_pad[10]/U0/U0  (.D(\Q_pad[10]/U0/NET1 ), .E(
        \Q_pad[10]/U0/NET2 ), .PAD(Q[10]));
    NOR3C \Skewed_0/uQ_m1_0_a2  (.A(\Q_c[14] ), .B(\Q_c[13] ), .C(
        \Skewed_0/uQ_N_9_mux ), .Y(\Skewed_0/uQ_N_3_mux_0 ));
    IOTRI_OB_EB \Q_pad[1]/U0/U1  (.D(sQ1_c_i), .E(VCC), .DOUT(
        \Q_pad[1]/U0/NET1 ), .EOUT(\Q_pad[1]/U0/NET2 ));
    IOPAD_TRI \Q_pad[3]/U0/U0  (.D(\Q_pad[3]/U0/NET1 ), .E(
        \Q_pad[3]/U0/NET2 ), .PAD(Q[3]));
    IOTRI_OB_EB \Q_pad[2]/U0/U1  (.D(sQ2_c_i), .E(VCC), .DOUT(
        \Q_pad[2]/U0/NET1 ), .EOUT(\Q_pad[2]/U0/NET2 ));
    NOR3B \Skewed_0/uQ_m1_0_a2_0  (.A(\Skewed_0/uQ_m2_0_a2_1_net_1 ), 
        .B(\Q_c[6] ), .C(\Skewed_0/N_28 ), .Y(
        \Skewed_0/uQ_N_4_mux_0_0 ));
    IOPAD_TRI \Q_pad[12]/U0/U0  (.D(\Q_pad[12]/U0/NET1 ), .E(
        \Q_pad[12]/U0/NET2 ), .PAD(Q[12]));
    XA1 \Skewed_0/uQ_n6_i_1  (.A(\Skewed_0/uQ_N_10_mux ), .B(\Q_c[10] )
        , .C(\Skewed_0/TC_9_net_1 ), .Y(\Skewed_0/N_13 ));
    IOPAD_TRI \Q_pad[6]/U0/U0  (.D(\Q_pad[6]/U0/NET1 ), .E(
        \Q_pad[6]/U0/NET2 ), .PAD(Q[6]));
    DFN1E0 \Skewed_0/uQ[9]  (.D(\Skewed_0/uQ_n9 ), .CLK(CLK_c), .E(
        \Skewed_0/N_89 ), .Q(\Q_c[13] ));
    DFN1P0 \skewedClock_0/DFN1P0_3  (.D(\skewedClock_0/INV_2_Y ), .CLK(
        sQ2_net_1), .PRE(PRE_c), .Q(sQ3_c));
    IOTRI_OB_EB \Q_pad[5]/U0/U1  (.D(\Q_c[5] ), .E(VCC), .DOUT(
        \Q_pad[5]/U0/NET1 ), .EOUT(\Q_pad[5]/U0/NET2 ));
    IOPAD_TRI \Q_pad[14]/U0/U0  (.D(\Q_pad[14]/U0/NET1 ), .E(
        \Q_pad[14]/U0/NET2 ), .PAD(Q[14]));
    NOR2B \Skewed_0/uQ_m4_0_a2_1  (.A(\Q_c[11] ), .B(\Q_c[9] ), .Y(
        \Skewed_0/uQ_m4_0_a2_1_net_1 ));
    IOTRI_OB_EB \Q_pad[4]/U0/U1  (.D(\Q_c[4] ), .E(VCC), .DOUT(
        \Q_pad[4]/U0/NET1 ), .EOUT(\Q_pad[4]/U0/NET2 ));
    XA1 \Skewed_0/uQ_n5_i  (.A(\Skewed_0/uQ_N_4_mux_0_0 ), .B(\Q_c[9] )
        , .C(\Skewed_0/TC_9_net_1 ), .Y(\Skewed_0/N_15 ));
    XA1 \Skewed_0/uQ_n1_i  (.A(\Q_c[4] ), .B(\Q_c[5] ), .C(
        \Skewed_0/TC_9_net_1 ), .Y(\Skewed_0/N_23 ));
    DFN1E0 \Skewed_0/uQ[11]  (.D(\Skewed_0/uQ_n11 ), .CLK(CLK_c), .E(
        \Skewed_0/N_89 ), .Q(\Q_c[15] ));
    IOPAD_TRI \sQ2_pad/U0/U0  (.D(\sQ2_pad/U0/NET1 ), .E(
        \sQ2_pad/U0/NET2 ), .PAD(sQ2));
    DFN1E0 \Skewed_0/uQ[5]  (.D(\Skewed_0/N_15 ), .CLK(CLK_c), .E(
        \Skewed_0/N_89 ), .Q(\Q_c[9] ));
    XA1A \Skewed_0/uQ_n2_i  (.A(\Skewed_0/N_28 ), .B(\Q_c[6] ), .C(
        \Skewed_0/TC_9_net_1 ), .Y(\Skewed_0/N_21 ));
    AOI1 \Skewed_0/uQ_n8_i_a2  (.A(\Q_c[11] ), .B(
        \Skewed_0/uQ_N_5_mux_0_0 ), .C(\Q_c[12] ), .Y(\Skewed_0/N_80 ));
    XA1 \Skewed_0/uQ_n7_i  (.A(\Skewed_0/uQ_N_5_mux_0_0 ), .B(
        \Q_c[11] ), .C(\Skewed_0/TC_9_net_1 ), .Y(\Skewed_0/N_11 ));
    IOTRI_OB_EB \Q_pad[8]/U0/U1  (.D(\Q_c[8] ), .E(VCC), .DOUT(
        \Q_pad[8]/U0/NET1 ), .EOUT(\Q_pad[8]/U0/NET2 ));
    IOTRI_OB_EB \Q_pad[13]/U0/U1  (.D(\Q_c[13] ), .E(VCC), .DOUT(
        \Q_pad[13]/U0/NET1 ), .EOUT(\Q_pad[13]/U0/NET2 ));
    IOPAD_TRI \Q_pad[0]/U0/U0  (.D(\Q_pad[0]/U0/NET1 ), .E(
        \Q_pad[0]/U0/NET2 ), .PAD(Q[0]));
    IOTRI_OB_EB \sQ1_pad/U0/U1  (.D(sQ1_net_1), .E(VCC), .DOUT(
        \sQ1_pad/U0/NET1 ), .EOUT(\sQ1_pad/U0/NET2 ));
    NOR3C \Skewed_0/uQ_m4_0_a2_5  (.A(\Skewed_0/uQ_m2_0_a2_1_net_1 ), 
        .B(\Skewed_0/uQ_m4_0_a2_1_net_1 ), .C(
        \Skewed_0/uQ_m4_0_a2_3_net_1 ), .Y(
        \Skewed_0/uQ_m4_0_a2_5_net_1 ));
    IOTRI_OB_EB \sQ3_pad/U0/U1  (.D(sQ3_c), .E(VCC), .DOUT(
        \sQ3_pad/U0/NET1 ), .EOUT(\sQ3_pad/U0/NET2 ));
    IOPAD_IN \CLR_pad/U0/U0  (.PAD(CLR), .Y(\CLR_pad/U0/NET1 ));
    CLKSRC \CLK_pad/U0/U1  (.A(\CLK_pad/U0/NET1 ), .Y(CLK_c));
    IOPAD_TRI \Q_pad[7]/U0/U0  (.D(\Q_pad[7]/U0/NET1 ), .E(
        \Q_pad[7]/U0/NET2 ), .PAD(Q[7]));
    DFN1P0 \skewedClock_0/DFN1P0_1  (.D(\skewedClock_0/INV_1_Y ), .CLK(
        sQ0_net_1), .PRE(PRE_c), .Q(sQ1_net_1));
    IOTRI_OB_EB \Q_pad[9]/U0/U1  (.D(\Q_c[9] ), .E(VCC), .DOUT(
        \Q_pad[9]/U0/NET1 ), .EOUT(\Q_pad[9]/U0/NET2 ));
    OR2A \Skewed_0/uQ_n3_i_o2  (.A(\Q_c[6] ), .B(\Skewed_0/N_28 ), .Y(
        \Skewed_0/N_29 ));
    IOPAD_TRI \Q_pad[1]/U0/U0  (.D(\Q_pad[1]/U0/NET1 ), .E(
        \Q_pad[1]/U0/NET2 ), .PAD(Q[1]));
    NOR3 \Skewed_0/TC_9_1  (.A(sQ0_net_1), .B(sQ3_c), .C(sQ1_net_1), 
        .Y(\Skewed_0/TC_9_1_net_1 ));
    IOTRI_OB_EB \TC_pad/U0/U1  (.D(TC_c), .E(VCC), .DOUT(
        \TC_pad/U0/NET1 ), .EOUT(\TC_pad/U0/NET2 ));
    IOPAD_TRI \TC_pad/U0/U0  (.D(\TC_pad/U0/NET1 ), .E(
        \TC_pad/U0/NET2 ), .PAD(TC));
    NOR2A \Skewed_0/TC_9  (.A(\Skewed_0/TC_9_1_net_1 ), .B(sQ2_net_1), 
        .Y(\Skewed_0/TC_9_net_1 ));
    IOPAD_TRI \Q_pad[2]/U0/U0  (.D(\Q_pad[2]/U0/NET1 ), .E(
        \Q_pad[2]/U0/NET2 ), .PAD(Q[2]));
    NOR3C \Skewed_0/uQ_m1_0_a2_RNIPAPD1  (.A(\Q_c[15] ), .B(
        \Skewed_0/TC_9_net_1 ), .C(\Skewed_0/uQ_N_3_mux_0 ), .Y(TC_c));
    DFN1E0 \Skewed_0/uQ[4]  (.D(\Skewed_0/N_17 ), .CLK(CLK_c), .E(
        \Skewed_0/N_89 ), .Q(\Q_c[8] ));
    IOTRI_OB_EB \sQ2_pad/U0/U1  (.D(sQ2_net_1), .E(VCC), .DOUT(
        \sQ2_pad/U0/NET1 ), .EOUT(\sQ2_pad/U0/NET2 ));
    OR2B \Skewed_0/uQ_n10_0_o2  (.A(\Q_c[13] ), .B(
        \Skewed_0/uQ_N_9_mux ), .Y(\Skewed_0/N_72 ));
    DFN1E0 \Skewed_0/uQ[2]  (.D(\Skewed_0/N_21 ), .CLK(CLK_c), .E(
        \Skewed_0/N_89 ), .Q(\Q_c[6] ));
    IOPAD_IN \CLK_pad/U0/U0  (.PAD(CLK), .Y(\CLK_pad/U0/NET1 ));
    IOPAD_TRI \Q_pad[5]/U0/U0  (.D(\Q_pad[5]/U0/NET1 ), .E(
        \Q_pad[5]/U0/NET2 ), .PAD(Q[5]));
    IOPAD_TRI \Q_pad[4]/U0/U0  (.D(\Q_pad[4]/U0/NET1 ), .E(
        \Q_pad[4]/U0/NET2 ), .PAD(Q[4]));
    IOPAD_TRI \Q_pad[13]/U0/U0  (.D(\Q_pad[13]/U0/NET1 ), .E(
        \Q_pad[13]/U0/NET2 ), .PAD(Q[13]));
    NOR3B \Skewed_0/uQ_m2_0_a2  (.A(\Skewed_0/uQ_m2_0_a2_2_net_1 ), .B(
        \Skewed_0/uQ_m2_0_a2_1_net_1 ), .C(\Skewed_0/N_28 ), .Y(
        \Skewed_0/uQ_N_5_mux_0_0 ));
    XA1 \Skewed_0/uQ_n9_0  (.A(\Skewed_0/uQ_N_9_mux ), .B(\Q_c[13] ), 
        .C(\Skewed_0/TC_9_net_1 ), .Y(\Skewed_0/uQ_n9 ));
    XA1 \Skewed_0/uQ_n11_0  (.A(\Q_c[15] ), .B(\Skewed_0/uQ_N_3_mux_0 )
        , .C(\Skewed_0/TC_9_net_1 ), .Y(\Skewed_0/uQ_n11 ));
    INV \skewedClock_0/INV_2  (.A(sQ3_c), .Y(\skewedClock_0/INV_2_Y ));
    INV \skewedClock_0/INV_3  (.A(sQ2_net_1), .Y(
        \skewedClock_0/INV_3_Y ));
    IOTRI_OB_EB \Q_pad[15]/U0/U1  (.D(\Q_c[15] ), .E(VCC), .DOUT(
        \Q_pad[15]/U0/NET1 ), .EOUT(\Q_pad[15]/U0/NET2 ));
    IOPAD_TRI \Q_pad[8]/U0/U0  (.D(\Q_pad[8]/U0/NET1 ), .E(
        \Q_pad[8]/U0/NET2 ), .PAD(Q[8]));
    IOTRI_OB_EB \Q_pad[11]/U0/U1  (.D(\Q_c[11] ), .E(VCC), .DOUT(
        \Q_pad[11]/U0/NET1 ), .EOUT(\Q_pad[11]/U0/NET2 ));
    NOR2B \Skewed_0/uQ_m4_0_a2_3_0  (.A(\Q_c[9] ), .B(\Q_c[6] ), .Y(
        \Skewed_0/uQ_m4_0_a2_3_0_net_1 ));
    NOR2A \Skewed_0/uQ_n0_i_a2  (.A(\Skewed_0/TC_9_net_1 ), .B(
        \Q_c[4] ), .Y(\Skewed_0/N_70_i ));
    DFN1E0 \Skewed_0/uQ[10]  (.D(\Skewed_0/uQ_n10 ), .CLK(CLK_c), .E(
        \Skewed_0/N_89 ), .Q(\Q_c[14] ));
    INV \skewedClock_0/sQ1_inferred_clock_RNIQFF7  (.A(sQ1_net_1), .Y(
        sQ1_c_i));
    INV \skewedClock_0/INV_0  (.A(sQ0_net_1), .Y(
        \skewedClock_0/INV_0_Y ));
    DFN1P0 \skewedClock_0/DFN1P0_0  (.D(\skewedClock_0/INV_0_Y ), .CLK(
        CLK_c), .PRE(PRE_c), .Q(sQ0_net_1));
    NOR3C \Skewed_0/uQ_m2_0_a2_2  (.A(\Q_c[9] ), .B(\Q_c[10] ), .C(
        \Q_c[6] ), .Y(\Skewed_0/uQ_m2_0_a2_2_net_1 ));
    IOTRI_OB_EB \Q_pad[3]/U0/U1  (.D(sQ3_c_i), .E(VCC), .DOUT(
        \Q_pad[3]/U0/NET1 ), .EOUT(\Q_pad[3]/U0/NET2 ));
    INV \skewedClock_0/DFN1P0_3_RNI7RRE  (.A(sQ3_c), .Y(sQ3_c_i));
    IOTRI_OB_EB \Q_pad[10]/U0/U1  (.D(\Q_c[10] ), .E(VCC), .DOUT(
        \Q_pad[10]/U0/NET1 ), .EOUT(\Q_pad[10]/U0/NET2 ));
    NOR3C \Skewed_0/uQ_m4_0_a2_3_3  (.A(\Q_c[10] ), .B(\Q_c[12] ), .C(
        \Q_c[6] ), .Y(\Skewed_0/uQ_m4_0_a2_3_net_1 ));
    DFN1E0 \Skewed_0/uQ[1]  (.D(\Skewed_0/N_23 ), .CLK(CLK_c), .E(
        \Skewed_0/N_89 ), .Q(\Q_c[5] ));
    DFN1P0 \skewedClock_0/DFN1P0_2  (.D(\skewedClock_0/INV_3_Y ), .CLK(
        sQ1_net_1), .PRE(PRE_c), .Q(sQ2_net_1));
    DFN1E0 \Skewed_0/uQ[7]  (.D(\Skewed_0/N_11 ), .CLK(CLK_c), .E(
        \Skewed_0/N_89 ), .Q(\Q_c[11] ));
    IOPAD_TRI \Q_pad[9]/U0/U0  (.D(\Q_pad[9]/U0/NET1 ), .E(
        \Q_pad[9]/U0/NET2 ), .PAD(Q[9]));
    INV \skewedClock_0/sQ2_inferred_clock_RNIRUO1  (.A(sQ2_net_1), .Y(
        sQ2_c_i));
    IOTRI_OB_EB \Q_pad[6]/U0/U1  (.D(\Q_c[6] ), .E(VCC), .DOUT(
        \Q_pad[6]/U0/NET1 ), .EOUT(\Q_pad[6]/U0/NET2 ));
    IOPAD_IN \PRE_pad/U0/U0  (.PAD(PRE), .Y(\PRE_pad/U0/NET1 ));
    IOPAD_TRI \sQ1_pad/U0/U0  (.D(\sQ1_pad/U0/NET1 ), .E(
        \sQ1_pad/U0/NET2 ), .PAD(sQ1));
    OR2B \Skewed_0/uQ_n2_i_o2  (.A(\Q_c[5] ), .B(\Q_c[4] ), .Y(
        \Skewed_0/N_28 ));
    XA1A \Skewed_0/uQ_n3_i  (.A(\Skewed_0/N_29 ), .B(\Q_c[7] ), .C(
        \Skewed_0/TC_9_net_1 ), .Y(\Skewed_0/N_19 ));
    DFN1E0 \Skewed_0/uQ[8]  (.D(\Skewed_0/N_9 ), .CLK(CLK_c), .E(
        \Skewed_0/N_89 ), .Q(\Q_c[12] ));
    IOIN_IB \PRE_pad/U0/U1  (.YIN(\PRE_pad/U0/NET1 ), .Y(PRE_c));
    XA1A \Skewed_0/uQ_n10_0  (.A(\Skewed_0/N_72 ), .B(\Q_c[14] ), .C(
        \Skewed_0/TC_9_net_1 ), .Y(\Skewed_0/uQ_n10 ));
    IOTRI_OB_EB \Q_pad[12]/U0/U1  (.D(\Q_c[12] ), .E(VCC), .DOUT(
        \Q_pad[12]/U0/NET1 ), .EOUT(\Q_pad[12]/U0/NET2 ));
    AX1A \Skewed_0/uQ_n4_i_0  (.A(\Skewed_0/N_29 ), .B(\Q_c[7] ), .C(
        \Q_c[8] ), .Y(\Skewed_0/uQ_n4_i_0_net_1 ));
    DFN1E0 \Skewed_0/uQ[0]  (.D(\Skewed_0/N_70_i ), .CLK(CLK_c), .E(
        \Skewed_0/N_89 ), .Q(\Q_c[4] ));
    NOR2 \Skewed_0/uQlde_i_a2  (.A(CLR_c), .B(\Skewed_0/TC_9_net_1 ), 
        .Y(\Skewed_0/N_89 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
