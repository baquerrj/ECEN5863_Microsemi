`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26


module skewedClock(
       CLK,
       CLR,
       sQ0,
       sQ1,
       sQ2,
       sQ3
    );
input  CLK;
input  CLR;
output sQ0;
output sQ1;
output sQ2;
output sQ3;

    wire GND, VCC, CLK_c, CLR_c, sQ0_net_1, sQ1_net_1, sQ2_net_1, 
        sQ3_c;
    
    DFI1C1 DFI1C1_3 (.D(sQ2_net_1), .CLK(sQ2_net_1), .CLR(CLR_c), .QN(
        sQ3_c));
    OUTBUF sQ3_pad (.D(sQ3_c), .PAD(sQ3));
    DFI1C1 DFI1C1_2 (.D(sQ1_net_1), .CLK(sQ1_net_1), .CLR(CLR_c), .QN(
        sQ2_net_1));
    OUTBUF sQ1_pad (.D(sQ1_net_1), .PAD(sQ1));
    DFI1C1 DFI1C1_1 (.D(sQ0_net_1), .CLK(sQ0_net_1), .CLR(CLR_c), .QN(
        sQ1_net_1));
    OUTBUF sQ0_pad (.D(sQ0_net_1), .PAD(sQ0));
    VCC VCC_i (.Y(VCC));
    DFI1C1 DFI1C1_0 (.D(CLK_c), .CLK(CLK_c), .CLR(CLR_c), .QN(
        sQ0_net_1));
    GND GND_i (.Y(GND));
    OUTBUF sQ2_pad (.D(sQ2_net_1), .PAD(sQ2));
    INBUF CLR_pad (.PAD(CLR), .Y(CLR_c));
    INBUF CLK_pad (.PAD(CLK), .Y(CLK_c));
    
endmodule
