//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sun Nov 03 16:37:13 2019
// Testbench Template
// This is a basic testbench that instantiates your design with basic
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should
// copy this file and modify it.
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Strained_tb.v
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

module Strained_tb;

parameter SYSCLK_PERIOD = 13.6;  // 73.529 MHz

reg SYSCLK;
reg NSYSRESET;

wire TC;

initial
begin
   SYSCLK = 1'b0;
   NSYSRESET = 1'b1;
   #(SYSCLK_PERIOD);
   NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  Strained
//////////////////////////////////////////////////////////////////////
Strained Strained_0 (
   // Inputs
   .clk(SYSCLK),
   .reset(NSYSRESET),
   // Output
   .TC(TC)
);

endmodule

