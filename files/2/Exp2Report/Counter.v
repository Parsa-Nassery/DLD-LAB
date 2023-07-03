`timescale 1ns / 1ns
module Counter(input clk, rst_cnt, inc_cnt, clkEn, output co, output [3:0] count_out);  	
	reg [3:0] register = 4'd0;
	
	assign co = 1'b1 ? (count_out >= 4'd10) : 1'b0;
	assign count_out = register;

	always @(posedge clk, posedge rst_cnt) begin
		if(rst_cnt)
			register = 3'b000;
		else
			if (clkEn && inc_cnt)
				register <= register + 1'b1;
	end
endmodule