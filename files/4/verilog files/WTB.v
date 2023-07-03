`timescale 1ns/1ns
module WTB();
	reg clk=1'b0, rst=1'b0, start=1'b0, eng_done=1'b1;
	wire done, eng_start, rst_count;
	reg inc_start=1'b0;
	wrapper inst(.clk(clk), .rst(rst), .start(start), .eng_done(eng_done), .done(done), .eng_start(eng_start), .inc_count(inc_count), .rst_count(rst_count));
	initial repeat(10000) #50 clk = ~clk;
	initial begin
		#1000 start = 1'b1;
		#220 start = 1'b0;
		#50 eng_done = 1'b0;
		#7000 eng_done = 1'b1;
	end
endmodule
