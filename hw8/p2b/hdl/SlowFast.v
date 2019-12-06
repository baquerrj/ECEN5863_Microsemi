module SlowFast(
   input wire Aclk, // 3.33 Mhz (slow)
   input wire Bclk, // 100 MHz (fast)
   input wire reset,
   output reg[3:0] Dout
);

// shifted data input
wire[3:0] dataA;
// shift bit
reg shift_in = 1'b0;

// mux'd data
wire[3:0] muxOut;

// synchronization signal
wire sync;

assign muxOut = sync ? dataA : Dout;

ShiftRegister shiftRegister(.clk(Aclk), 
                            .data_in(shift_in), 
                            .data_out(dataA));

Synchronizer synchronizer(.clockS(Aclk),
                          .clockF(Bclk),
                          .reset(reset),
                          .sync(sync));

// data source toggle flip-flop
always @(posedge Aclk) begin
   if (reset)
      shift_in <= 1'b0;
   else
      shift_in <=  ~shift_in;
end

// data sink
always @(posedge Bclk) begin
   if (reset)
      Dout <= 4'b0000;
   else
      Dout <= muxOut;
end

endmodule

