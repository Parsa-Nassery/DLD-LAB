`timescale 1ns / 1ns
module SerTransmitter(input clk, rst, clkEn, serIn, output serOut, serOutValid, output [3:0] count_out);  	
	wire co, inc_cnt, rst_cnt;
	Counter counter(.clk(clk), .co(co), .inc_cnt(inc_cnt), .rst_cnt(rst_cnt), .clkEn(clkEn), .count_out(count_out));
	SequenceDetector sd(.clk(clk), .rst(rst), .clkEn(clkEn), .serIn(serIn), .co(co), .inc_cnt(inc_cnt), .rst_cnt(rst_cnt), .serOut(serOut), .serOutValid(serOutValid));
endmodule