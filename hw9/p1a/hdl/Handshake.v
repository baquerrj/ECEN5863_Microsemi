///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Handshake.v
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

//`timescale <time_units> / <precision>

module Handshake (
   // sender ports
   input  wire       aclk,      // domain A clock
   input  wire       arst,      // reset signal
   output wire       aready,    // ready to receive new data
   output wire       anxtdata,  // new data ready
   output wire [7:0] adata,     // transmitting data
   output wire [7:0] adatain,   // input data from counter to sender
   output wire       areq_fsm,  // areq value from fsm
   output wire [1:0] astate,    // state of sender fsm

   // receiver ports
   input  wire       bclk,      // domain B clock
   input  wire       brst,      // reset signal
   output wire [7:0] bdata,     // received data
   output wire       bvalid,    // data is valid
   output wire       bload,
   output wire       back_fsm,  // back value from fsm
   output wire [1:0] bstate,    // state of receiver fsm  

   // ack and req signals
   output wire back, // receiver acknowledge signal
   output wire areq, // sender request signal
   output wire aack, // synchronized ack signal
   output wire breq  // synchronized req signal   
);

// ack synchronizer
synchronizer b2a_sync (
   .clk(aclk), 
   .d(back), 
   .rst(arst), 
   .q(aack));

// req synchronizer
synchronizer a2b_sync (
   .clk(bclk), 
   .d(areq), 
   .rst(brst), 
   .q(breq));

// 8-bit counter
counter data_generator (
   // inputs
   .clk(aclk),
   .rst(arst),
   .en(aready),
   // outputs
   .q(adatain));

// new data incoming if input data is not equal to transmitting data
assign anxtdata = (adatain != adata);

sender data_source (
   // inputs
   .aclk(aclk),
   .arst(arst),
   .aack(aack), // synchronized input from ack_sync
   .anxtdata(anxtdata),
   .adatain(adatain),
   // outputs
   .adata(adata),
   .areq(areq),
   .aready(aready),
   .areq_fsm(areq_fsm),
   .state_fsm(astate));

reg bloadq;
always @(posedge bclk) begin
   if (brst)
      bloadq <= 1'b0;
   else
      bloadq <= bvalid;
end
assign bload = bloadq;

receiver data_sink (
   // inputs
   .bclk(bclk),
   .brst(brst),
   .breq(breq), // synchronized input from req_sync
   .bload(bload),
   .adata(adata),
   // outputs
   .bdata(bdata),
   .bvalid(bvalid),
   .back(back),
   .back_fsm(back_fsm),
   .state_fsm(bstate));

endmodule

