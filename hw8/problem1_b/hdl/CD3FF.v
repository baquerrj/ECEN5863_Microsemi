module CD3FF(
   input wire Aclk,     // 27.7 Mhz (fast)
   input wire Bclk,     // 50.0 MHz (slow)
   input wire reset,
   output reg Dout
);

// data from clock domain A
reg dataA = 1'b0;

// mux'd data
wire muxOut;
// synchronization signal
wire sync;

assign muxOut = sync ? dataA : Dout;

Synchronizer synchronizer(.clockS(Bclk),
                          .clockF(Aclk),
                          .reset(reset),
                          .sync(sync));

// data source toggle flip-flop
always @(posedge Aclk) begin
   if (reset)
      dataA <= 1'b0;
   else
      dataA <=  ~dataA;
end   

// data sink
always @(posedge Bclk) begin
   if (reset)
      Dout <= 1'b0;
   else
      Dout <= muxOut;
end

endmodule

