//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Mon Nov 18 21:34:14 2019
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: CD3FF_testbench.v
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

module CD3FF_testbench;

parameter ACLK_PERIOD = 20;     // 50 MHZ
parameter BCLK_PERIOD = 36.1;   // 27.7 MHz


reg ACLK, BCLK;
reg NSYSRESET;
wire Dout;

initial
begin
    ACLK = 1'b0;
    BCLK = 1'b0;
    NSYSRESET = 1'b1;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
   #ACLK_PERIOD;
      NSYSRESET = 1'b0;
   #(ACLK_PERIOD * 300 )
      NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(ACLK)
    #(ACLK_PERIOD / 2.0) ACLK <= !ACLK;
always @(BCLK)
    #(BCLK_PERIOD / 2.0) BCLK <= !BCLK;

//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  SlowFast
//////////////////////////////////////////////////////////////////////
CD3FF  CD3FF_0 (
    // Inputs
    .Aclk(ACLK),
    .Bclk(BCLK),
    .reset(NSYSRESET),

    // Outputs
    .Dout(Dout)
);

endmodule