module Synchronizer(
   input wire clockS,   // slow clock
   input wire clockF,   // fast clock
   input wire reset,    // reset
   output reg sync      // synchronization signal
);

reg S1, S2; // intermedaite synchronization signals

always @(posedge clockF) begin
   if (reset)
      S1 <= 1'b0;
   else
      S1 <= clockS;
end

always @(posedge clockF) begin
   if (reset)
      S2 <= 1'b0;
   else
      S2 <= S1;
end

always @(posedge clockF) begin
   if (reset)
      sync <= 1'b0;
   else
      sync <= S2;
end


endmodule

