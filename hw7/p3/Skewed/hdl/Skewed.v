///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Skewed.v
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

module Skewed
(
   input wire clk,
   input wire reset,
   output wire TC
);

reg [15:0] q = 16'h0000;
assign TC = (q == 16'hFFFF);

always @ (posedge clk)
begin
   if (reset == 1'b1)
      begin
         q <= 16'h0;
      end
   else
      begin
         q <= q + 1'd1;
      end
end

endmodule

