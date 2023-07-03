`timescale 1ns / 1ns
module TBOnePulser();
	reg clk = 1'b0, PB = 1'b0;
	wire out;
	OnePulser inst(.clk(clk), .clkPB(PB), .PO(out));
	initial repeat(100) #100 clk = ~clk;
	initial begin
		#350 PB = 1'b1;
		#700 PB = 1'b0;
		#400 PB = 1'b1;
		#120 PB = 1'b0;
	end
endmodule