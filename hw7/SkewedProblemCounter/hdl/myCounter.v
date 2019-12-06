///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: counter.v
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

module myCounter
(
   input wire CLK,
   input wire RESET,
   input wire sQ0, sQ1, sQ2, sQ3,
   output wire TC,
   output wire [15:0] Q
);

// least significant 4 bits of the counter will be clocked by sQ0-sQ3
reg Q0, Q1, Q2, Q3;
wire [3:0] lQ;
// signal to increment upper 12 bits of the counter by 1, because the last
// 4 bits were all 1's
wire lTC;
// upper 12 bits of the counter clocked by input CLK
reg [11:0] uQ;

// continuous assignments
assign lQ = {Q3, Q2, Q1, Q0};
assign Q = {uQ, Q3, Q2, Q1, Q0};
assign TC = (Q == 16'hFFFF) ? 1'b1 : 1'b0;
assign lTC = (lQ == 4'hF) ? 1'b1 : 1'b0;


// bit 0
always @ (sQ0)
begin
   if (RESET && sQ0)
      begin
         Q0 <= 1'b0;
      end
   else
      begin
         Q0 <= !sQ0;
      end
end  

// bit 1
always @ (sQ1)
begin
   if (RESET && sQ1)
      begin
         Q1 <= 1'b0;
      end
   else
      begin
         Q1 <= !sQ1;
      end
end  

// bit 2
always @ (sQ2)
begin
   if (RESET && sQ2)
      begin
         Q2 <= 1'b0;
      end
   else
      begin
         Q2 <= !sQ2;
      end
end  

// bit 3
always @ (sQ3)
begin
   if (RESET && sQ3)
      begin
         Q3 <= 1'b0;
      end
   else
      begin
         Q3 <= !sQ3;
      end
end

// remaining 12 bits
always @ (posedge CLK)
begin
   if (RESET)
      begin
         uQ <= 12'h0;
      end
   if (lTC)
      begin
         uQ <= uQ + 1'b1;
      end
end

endmodule