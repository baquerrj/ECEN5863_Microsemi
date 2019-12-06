//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Mon Nov 04 22:41:01 2019
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Skewed_tb.v
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

module Skewed_tb;

parameter SYSCLK_PERIOD = 20;// 50MHZ

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
// Instantiate Unit Under Test:  myCounter
//////////////////////////////////////////////////////////////////////
Skewed Skewed_0 (
    // Inputs
    .clk(SYSCLK),
    .reset(NSYSRESET),
    // Outputs
    .TC(TC)
);

endmodule