`timescale 1 ns/ 1 ns
module frequencyselect (input[2:0] sw, input clk,rst, output  carry_out);
	reg [8:0] count = 9'b000101000;
	always@(posedge clk, posedge rst) begin
		if (rst)
			count <= {{6'b000000}, sw};
		else if (&count)
			count <= {{6'b000000}, sw};
		else count <= count + 1;
	end
	assign carry_out = &count;
endmodule 
