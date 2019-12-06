///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: synchronizer.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
// 2-flip-flop synchronizer for control signals
//
// Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 


module synchronizer (
   input    wire clk,   // clock signal
   input    wire d,     // control signal to sync
   input    wire rst,   // active-high reset
   output   reg  q      // synchronization signal
);

reg q1; // 1st and 2nd stage ff output
//reg q2;
always @(posedge clk) begin
   if (rst) begin
      q  <= 1'b0;
      q1 <= 1'b0;
  //    q2 <= 1'b0;
   end
   else begin
      q1 <= d;
    //  q2 <= q1;
      q  <= q1;
   end
end

endmodule