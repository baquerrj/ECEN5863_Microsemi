///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Strained.v
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

module Strained(
   input wire clk,      // input clock
   input wire reset,    // active high reset
   output wire TC       // terminal count
);

reg [23:0] Q = 24'h00_0000;   // 24-bit counter

wire [24:0] Q_next = Q + 1; // next value calculated with 25 bits (one more bit than counter)

// terminal count is set when count rolls over
assign TC = Q_next[24];

always @ (posedge clk)
begin
   if (reset)
      begin
         Q <= 24'h00_0000;
      end
   else
      begin
         Q <= Q_next[23:0];
      end
end

endmodule

