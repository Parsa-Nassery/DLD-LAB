`timescale 1ns / 1ns
module EXPTB();
	reg push_button = 1'b0, clk = 1'b0, serIn = 1'b0, rst = 1'b0;
	wire ser_Out, serOutValid;
	wire [6:0] seg_out;
	Exp2 extb(.push_button(push_button), .clk(clk), .serIn(serIn), .rst(rst), .serOut(ser_Out), .serOutValid(serOutValid), .seg_out(seg_out));
	
	initial repeat(1000) #100 clk = ~clk;
	initial begin
		#200 rst = 1'b1;
		#200 rst = 1'b0;
		#125 serIn = 1'b1;
		#300 push_button = 1'b1;
		#300 push_button = 1'b0;
		#500 serIn = 1'b0;
		#300 push_button = 1'b1;
		#300 push_button = 1'b0;
		#500 serIn = 1'b1;
		#300 push_button = 1'b1;
		#300 push_button = 1'b0;
		#500 serIn = 1'b1;
		#300 push_button = 1'b1;
		#300 push_button = 1'b0;
		repeat(10) #500 push_button = ~push_button;
	end
endmodule