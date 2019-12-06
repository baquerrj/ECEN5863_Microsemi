///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: sender_fsm.v
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

module sender_fsm (
   input  wire       aclk,       // domain A clock
   input  wire       arst,       // active-high reset
   input  wire       anxtdata,   // new data is waiting to be sent
   input  wire       aack,       // receiver ACK signal
   output reg        areq,       // sender REQ signal
   output reg        aready,     // ready for new data
   output reg [1:0]  state       // state of sender fsm
);

// gray-encoded state
parameter IDLE  = 2'b00;
parameter SEND  = 2'b01;
parameter WAIT  = 2'b11;

reg [1:0] next  = IDLE;

always @(posedge aclk) begin
   if (arst)
      state <= IDLE;
   else
      state <= next;
end

always @(*) begin
   case (state)
      IDLE: begin
         if (anxtdata && (!aack))
            next = SEND;
         else
            next = IDLE;
      end
      SEND: begin
         if (aack)
            next = WAIT;
         else
            next = SEND;
      end
      WAIT: begin
         if (!aack)
            next = IDLE;
         else
            next = WAIT;
      end
      default: begin
         // unknown state reached somehow
         next = IDLE;
      end
   endcase
end

always @(state) begin
   case (state)
      IDLE: begin
         areq   <= 1'b0;
         aready <= 1'b1;
      end
      SEND: begin
         areq   <= 1'b1;
         aready <= 1'b0;
      end
      WAIT: begin
         areq   <= 1'b0;
         aready <= 1'b0;
      end
      default: begin
         areq   <= 1'b0;
         aready <= 1'b0;
      end
   endcase
end

endmodule

