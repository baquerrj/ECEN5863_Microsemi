module SlowFast(
   input wire Aclk, // 100 Mhz (fast)
   input wire Bclk, // 3.33 MHz (slow)
   input wire reset,
   output reg[3:0] Dout
);

// shifted data input
wire[3:0] dataA;
// shift bit
reg shift_in = 1'b0;

// data locked in transfer interface
reg[3:0] dataLocked = 4'b0000;
// mux'd data
wire[3:0] muxOut;

// synchronization signal
wire sync;

assign muxOut = sync ? dataA : dataLocked;

ShiftRegister shiftRegister(.clk(Aclk), 
                            .data_in(shift_in), 
                            .data_out(dataA));

Synchronizer synchronizer(.clockS(Bclk),
                          .clockF(Aclk),
                          .reset(reset),
                          .sync(sync));

// data source toggle flip-flop
always @(posedge Aclk) begin
   if (reset)
      shift_in <= 1'b0;
   else
      shift_in <=  ~shift_in;
end

always @(posedge Aclk) begin
   if (reset)
      dataLocked <= 4'b0000;
   else
      dataLocked <= muxOut;
end

// data sink
always @(posedge Bclk) begin
   if (reset)
      Dout <= 4'b0000;
   else
      Dout <= dataLocked;
end

endmodule

