///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: CU Boulder
//
// File: top_level_counter_tb.v
//
// Description: 
//
// 
//
// Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
// Author: Roberto Baquerizo
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns/100ps

module top_level_counter_tb;

parameter SYSCLK_PERIOD = 20;// 50MHZ

reg SYSCLK;
reg NSYSRESET;
reg PRE;

wire sQ0, sQ1, sQ2, sQ3;
wire [15:0] Q;
wire TC;

initial
begin
   SYSCLK = 1'b0;
   PRE = 1'b0;
   NSYSRESET = 1'b1;
   #(SYSCLK_PERIOD);
   PRE = 1'b1;
   #(SYSCLK_PERIOD * 2);
   NSYSRESET = 1'b0;
   PRE = 1'b1;
end

//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  top_level_counter
//////////////////////////////////////////////////////////////////////
top_level_counter top_level_counter_0 (
    // Inputs
    .CLK(SYSCLK),
    .CLR(NSYSRESET),
    .PRE(PRE),

    // Outputs
    .sQ0(sQ0),
    .sQ1(sQ1),
    .sQ2(sQ2),
    .sQ3(sQ3),
    .TC(TC),
    .Q(Q)
);

endmodule

