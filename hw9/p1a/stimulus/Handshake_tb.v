//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Fri Nov 29 21:04:24 2019
// Testbench Template
// This is a basic testbench that instantiates your design with basic
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should
// copy this file and modify it.
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Handshake_tb.v
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
`define PARTA
`ifndef PARTA
`define PARTB
`endif
module Handshake_tb;

`ifdef PARTA
parameter aclk_period = 40;     // 25 MHz
parameter bclk_period = 26.67;  // 37.5 MHz
`elsif PARTB
parameter aclk_period = 26.67;  // 37.5 MHz
parameter bclk_period = 40;     // 25 MHz
`endif
reg aclk, bclk; // clock signals
reg arst, brst; // resets

wire aack;
wire [7:0] adatain;

wire [7:0] adata;
wire aready;
wire breq;
wire [7:0] bdata;
wire bvalid;
wire bload;
wire back;
wire anxtdata;
// debug fsm state value
wire [1:0] astate;
wire [1:0] bstate;
// debug fsm req and ack values
wire areq_fsm, back_fsm;

initial
begin
   aclk = 1'b0;
   bclk = 1'b0;
   // enable reset to get started in a known state
   arst = 1'b1;
   brst = 1'b1;
end

initial
begin
   #(aclk_period * 2);
   arst = 1'b0;
end

initial
begin
   #(bclk_period * 2);
   brst = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(aclk)
    #(aclk_period / 2.0) aclk <= !aclk;
always @(bclk)
    #(bclk_period / 2.0) bclk <= !bclk;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  Handshake
//////////////////////////////////////////////////////////////////////
Handshake Handshake_0 (
   // sender input ports
   .aclk(aclk),
   .arst(arst),
   .aack(aack),
	.adatain(adatain),
   // sender output ports
   .adata(adata),
   .aready(aready),
   .anxtdata(anxtdata),
   .areq(areq),
   .areq_fsm(areq_fsm),
   .astate(astate),

   // receiver input ports
   .bclk(bclk),
   .brst(brst),
   .breq(breq),
   // receiver output ports
   .bdata(bdata),
   .bvalid(bvalid),
   .bload(bload),
   .back(back),
   .back_fsm(back_fsm),
   .bstate(bstate)
);

endmodule

