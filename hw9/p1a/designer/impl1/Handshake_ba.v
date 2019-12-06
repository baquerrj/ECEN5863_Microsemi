`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


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

    wire \state_1_RNIJN77[0] , aclk_c, arst_c, aready_c, anxtdata_c, 
        \adata_c[0] , \adata_c[1] , \adata_c[2] , \adata_c[3] , 
        \adata_c[4] , \adata_c[5] , \adata_c[6] , \adata_c[7] , 
        \adatain_c[0] , \adatain_c[1] , \adatain_c[2] , \adatain_c[3] , 
        \adatain_c[4] , \adatain_c[5] , \adatain_c[6] , \adatain_c[7] , 
        \astate_c[1] , bclk_c, brst_c, \bdata_c[0] , \bdata_c[1] , 
        \bdata_c[2] , \bdata_c[3] , \bdata_c[4] , \bdata_c[5] , 
        \bdata_c[6] , \bdata_c[7] , bload_c, bvalid_c_c, back_c_c, 
        areq_c_c, aack_c, breq_c, \adata_pad[7]/U0/NET1 , 
        \adata_pad[7]/U0/NET2 , \adata_pad[4]/U0/NET1 , 
        \adata_pad[4]/U0/NET2 , \astate_pad[1]/U0/NET1 , 
        \astate_pad[1]/U0/NET2 , \adata_pad[2]/U0/NET1 , 
        \adata_pad[2]/U0/NET2 , \bstate_pad[0]/U0/NET1 , 
        \bstate_pad[0]/U0/NET2 , \adatain_pad[5]/U0/NET1 , 
        \adatain_pad[5]/U0/NET2 , \bload_pad/U0/NET1 , 
        \bload_pad/U0/NET2 , \astate_pad[0]/U0/NET1 , 
        \astate_pad[0]/U0/NET2 , \adatain_pad[1]/U0/NET1 , 
        \adatain_pad[1]/U0/NET2 , \bdata_pad[7]/U0/NET1 , 
        \bdata_pad[7]/U0/NET2 , \adatain_pad[0]/U0/NET1 , 
        \adatain_pad[0]/U0/NET2 , \aready_pad/U0/NET1 , 
        \aready_pad/U0/NET2 , \adata_pad[0]/U0/NET1 , 
        \adata_pad[0]/U0/NET2 , \bdata_pad[0]/U0/NET1 , 
        \bdata_pad[0]/U0/NET2 , \arst_pad/U0/NET1 , \aclk_pad/U0/NET1 , 
        \adata_pad[1]/U0/NET1 , \adata_pad[1]/U0/NET2 , 
        \adatain_pad[4]/U0/NET1 , \adatain_pad[4]/U0/NET2 , 
        \adatain_pad[3]/U0/NET1 , \adatain_pad[3]/U0/NET2 , 
        \bclk_pad/U0/NET1 , \bvalid_pad/U0/NET1 , \bvalid_pad/U0/NET2 , 
        \bdata_pad[2]/U0/NET1 , \bdata_pad[2]/U0/NET2 , 
        \back_fsm_pad/U0/NET1 , \back_fsm_pad/U0/NET2 , 
        \adata_pad[6]/U0/NET1 , \adata_pad[6]/U0/NET2 , 
        \adatain_pad[7]/U0/NET1 , \adatain_pad[7]/U0/NET2 , 
        \adata_pad[3]/U0/NET1 , \adata_pad[3]/U0/NET2 , 
        \bdata_pad[3]/U0/NET1 , \bdata_pad[3]/U0/NET2 , 
        \anxtdata_pad/U0/NET1 , \anxtdata_pad/U0/NET2 , 
        \brst_pad/U0/NET1 , \adata_pad[5]/U0/NET1 , 
        \adata_pad[5]/U0/NET2 , \back_pad/U0/NET1 , \back_pad/U0/NET2 , 
        \breq_pad/U0/NET1 , \breq_pad/U0/NET2 , \bdata_pad[5]/U0/NET1 , 
        \bdata_pad[5]/U0/NET2 , \bdata_pad[4]/U0/NET1 , 
        \bdata_pad[4]/U0/NET2 , \bdata_pad[1]/U0/NET1 , 
        \bdata_pad[1]/U0/NET2 , \adatain_pad[6]/U0/NET1 , 
        \adatain_pad[6]/U0/NET2 , \adatain_pad[2]/U0/NET1 , 
        \adatain_pad[2]/U0/NET2 , \areq_pad/U0/NET1 , 
        \areq_pad/U0/NET2 , \bdata_pad[6]/U0/NET1 , 
        \bdata_pad[6]/U0/NET2 , \aack_pad/U0/NET1 , \aack_pad/U0/NET2 , 
        \areq_fsm_pad/U0/NET1 , \areq_fsm_pad/U0/NET2 , 
        \bstate_pad[1]/U0/NET1 , \bstate_pad[1]/U0/NET2 , VCC, 
        HIEFFPLA_NET_0_1434, HIEFFPLA_NET_0_1435, HIEFFPLA_NET_0_1436, 
        HIEFFPLA_NET_0_1437, HIEFFPLA_NET_0_1438, HIEFFPLA_NET_0_1440, 
        HIEFFPLA_NET_0_1441, HIEFFPLA_NET_0_1442, HIEFFPLA_NET_0_1443, 
        HIEFFPLA_NET_0_1444, HIEFFPLA_NET_0_1445, HIEFFPLA_NET_0_1446, 
        HIEFFPLA_NET_0_1447, HIEFFPLA_NET_0_1448, HIEFFPLA_NET_0_1449, 
        HIEFFPLA_NET_0_1450, HIEFFPLA_NET_0_1451, HIEFFPLA_NET_0_1452, 
        HIEFFPLA_NET_0_1453, HIEFFPLA_NET_0_1454, HIEFFPLA_NET_0_1455, 
        HIEFFPLA_NET_0_1456, HIEFFPLA_NET_0_1457, HIEFFPLA_NET_0_1458, 
        HIEFFPLA_NET_0_1459, HIEFFPLA_NET_0_1460, HIEFFPLA_NET_0_1461, 
        HIEFFPLA_NET_0_1462, HIEFFPLA_NET_0_1463, HIEFFPLA_NET_0_1464, 
        HIEFFPLA_NET_0_1465, HIEFFPLA_NET_0_1466, HIEFFPLA_NET_0_1468, 
        HIEFFPLA_NET_0_1469, HIEFFPLA_NET_0_1470, HIEFFPLA_NET_0_1471, 
        HIEFFPLA_NET_0_1472, HIEFFPLA_NET_0_1473, HIEFFPLA_NET_0_1474, 
        HIEFFPLA_NET_0_1475, HIEFFPLA_NET_0_1476, HIEFFPLA_NET_0_1477, 
        HIEFFPLA_NET_0_1478, HIEFFPLA_NET_0_1479, HIEFFPLA_NET_0_1480, 
        HIEFFPLA_NET_0_1481, HIEFFPLA_NET_0_1482, HIEFFPLA_NET_0_1483, 
        HIEFFPLA_NET_0_1484, HIEFFPLA_NET_0_1485, HIEFFPLA_NET_0_1486, 
        HIEFFPLA_NET_0_1487, HIEFFPLA_NET_0_1488, HIEFFPLA_NET_0_1489, 
        HIEFFPLA_NET_0_1490, HIEFFPLA_NET_0_1491, HIEFFPLA_NET_0_1492, 
        HIEFFPLA_NET_0_1493, HIEFFPLA_NET_0_1494, HIEFFPLA_NET_0_1495, 
        HIEFFPLA_NET_0_1496, HIEFFPLA_NET_0_1497, HIEFFPLA_NET_0_1498, 
        HIEFFPLA_NET_0_1499, HIEFFPLA_NET_0_1500, HIEFFPLA_NET_0_1501, 
        HIEFFPLA_NET_0_1502, HIEFFPLA_NET_0_1503, HIEFFPLA_NET_0_1504, 
        HIEFFPLA_NET_0_1505, HIEFFPLA_NET_0_1506, HIEFFPLA_NET_0_1507, 
        HIEFFPLA_NET_0_1509, HIEFFPLA_NET_0_1510, HIEFFPLA_NET_0_1511, 
        HIEFFPLA_NET_0_1512, HIEFFPLA_NET_0_1513, HIEFFPLA_NET_0_1514, 
        \a2b_sync/q1_net_1 , \b2a_sync/q1_net_1 , AFLSDF_VCC, 
        AFLSDF_GND, AFLSDF_INV_0_net_1;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    AND3 HIEFFPLA_INST_0_633 (.A(bload_c), .B(bvalid_c_c), .C(
        \adata_c[5] ), .Y(HIEFFPLA_NET_0_1473));
    AND3 HIEFFPLA_INST_0_625 (.A(bload_c), .B(bvalid_c_c), .C(
        \adata_c[4] ), .Y(HIEFFPLA_NET_0_1475));
    CLKSRC \bclk_pad/U0/U1  (.A(\bclk_pad/U0/NET1 ), .Y(bclk_c));
    IOTRI_OB_EB \adatain_pad[3]/U0/U1  (.D(\adatain_c[3] ), .E(VCC), 
        .DOUT(\adatain_pad[3]/U0/NET1 ), .EOUT(
        \adatain_pad[3]/U0/NET2 ));
    IOTRI_OB_EB \adatain_pad[2]/U0/U1  (.D(\adatain_c[2] ), .E(VCC), 
        .DOUT(\adatain_pad[2]/U0/NET1 ), .EOUT(
        \adatain_pad[2]/U0/NET2 ));
    NAND3C HIEFFPLA_INST_0_776 (.A(\astate_c[1] ), .B(aack_c), .C(
        arst_c), .Y(HIEFFPLA_NET_0_1436));
    DFN1 \data_sink/bdata[6]  (.D(HIEFFPLA_NET_0_1485), .CLK(bclk_c), 
        .Q(\bdata_c[6] ));
    DFN1 \data_sink/bdata[2]  (.D(HIEFFPLA_NET_0_1489), .CLK(bclk_c), 
        .Q(\bdata_c[2] ));
    IOTRI_OB_EB \anxtdata_pad/U0/U1  (.D(anxtdata_c), .E(VCC), .DOUT(
        \anxtdata_pad/U0/NET1 ), .EOUT(\anxtdata_pad/U0/NET2 ));
    AND2 HIEFFPLA_INST_0_521 (.A(\adatain_c[3] ), .B(
        HIEFFPLA_NET_0_1504), .Y(HIEFFPLA_NET_0_1509));
    DFN1 \b2a_sync/q  (.D(HIEFFPLA_NET_0_1511), .CLK(aclk_c), .Q(
        aack_c));
    AND2B HIEFFPLA_INST_0_768 (.A(areq_c_c), .B(\astate_c[1] ), .Y(
        aready_c));
    DFN1 \data_source/fsm/state_1[0]  (.D(HIEFFPLA_NET_0_1437), .CLK(
        aclk_c), .Q(areq_c_c));
    DFN1 \b2a_sync/q1  (.D(HIEFFPLA_NET_0_1512), .CLK(aclk_c), .Q(
        \b2a_sync/q1_net_1 ));
    MX2 HIEFFPLA_INST_0_744 (.A(\adata_c[5] ), .B(\adatain_c[5] ), .S(
        HIEFFPLA_NET_0_1438), .Y(HIEFFPLA_NET_0_1442));
    IOPAD_TRI \bdata_pad[2]/U0/U0  (.D(\bdata_pad[2]/U0/NET1 ), .E(
        \bdata_pad[2]/U0/NET2 ), .PAD(bdata[2]));
    IOPAD_TRI \adatain_pad[7]/U0/U0  (.D(\adatain_pad[7]/U0/NET1 ), .E(
        \adatain_pad[7]/U0/NET2 ), .PAD(adatain[7]));
    IOPAD_TRI \bstate_pad[0]/U0/U0  (.D(\bstate_pad[0]/U0/NET1 ), .E(
        \bstate_pad[0]/U0/NET2 ), .PAD(bstate[0]));
    IOPAD_TRI \bdata_pad[4]/U0/U0  (.D(\bdata_pad[4]/U0/NET1 ), .E(
        \bdata_pad[4]/U0/NET2 ), .PAD(bdata[4]));
    AND2A HIEFFPLA_INST_0_691 (.A(arst_c), .B(HIEFFPLA_NET_0_1444), .Y(
        HIEFFPLA_NET_0_1452));
    IOPAD_TRI \bdata_pad[5]/U0/U0  (.D(\bdata_pad[5]/U0/NET1 ), .E(
        \bdata_pad[5]/U0/NET2 ), .PAD(bdata[5]));
    AND2A HIEFFPLA_INST_0_693 (.A(arst_c), .B(HIEFFPLA_NET_0_1443), .Y(
        HIEFFPLA_NET_0_1451));
    IOTRI_OB_EB \back_pad/U0/U1  (.D(back_c_c), .E(VCC), .DOUT(
        \back_pad/U0/NET1 ), .EOUT(\back_pad/U0/NET2 ));
    IOTRI_OB_EB \adatain_pad[0]/U0/U1  (.D(\adatain_c[0] ), .E(VCC), 
        .DOUT(\adatain_pad[0]/U0/NET1 ), .EOUT(
        \adatain_pad[0]/U0/NET2 ));
    DFN1 \data_source/adata[6]  (.D(HIEFFPLA_NET_0_1449), .CLK(aclk_c), 
        .Q(\adata_c[6] ));
    IOPAD_TRI \adata_pad[3]/U0/U0  (.D(\adata_pad[3]/U0/NET1 ), .E(
        \adata_pad[3]/U0/NET2 ), .PAD(adata[3]));
    IOTRI_OB_EB \adatain_pad[1]/U0/U1  (.D(\adatain_c[1] ), .E(VCC), 
        .DOUT(\adatain_pad[1]/U0/NET1 ), .EOUT(
        \adatain_pad[1]/U0/NET2 ));
    DFN1E1 \data_generator/q[2]  (.D(HIEFFPLA_NET_0_1498), .CLK(aclk_c)
        , .E(HIEFFPLA_NET_0_1434), .Q(\adatain_c[2] ));
    AOI1C HIEFFPLA_INST_0_579 (.A(HIEFFPLA_NET_0_1477), .B(
        HIEFFPLA_NET_0_1476), .C(brst_c), .Y(HIEFFPLA_NET_0_1488));
    IOTRI_OB_EB \bdata_pad[7]/U0/U1  (.D(\bdata_c[7] ), .E(VCC), .DOUT(
        \bdata_pad[7]/U0/NET1 ), .EOUT(\bdata_pad[7]/U0/NET2 ));
    IOPAD_TRI \astate_pad[1]/U0/U0  (.D(\astate_pad[1]/U0/NET1 ), .E(
        \astate_pad[1]/U0/NET2 ), .PAD(astate[1]));
    IOPAD_IN \bclk_pad/U0/U0  (.PAD(bclk), .Y(\bclk_pad/U0/NET1 ));
    AND2 HIEFFPLA_INST_0_528 (.A(\adatain_c[0] ), .B(\adatain_c[1] ), 
        .Y(HIEFFPLA_NET_0_1506));
    NAND2B HIEFFPLA_INST_0_523 (.A(HIEFFPLA_NET_0_1502), .B(
        HIEFFPLA_NET_0_1459), .Y(anxtdata_c));
    DFN1 \data_source/adata[0]  (.D(HIEFFPLA_NET_0_1455), .CLK(aclk_c), 
        .Q(\adata_c[0] ));
    AND2A HIEFFPLA_INST_0_520 (.A(brst_c), .B(bvalid_c_c), .Y(
        HIEFFPLA_NET_0_1510));
    AND2A HIEFFPLA_INST_0_654 (.A(bload_c), .B(bvalid_c_c), .Y(
        HIEFFPLA_NET_0_1466));
    NAND3C HIEFFPLA_INST_0_677 (.A(HIEFFPLA_NET_0_1460), .B(
        HIEFFPLA_NET_0_1456), .C(HIEFFPLA_NET_0_1457), .Y(
        HIEFFPLA_NET_0_1458));
    IOPAD_TRI \anxtdata_pad/U0/U0  (.D(\anxtdata_pad/U0/NET1 ), .E(
        \anxtdata_pad/U0/NET2 ), .PAD(anxtdata));
    INV AFLSDF_INV_0 (.A(aready_c), .Y(AFLSDF_INV_0_net_1));
    IOPAD_TRI \adatain_pad[4]/U0/U0  (.D(\adatain_pad[4]/U0/NET1 ), .E(
        \adatain_pad[4]/U0/NET2 ), .PAD(adatain[4]));
    MX2 HIEFFPLA_INST_0_728 (.A(\adata_c[3] ), .B(\adatain_c[3] ), .S(
        HIEFFPLA_NET_0_1438), .Y(HIEFFPLA_NET_0_1444));
    IOTRI_OB_EB \adatain_pad[5]/U0/U1  (.D(\adatain_c[5] ), .E(VCC), 
        .DOUT(\adatain_pad[5]/U0/NET1 ), .EOUT(
        \adatain_pad[5]/U0/NET2 ));
    IOTRI_OB_EB \bdata_pad[6]/U0/U1  (.D(\bdata_c[6] ), .E(VCC), .DOUT(
        \bdata_pad[6]/U0/NET1 ), .EOUT(\bdata_pad[6]/U0/NET2 ));
    MX2 HIEFFPLA_INST_0_752 (.A(\adata_c[6] ), .B(\adatain_c[6] ), .S(
        HIEFFPLA_NET_0_1438), .Y(HIEFFPLA_NET_0_1441));
    IOTRI_OB_EB \bdata_pad[3]/U0/U1  (.D(\bdata_c[3] ), .E(VCC), .DOUT(
        \bdata_pad[3]/U0/NET1 ), .EOUT(\bdata_pad[3]/U0/NET2 ));
    AND3 HIEFFPLA_INST_0_527 (.A(\adatain_c[3] ), .B(
        HIEFFPLA_NET_0_1504), .C(\adatain_c[4] ), .Y(
        HIEFFPLA_NET_0_1507));
    DFN1E1 \data_generator/q[4]  (.D(HIEFFPLA_NET_0_1496), .CLK(aclk_c)
        , .E(HIEFFPLA_NET_0_1434), .Q(\adatain_c[4] ));
    CLKSRC \aclk_pad/U0/U1  (.A(\aclk_pad/U0/NET1 ), .Y(aclk_c));
    DFN1E1 \data_generator/q[5]  (.D(HIEFFPLA_NET_0_1495), .CLK(aclk_c)
        , .E(HIEFFPLA_NET_0_1434), .Q(\adatain_c[5] ));
    IOPAD_TRI \bstate_pad[1]/U0/U0  (.D(\bstate_pad[1]/U0/NET1 ), .E(
        \bstate_pad[1]/U0/NET2 ), .PAD(bstate[1]));
    DFN1 \data_sink/bdata[1]  (.D(HIEFFPLA_NET_0_1490), .CLK(bclk_c), 
        .Q(\bdata_c[1] ));
    IOPAD_TRI \aready_pad/U0/U0  (.D(\aready_pad/U0/NET1 ), .E(
        \aready_pad/U0/NET2 ), .PAD(aready));
    AOI1C HIEFFPLA_INST_0_575 (.A(HIEFFPLA_NET_0_1481), .B(
        HIEFFPLA_NET_0_1480), .C(brst_c), .Y(HIEFFPLA_NET_0_1490));
    XO1 HIEFFPLA_INST_0_675 (.A(\adatain_c[5] ), .B(\adata_c[5] ), .C(
        HIEFFPLA_NET_0_1458), .Y(HIEFFPLA_NET_0_1459));
    IOTRI_OB_EB \adata_pad[7]/U0/U1  (.D(\adata_c[7] ), .E(VCC), .DOUT(
        \adata_pad[7]/U0/NET1 ), .EOUT(\adata_pad[7]/U0/NET2 ));
    IOPAD_TRI \bdata_pad[7]/U0/U0  (.D(\bdata_pad[7]/U0/NET1 ), .E(
        \bdata_pad[7]/U0/NET2 ), .PAD(bdata[7]));
    AND2A HIEFFPLA_INST_0_519 (.A(arst_c), .B(\b2a_sync/q1_net_1 ), .Y(
        HIEFFPLA_NET_0_1511));
    IOTRI_OB_EB \bvalid_pad/U0/U1  (.D(bvalid_c_c), .E(VCC), .DOUT(
        \bvalid_pad/U0/NET1 ), .EOUT(\bvalid_pad/U0/NET2 ));
    DFN1 \data_source/adata[4]  (.D(HIEFFPLA_NET_0_1451), .CLK(aclk_c), 
        .Q(\adata_c[4] ));
    DFN1E1 \data_generator/q[6]  (.D(HIEFFPLA_NET_0_1494), .CLK(aclk_c)
        , .E(HIEFFPLA_NET_0_1434), .Q(\adatain_c[6] ));
    AOI1C HIEFFPLA_INST_0_662 (.A(HIEFFPLA_NET_0_1465), .B(
        HIEFFPLA_NET_0_1466), .C(brst_c), .Y(HIEFFPLA_NET_0_1463));
    IOTRI_OB_EB \aack_pad/U0/U1  (.D(aack_c), .E(VCC), .DOUT(
        \aack_pad/U0/NET1 ), .EOUT(\aack_pad/U0/NET2 ));
    AO1D HIEFFPLA_INST_0_780 (.A(areq_c_c), .B(\astate_c[1] ), .C(
        arst_c), .Y(HIEFFPLA_NET_0_1434));
    AND2A HIEFFPLA_INST_0_516 (.A(brst_c), .B(areq_c_c), .Y(
        HIEFFPLA_NET_0_1514));
    DFN1 \data_source/fsm/state_1[1]  (.D(HIEFFPLA_NET_0_1435), .CLK(
        aclk_c), .Q(\astate_c[1] ));
    DFN1 \data_source/adata[7]  (.D(HIEFFPLA_NET_0_1448), .CLK(aclk_c), 
        .Q(\adata_c[7] ));
    IOTRI_OB_EB \adatain_pad[6]/U0/U1  (.D(\adatain_c[6] ), .E(VCC), 
        .DOUT(\adatain_pad[6]/U0/NET1 ), .EOUT(
        \adatain_pad[6]/U0/NET2 ));
    AND3 HIEFFPLA_INST_0_617 (.A(bload_c), .B(bvalid_c_c), .C(
        \adata_c[3] ), .Y(HIEFFPLA_NET_0_1477));
    MX2 HIEFFPLA_INST_0_736 (.A(\adata_c[4] ), .B(\adatain_c[4] ), .S(
        HIEFFPLA_NET_0_1438), .Y(HIEFFPLA_NET_0_1443));
    IOTRI_OB_EB \back_fsm_pad/U0/U1  (.D(back_c_c), .E(VCC), .DOUT(
        \back_fsm_pad/U0/NET1 ), .EOUT(\back_fsm_pad/U0/NET2 ));
    DFN1 \data_sink/bdata[4]  (.D(HIEFFPLA_NET_0_1487), .CLK(bclk_c), 
        .Q(\bdata_c[4] ));
    AND3B HIEFFPLA_INST_0_659 (.A(brst_c), .B(bvalid_c_c), .C(breq_c), 
        .Y(HIEFFPLA_NET_0_1464));
    IOTRI_OB_EB \adata_pad[0]/U0/U1  (.D(\adata_c[0] ), .E(VCC), .DOUT(
        \adata_pad[0]/U0/NET1 ), .EOUT(\adata_pad[0]/U0/NET2 ));
    XOR2 HIEFFPLA_INST_0_680 (.A(\adatain_c[6] ), .B(\adata_c[6] ), .Y(
        HIEFFPLA_NET_0_1457));
    XA1B HIEFFPLA_INST_0_553 (.A(HIEFFPLA_NET_0_1509), .B(
        \adatain_c[4] ), .C(arst_c), .Y(HIEFFPLA_NET_0_1496));
    IOPAD_TRI \bvalid_pad/U0/U0  (.D(\bvalid_pad/U0/NET1 ), .E(
        \bvalid_pad/U0/NET2 ), .PAD(bvalid));
    DFN1 \data_source/adata[5]  (.D(HIEFFPLA_NET_0_1450), .CLK(aclk_c), 
        .Q(\adata_c[5] ));
    IOPAD_TRI \bdata_pad[6]/U0/U0  (.D(\bdata_pad[6]/U0/NET1 ), .E(
        \bdata_pad[6]/U0/NET2 ), .PAD(bdata[6]));
    IOTRI_OB_EB \areq_fsm_pad/U0/U1  (.D(areq_c_c), .E(VCC), .DOUT(
        \areq_fsm_pad/U0/NET1 ), .EOUT(\areq_fsm_pad/U0/NET2 ));
    IOPAD_IN \aclk_pad/U0/U0  (.PAD(aclk), .Y(\aclk_pad/U0/NET1 ));
    XA1B HIEFFPLA_INST_0_549 (.A(HIEFFPLA_NET_0_1504), .B(
        \adatain_c[3] ), .C(arst_c), .Y(HIEFFPLA_NET_0_1497));
    DFN1 \data_source/adata[3]  (.D(HIEFFPLA_NET_0_1452), .CLK(aclk_c), 
        .Q(\adata_c[3] ));
    IOTRI_OB_EB \astate_pad[0]/U0/U1  (.D(AFLSDF_INV_0_net_1), .E(VCC), 
        .DOUT(\astate_pad[0]/U0/NET1 ), .EOUT(\astate_pad[0]/U0/NET2 ));
    IOPAD_TRI \bdata_pad[3]/U0/U0  (.D(\bdata_pad[3]/U0/NET1 ), .E(
        \bdata_pad[3]/U0/NET2 ), .PAD(bdata[3]));
    XOR2 HIEFFPLA_INST_0_666 (.A(\adatain_c[0] ), .B(\adata_c[0] ), .Y(
        HIEFFPLA_NET_0_1462));
    AOI1C HIEFFPLA_INST_0_573 (.A(HIEFFPLA_NET_0_1483), .B(
        HIEFFPLA_NET_0_1482), .C(brst_c), .Y(HIEFFPLA_NET_0_1491));
    IOPAD_TRI \breq_pad/U0/U0  (.D(\breq_pad/U0/NET1 ), .E(
        \breq_pad/U0/NET2 ), .PAD(breq));
    IOTRI_OB_EB \adata_pad[2]/U0/U1  (.D(\adata_c[2] ), .E(VCC), .DOUT(
        \adata_pad[2]/U0/NET1 ), .EOUT(\adata_pad[2]/U0/NET2 ));
    IOPAD_TRI \adatain_pad[3]/U0/U0  (.D(\adatain_pad[3]/U0/NET1 ), .E(
        \adatain_pad[3]/U0/NET2 ), .PAD(adatain[3]));
    DFN1 \data_sink/bdata[7]  (.D(HIEFFPLA_NET_0_1484), .CLK(bclk_c), 
        .Q(\bdata_c[7] ));
    DFN1E1 \data_generator/q[0]  (.D(HIEFFPLA_NET_0_1500), .CLK(aclk_c)
        , .E(HIEFFPLA_NET_0_1434), .Q(\adatain_c[0] ));
    IOPAD_TRI \adatain_pad[2]/U0/U0  (.D(\adatain_pad[2]/U0/NET1 ), .E(
        \adatain_pad[2]/U0/NET2 ), .PAD(adatain[2]));
    IOPAD_IN \brst_pad/U0/U0  (.PAD(brst), .Y(\brst_pad/U0/NET1 ));
    IOPAD_TRI \adata_pad[7]/U0/U0  (.D(\adata_pad[7]/U0/NET1 ), .E(
        \adata_pad[7]/U0/NET2 ), .PAD(adata[7]));
    AND2A HIEFFPLA_INST_0_687 (.A(arst_c), .B(HIEFFPLA_NET_0_1446), .Y(
        HIEFFPLA_NET_0_1454));
    MX2 HIEFFPLA_INST_0_712 (.A(\adata_c[1] ), .B(\adatain_c[1] ), .S(
        HIEFFPLA_NET_0_1438), .Y(HIEFFPLA_NET_0_1446));
    MX2 HIEFFPLA_INST_0_760 (.A(\adata_c[7] ), .B(\adatain_c[7] ), .S(
        HIEFFPLA_NET_0_1438), .Y(HIEFFPLA_NET_0_1440));
    XO1 HIEFFPLA_INST_0_536 (.A(\adatain_c[2] ), .B(\adata_c[2] ), .C(
        HIEFFPLA_NET_0_1501), .Y(HIEFFPLA_NET_0_1502));
    IOPAD_IN \arst_pad/U0/U0  (.PAD(arst), .Y(\arst_pad/U0/NET1 ));
    DFN1 \a2b_sync/q  (.D(HIEFFPLA_NET_0_1513), .CLK(bclk_c), .Q(
        breq_c));
    AND3B HIEFFPLA_INST_0_778 (.A(arst_c), .B(aready_c), .C(aack_c), 
        .Y(HIEFFPLA_NET_0_1435));
    DFN1 \a2b_sync/q1  (.D(HIEFFPLA_NET_0_1514), .CLK(bclk_c), .Q(
        \a2b_sync/q1_net_1 ));
    AOI1B HIEFFPLA_INST_0_651 (.A(bload_c), .B(bvalid_c_c), .C(
        \bdata_c[7] ), .Y(HIEFFPLA_NET_0_1468));
    XA1B HIEFFPLA_INST_0_557 (.A(\adatain_c[5] ), .B(
        HIEFFPLA_NET_0_1507), .C(arst_c), .Y(HIEFFPLA_NET_0_1495));
    DFN1E1 \data_generator/q[3]  (.D(HIEFFPLA_NET_0_1497), .CLK(aclk_c)
        , .E(HIEFFPLA_NET_0_1434), .Q(\adatain_c[3] ));
    XOR2 HIEFFPLA_INST_0_684 (.A(\adata_c[4] ), .B(\adatain_c[4] ), .Y(
        HIEFFPLA_NET_0_1456));
    IOIN_IB \brst_pad/U0/U1  (.YIN(\brst_pad/U0/NET1 ), .Y(brst_c));
    IOTRI_OB_EB \bdata_pad[1]/U0/U1  (.D(\bdata_c[1] ), .E(VCC), .DOUT(
        \bdata_pad[1]/U0/NET1 ), .EOUT(\bdata_pad[1]/U0/NET2 ));
    IOTRI_OB_EB \adatain_pad[7]/U0/U1  (.D(\adatain_c[7] ), .E(VCC), 
        .DOUT(\adatain_pad[7]/U0/NET1 ), .EOUT(
        \adatain_pad[7]/U0/NET2 ));
    AND3 HIEFFPLA_INST_0_609 (.A(bload_c), .B(bvalid_c_c), .C(
        \adata_c[2] ), .Y(HIEFFPLA_NET_0_1479));
    IOIN_IB \arst_pad/U0/U1  (.YIN(\arst_pad/U0/NET1 ), .Y(arst_c));
    IOPAD_TRI \adatain_pad[0]/U0/U0  (.D(\adatain_pad[0]/U0/NET1 ), .E(
        \adatain_pad[0]/U0/NET2 ), .PAD(adatain[0]));
    DFN1 \data_source/adata[1]  (.D(HIEFFPLA_NET_0_1454), .CLK(aclk_c), 
        .Q(\adata_c[1] ));
    DFN1 \data_sink/bdata[3]  (.D(HIEFFPLA_NET_0_1488), .CLK(bclk_c), 
        .Q(\bdata_c[3] ));
    IOPAD_TRI \adatain_pad[1]/U0/U0  (.D(\adatain_pad[1]/U0/NET1 ), .E(
        \adatain_pad[1]/U0/NET2 ), .PAD(adatain[1]));
    IOTRI_OB_EB \bdata_pad[0]/U0/U1  (.D(\bdata_c[0] ), .E(VCC), .DOUT(
        \bdata_pad[0]/U0/NET1 ), .EOUT(\bdata_pad[0]/U0/NET2 ));
    DFN1 bloadq (.D(HIEFFPLA_NET_0_1510), .CLK(bclk_c), .Q(bload_c));
    IOTRI_OB_EB \adata_pad[4]/U0/U1  (.D(\adata_c[4] ), .E(VCC), .DOUT(
        \adata_pad[4]/U0/NET1 ), .EOUT(\adata_pad[4]/U0/NET2 ));
    IOPAD_TRI \back_pad/U0/U0  (.D(\back_pad/U0/NET1 ), .E(
        \back_pad/U0/NET2 ), .PAD(back));
    XOR2 HIEFFPLA_INST_0_671 (.A(\adata_c[1] ), .B(\adatain_c[1] ), .Y(
        HIEFFPLA_NET_0_1461));
    AOI1C HIEFFPLA_INST_0_577 (.A(HIEFFPLA_NET_0_1479), .B(
        HIEFFPLA_NET_0_1478), .C(brst_c), .Y(HIEFFPLA_NET_0_1489));
    IOPAD_TRI \adata_pad[0]/U0/U0  (.D(\adata_pad[0]/U0/NET1 ), .E(
        \adata_pad[0]/U0/NET2 ), .PAD(adata[0]));
    DFN1 \data_sink/fsm/state_1[1]  (.D(HIEFFPLA_NET_0_1463), .CLK(
        bclk_c), .Q(bvalid_c_c));
    DFN1 \data_sink/bdata[5]  (.D(HIEFFPLA_NET_0_1486), .CLK(bclk_c), 
        .Q(\bdata_c[5] ));
    XA1B HIEFFPLA_INST_0_545 (.A(HIEFFPLA_NET_0_1506), .B(
        \adatain_c[2] ), .C(arst_c), .Y(HIEFFPLA_NET_0_1498));
    AND3A HIEFFPLA_INST_0_569 (.A(arst_c), .B(\adatain_c[6] ), .C(
        HIEFFPLA_NET_0_1503), .Y(HIEFFPLA_NET_0_1492));
    AOI1C HIEFFPLA_INST_0_585 (.A(HIEFFPLA_NET_0_1471), .B(
        HIEFFPLA_NET_0_1470), .C(brst_c), .Y(HIEFFPLA_NET_0_1485));
    IOPAD_TRI \areq_pad/U0/U0  (.D(\areq_pad/U0/NET1 ), .E(
        \areq_pad/U0/NET2 ), .PAD(areq));
    AND2A HIEFFPLA_INST_0_697 (.A(arst_c), .B(HIEFFPLA_NET_0_1441), .Y(
        HIEFFPLA_NET_0_1449));
    AND2A HIEFFPLA_INST_0_685 (.A(arst_c), .B(HIEFFPLA_NET_0_1447), .Y(
        HIEFFPLA_NET_0_1455));
    IOTRI_OB_EB \adata_pad[1]/U0/U1  (.D(\adata_c[1] ), .E(VCC), .DOUT(
        \adata_pad[1]/U0/NET1 ), .EOUT(\adata_pad[1]/U0/NET2 ));
    AX1 HIEFFPLA_INST_0_566 (.A(arst_c), .B(\adatain_c[7] ), .C(
        HIEFFPLA_NET_0_1492), .Y(HIEFFPLA_NET_0_1493));
    IOTRI_OB_EB \bstate_pad[0]/U0/U1  (.D(\state_1_RNIJN77[0] ), .E(
        VCC), .DOUT(\bstate_pad[0]/U0/NET1 ), .EOUT(
        \bstate_pad[0]/U0/NET2 ));
    AOI1B HIEFFPLA_INST_0_619 (.A(bload_c), .B(bvalid_c_c), .C(
        \bdata_c[3] ), .Y(HIEFFPLA_NET_0_1476));
    AND2A HIEFFPLA_INST_0_518 (.A(arst_c), .B(back_c_c), .Y(
        HIEFFPLA_NET_0_1512));
    IOTRI_OB_EB \astate_pad[1]/U0/U1  (.D(\astate_c[1] ), .E(VCC), 
        .DOUT(\astate_pad[1]/U0/NET1 ), .EOUT(\astate_pad[1]/U0/NET2 ));
    IOTRI_OB_EB \adata_pad[6]/U0/U1  (.D(\adata_c[6] ), .E(VCC), .DOUT(
        \adata_pad[6]/U0/NET1 ), .EOUT(\adata_pad[6]/U0/NET2 ));
    MX2 HIEFFPLA_INST_0_720 (.A(\adata_c[2] ), .B(\adatain_c[2] ), .S(
        HIEFFPLA_NET_0_1438), .Y(HIEFFPLA_NET_0_1445));
    DFN1 \data_sink/bdata[0]  (.D(HIEFFPLA_NET_0_1491), .CLK(bclk_c), 
        .Q(\bdata_c[0] ));
    AOI1B HIEFFPLA_INST_0_635 (.A(bload_c), .B(bvalid_c_c), .C(
        \bdata_c[5] ), .Y(HIEFFPLA_NET_0_1472));
    IOPAD_TRI \bload_pad/U0/U0  (.D(\bload_pad/U0/NET1 ), .E(
        \bload_pad/U0/NET2 ), .PAD(bload));
    IOTRI_OB_EB \adatain_pad[4]/U0/U1  (.D(\adatain_c[4] ), .E(VCC), 
        .DOUT(\adatain_pad[4]/U0/NET1 ), .EOUT(
        \adatain_pad[4]/U0/NET2 ));
    AOI1C HIEFFPLA_INST_0_581 (.A(HIEFFPLA_NET_0_1475), .B(
        HIEFFPLA_NET_0_1474), .C(brst_c), .Y(HIEFFPLA_NET_0_1487));
    IOPAD_TRI \adata_pad[2]/U0/U0  (.D(\adata_pad[2]/U0/NET1 ), .E(
        \adata_pad[2]/U0/NET2 ), .PAD(adata[2]));
    IOTRI_OB_EB \breq_pad/U0/U1  (.D(breq_c), .E(VCC), .DOUT(
        \breq_pad/U0/NET1 ), .EOUT(\breq_pad/U0/NET2 ));
    DFN1E1 \data_generator/q[1]  (.D(HIEFFPLA_NET_0_1499), .CLK(aclk_c)
        , .E(HIEFFPLA_NET_0_1434), .Q(\adatain_c[1] ));
    AND3 HIEFFPLA_INST_0_601 (.A(bload_c), .B(bvalid_c_c), .C(
        \adata_c[1] ), .Y(HIEFFPLA_NET_0_1481));
    AOI1B HIEFFPLA_INST_0_603 (.A(bload_c), .B(bvalid_c_c), .C(
        \bdata_c[1] ), .Y(HIEFFPLA_NET_0_1480));
    AND3 HIEFFPLA_INST_0_531 (.A(\adatain_c[0] ), .B(\adatain_c[1] ), 
        .C(\adatain_c[2] ), .Y(HIEFFPLA_NET_0_1504));
    IOPAD_TRI \adatain_pad[5]/U0/U0  (.D(\adatain_pad[5]/U0/NET1 ), .E(
        \adatain_pad[5]/U0/NET2 ), .PAD(adatain[5]));
    AOI1C HIEFFPLA_INST_0_774 (.A(areq_c_c), .B(anxtdata_c), .C(
        HIEFFPLA_NET_0_1436), .Y(HIEFFPLA_NET_0_1437));
    IOTRI_OB_EB \adata_pad[5]/U0/U1  (.D(\adata_c[5] ), .E(VCC), .DOUT(
        \adata_pad[5]/U0/NET1 ), .EOUT(\adata_pad[5]/U0/NET2 ));
    IOPAD_TRI \bdata_pad[1]/U0/U0  (.D(\bdata_pad[1]/U0/NET1 ), .E(
        \bdata_pad[1]/U0/NET2 ), .PAD(bdata[1]));
    NAND2B HIEFFPLA_INST_0_652 (.A(bvalid_c_c), .B(back_c_c), .Y(
        \state_1_RNIJN77[0] ));
    IOPAD_TRI \bdata_pad[0]/U0/U0  (.D(\bdata_pad[0]/U0/NET1 ), .E(
        \bdata_pad[0]/U0/NET2 ), .PAD(bdata[0]));
    AND3 HIEFFPLA_INST_0_649 (.A(bload_c), .B(bvalid_c_c), .C(
        \adata_c[7] ), .Y(HIEFFPLA_NET_0_1469));
    AOI1B HIEFFPLA_INST_0_595 (.A(bload_c), .B(bvalid_c_c), .C(
        \bdata_c[0] ), .Y(HIEFFPLA_NET_0_1482));
    IOPAD_TRI \adata_pad[4]/U0/U0  (.D(\adata_pad[4]/U0/NET1 ), .E(
        \adata_pad[4]/U0/NET2 ), .PAD(adata[4]));
    XOR2 HIEFFPLA_INST_0_529 (.A(\adatain_c[7] ), .B(\adata_c[7] ), .Y(
        HIEFFPLA_NET_0_1505));
    AND2A HIEFFPLA_INST_0_695 (.A(arst_c), .B(HIEFFPLA_NET_0_1442), .Y(
        HIEFFPLA_NET_0_1450));
    IOTRI_OB_EB \bload_pad/U0/U1  (.D(bload_c), .E(VCC), .DOUT(
        \bload_pad/U0/NET1 ), .EOUT(\bload_pad/U0/NET2 ));
    XA1B HIEFFPLA_INST_0_542 (.A(\adatain_c[0] ), .B(\adatain_c[1] ), 
        .C(arst_c), .Y(HIEFFPLA_NET_0_1499));
    DFN1 \data_source/adata[2]  (.D(HIEFFPLA_NET_0_1453), .CLK(aclk_c), 
        .Q(\adata_c[2] ));
    AOI1B HIEFFPLA_INST_0_611 (.A(bload_c), .B(bvalid_c_c), .C(
        \bdata_c[2] ), .Y(HIEFFPLA_NET_0_1478));
    AND2A HIEFFPLA_INST_0_517 (.A(brst_c), .B(\a2b_sync/q1_net_1 ), .Y(
        HIEFFPLA_NET_0_1513));
    DFN1 \data_sink/fsm/state_1[0]  (.D(HIEFFPLA_NET_0_1464), .CLK(
        bclk_c), .Q(back_c_c));
    AND2A HIEFFPLA_INST_0_689 (.A(arst_c), .B(HIEFFPLA_NET_0_1445), .Y(
        HIEFFPLA_NET_0_1453));
    AND2B HIEFFPLA_INST_0_540 (.A(arst_c), .B(\adatain_c[0] ), .Y(
        HIEFFPLA_NET_0_1500));
    IOPAD_TRI \areq_fsm_pad/U0/U0  (.D(\areq_fsm_pad/U0/NET1 ), .E(
        \areq_fsm_pad/U0/NET2 ), .PAD(areq_fsm));
    AOI1C HIEFFPLA_INST_0_583 (.A(HIEFFPLA_NET_0_1473), .B(
        HIEFFPLA_NET_0_1472), .C(brst_c), .Y(HIEFFPLA_NET_0_1486));
    IOTRI_OB_EB \aready_pad/U0/U1  (.D(aready_c), .E(VCC), .DOUT(
        \aready_pad/U0/NET1 ), .EOUT(\aready_pad/U0/NET2 ));
    XOR2 HIEFFPLA_INST_0_672 (.A(\adatain_c[3] ), .B(\adata_c[3] ), .Y(
        HIEFFPLA_NET_0_1460));
    AOI1B HIEFFPLA_INST_0_627 (.A(bload_c), .B(bvalid_c_c), .C(
        \bdata_c[4] ), .Y(HIEFFPLA_NET_0_1474));
    MX2 HIEFFPLA_INST_0_704 (.A(\adata_c[0] ), .B(\adatain_c[0] ), .S(
        HIEFFPLA_NET_0_1438), .Y(HIEFFPLA_NET_0_1447));
    IOPAD_TRI \adata_pad[1]/U0/U0  (.D(\adata_pad[1]/U0/NET1 ), .E(
        \adata_pad[1]/U0/NET2 ), .PAD(adata[1]));
    IOPAD_TRI \adatain_pad[6]/U0/U0  (.D(\adatain_pad[6]/U0/NET1 ), .E(
        \adatain_pad[6]/U0/NET2 ), .PAD(adatain[6]));
    NAND3C HIEFFPLA_INST_0_538 (.A(HIEFFPLA_NET_0_1462), .B(
        HIEFFPLA_NET_0_1461), .C(HIEFFPLA_NET_0_1505), .Y(
        HIEFFPLA_NET_0_1501));
    AND2 HIEFFPLA_INST_0_532 (.A(\adatain_c[5] ), .B(
        HIEFFPLA_NET_0_1507), .Y(HIEFFPLA_NET_0_1503));
    IOTRI_OB_EB \areq_pad/U0/U1  (.D(areq_c_c), .E(VCC), .DOUT(
        \areq_pad/U0/NET1 ), .EOUT(\areq_pad/U0/NET2 ));
    IOPAD_TRI \aack_pad/U0/U0  (.D(\aack_pad/U0/NET1 ), .E(
        \aack_pad/U0/NET2 ), .PAD(aack));
    XA1B HIEFFPLA_INST_0_561 (.A(\adatain_c[6] ), .B(
        HIEFFPLA_NET_0_1503), .C(arst_c), .Y(HIEFFPLA_NET_0_1494));
    IOTRI_OB_EB \bdata_pad[2]/U0/U1  (.D(\bdata_c[2] ), .E(VCC), .DOUT(
        \bdata_pad[2]/U0/NET1 ), .EOUT(\bdata_pad[2]/U0/NET2 ));
    IOPAD_TRI \adata_pad[6]/U0/U0  (.D(\adata_pad[6]/U0/NET1 ), .E(
        \adata_pad[6]/U0/NET2 ), .PAD(adata[6]));
    IOTRI_OB_EB \bstate_pad[1]/U0/U1  (.D(bvalid_c_c), .E(VCC), .DOUT(
        \bstate_pad[1]/U0/NET1 ), .EOUT(\bstate_pad[1]/U0/NET2 ));
    IOTRI_OB_EB \bdata_pad[4]/U0/U1  (.D(\bdata_c[4] ), .E(VCC), .DOUT(
        \bdata_pad[4]/U0/NET1 ), .EOUT(\bdata_pad[4]/U0/NET2 ));
    IOTRI_OB_EB \bdata_pad[5]/U0/U1  (.D(\bdata_c[5] ), .E(VCC), .DOUT(
        \bdata_pad[5]/U0/NET1 ), .EOUT(\bdata_pad[5]/U0/NET2 ));
    IOTRI_OB_EB \adata_pad[3]/U0/U1  (.D(\adata_c[3] ), .E(VCC), .DOUT(
        \adata_pad[3]/U0/NET1 ), .EOUT(\adata_pad[3]/U0/NET2 ));
    AOI1D HIEFFPLA_INST_0_771 (.A(HIEFFPLA_NET_0_1502), .B(
        HIEFFPLA_NET_0_1459), .C(aready_c), .Y(HIEFFPLA_NET_0_1438));
    IOPAD_TRI \astate_pad[0]/U0/U0  (.D(\astate_pad[0]/U0/NET1 ), .E(
        \astate_pad[0]/U0/NET2 ), .PAD(astate[0]));
    AND3B HIEFFPLA_INST_0_656 (.A(bvalid_c_c), .B(breq_c), .C(back_c_c)
        , .Y(HIEFFPLA_NET_0_1465));
    AND3 HIEFFPLA_INST_0_641 (.A(bload_c), .B(bvalid_c_c), .C(
        \adata_c[6] ), .Y(HIEFFPLA_NET_0_1471));
    AOI1B HIEFFPLA_INST_0_643 (.A(bload_c), .B(bvalid_c_c), .C(
        \bdata_c[6] ), .Y(HIEFFPLA_NET_0_1470));
    DFN1E1 \data_generator/q[7]  (.D(HIEFFPLA_NET_0_1493), .CLK(aclk_c)
        , .E(HIEFFPLA_NET_0_1434), .Q(\adatain_c[7] ));
    IOPAD_TRI \adata_pad[5]/U0/U0  (.D(\adata_pad[5]/U0/NET1 ), .E(
        \adata_pad[5]/U0/NET2 ), .PAD(adata[5]));
    AOI1C HIEFFPLA_INST_0_587 (.A(HIEFFPLA_NET_0_1469), .B(
        HIEFFPLA_NET_0_1468), .C(brst_c), .Y(HIEFFPLA_NET_0_1484));
    AND2A HIEFFPLA_INST_0_699 (.A(arst_c), .B(HIEFFPLA_NET_0_1440), .Y(
        HIEFFPLA_NET_0_1448));
    IOPAD_TRI \back_fsm_pad/U0/U0  (.D(\back_fsm_pad/U0/NET1 ), .E(
        \back_fsm_pad/U0/NET2 ), .PAD(back_fsm));
    AND3 HIEFFPLA_INST_0_593 (.A(bload_c), .B(bvalid_c_c), .C(
        \adata_c[0] ), .Y(HIEFFPLA_NET_0_1483));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
