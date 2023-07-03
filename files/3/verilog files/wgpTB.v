`timescale 1ns / 1ns
module wgpTB();
	reg clk = 1'b0, rst = 1'b0;
	reg [2:0] sel = 3'd1;
	wire [7:0] out;
	waveform_generator_processor inst(.clk(clk), .rst(rst), .select(sel), .out(out));
	
	initial repeat(1000000) #50 clk = ~clk;
	initial begin
		#250000 sel = 3'd2;
		#500000 sel = 3'd0;
		#500000 sel = 3'd3;
		#250000 sel = 3'd4;
		#250000 sel = 3'd5;
		#200 rst = 1'b1;
		#200 rst = 1'b0;
	end
endmodule