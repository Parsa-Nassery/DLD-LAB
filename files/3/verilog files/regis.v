module register(input [7:0] a, input clk, output reg [7:0] out);
	always@(posedge clk) begin
		out <= a;
	end
endmodule