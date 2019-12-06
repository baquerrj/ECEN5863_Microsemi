///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: receiver_fsm.v
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

module receiver_fsm (
   input  wire      bclk,   // domain B clock
   input  wire      brst,   // active-high reset
   input  wire      bload,  // load data / send ack
   input  wire      breq,   // sender REQ signal
   output reg       back,   // receiver ACK signal
   output reg       bvalid, // data valid / ready to load
   output reg [1:0] state   // state of fsm
);

// gray-encoded state
parameter IDLE  = 2'b00;
parameter WAIT  = 2'b01;
parameter LOAD  = 2'b11;

reg [1:0] next  = IDLE;

always @(posedge bclk) begin
   if (brst)
      state <= IDLE;
   else
      state <= next;
end

always @(*) begin
   case (state)
      IDLE: begin
         if (breq)
            next = WAIT;
         else
            next = IDLE;
      end
      WAIT: begin
         if (!breq)
            next = LOAD;
         else
            next = WAIT;
      end
      LOAD: begin
      if (bload)
         next = IDLE;
      else
         next = LOAD;
      end
      default: begin
         // unknown state reach
         next = IDLE;
      end
   endcase
end

always @(state) begin
   case (state)
      IDLE: begin
         back   <= 1'b0;
         bvalid <= 1'b0;
      end
      WAIT: begin
         back   <= 1'b1;
         bvalid <= 1'b0;
      end
      LOAD: begin
         back   <= 1'b0;
         bvalid <= 1'b1;
      end
      default: begin
         back   <= 1'b0;
         bvalid <= 1'b0;
      end
   endcase
end

endmodule

