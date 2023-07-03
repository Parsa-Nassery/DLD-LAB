module PWM (input [7:0] data, input clk ,output reg out_pulse);
	reg [7:0] counter = 8'b0;
	always @(posedge clk) begin
		counter <= counter + 8'd1;
		out_pulse = (counter > data) ? 1'b0 : 1'b1;
	end
endmodule
