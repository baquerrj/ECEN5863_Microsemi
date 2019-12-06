///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: receiver.v
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

module receiver (
   input  wire       bclk,      // domain B clock
   input  wire       brst,      // active-high reset
   input  wire       breq,      // request input from sender
   input  wire       bload,     // load data
   input  wire [7:0] adata,     // data from sender
   output reg  [7:0] bdata,     // loaded data
   output wire       bvalid,    // bdata is valid
   output wire       back,      // acknowledge signal to sender
   output wire       back_fsm,  // fsm back value
   output wire [1:0] state_fsm  // state of sender fsm
);

// data ready/wait FSM
receiver_fsm fsm (
   .bclk(bclk),
   .brst(brst),
   .bload(bload),
   .breq(breq),
   .back(back),
   .bvalid(bvalid),
   .state(state_fsm));
assign back_fsm = back;

// load next data word
wire bload_data = bvalid & bload;

// ff to register adata
always @(posedge bclk) begin
   if (brst)
      bdata <= 8'h00;
   else if (bload_data)
      bdata <= adata;
end

endmodule

