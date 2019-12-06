///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: sender.v
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

module sender ( 
   input  wire       aclk,      // domain A clock signal
   input  wire       arst,      // active-high reset
   input  wire       aack,      // acknowledge input from receiver
   input  wire       anxtdata,  // new data is ready
   input  wire [7:0] adatain,   // data input to send
   output reg  [7:0] adata,     // data to send
   output wire       areq,      // request signal from sender
   output wire       aready,    // ready for new data / enable data generator (counter)
   output wire       areq_fsm,  // fsm areq value
   output wire [1:0] state_fsm  // state of sender fsm
);

// data ready/busy FSM
sender_fsm fsm (
   .anxtdata(anxtdata), 
   .aack(aack),
   .aclk(aclk), 
   .arst(arst), 
   .areq(areq),
   .aready(aready),
   .state(state_fsm));
assign areq_fsm = areq;

// enable new data load 
wire aload_data = aready & anxtdata;

// register new data to send
always @(posedge aclk) begin
   if (arst)
      adata <= 8'h00;
   else if (aload_data)
      adata <= adatain;
end

endmodule

