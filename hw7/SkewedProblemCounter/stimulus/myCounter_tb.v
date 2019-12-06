//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sat Nov 02 19:37:53 2019
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: myCounter_tb.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns/100ps

module myCounter_tb;

parameter SYSCLK_PERIOD = 20;// 50MHZ

reg SYSCLK;
reg PRE;
reg NSYSRESET;
wire [15:0] Q;  // 16-bit Counter output
wire sQ0, sQ1, sQ2, sQ3; // Skewed Clock Outputs
initial
begin
   SYSCLK = 1'b0;
   NSYSRESET = 1'b1;
   PRE = 1'b0; 
   #(SYSCLK_PERIOD);
   NSYSRESET = 1'b0;
   PRE = 1'b1;
end

//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;

//////////////////////////////////////////////////////////////////////
// Instantiate skewedClock
//////////////////////////////////////////////////////////////////////
skewedClock skewedClock_0 (
    // Inputs
    .CLK(SYSCLK),
    .PRE(PRE),

    // Outputs
    .sQ0(sQ0),
    .sQ1(sQ1),
    .sQ2(sQ2),
    .sQ3(sQ3)
);

//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  myCounter
//////////////////////////////////////////////////////////////////////
myCounter myCounter_0 (
   // Inputs
   .CLK(CLK),
   .sQ0(sQ0),
   .sQ1(sQ1),
   .sQ2(sQ2),
   .sQ3(sQ3)
   .RESET(NSYSRESET),
   // Outputs
   .Q(Q)
);

endmodule

