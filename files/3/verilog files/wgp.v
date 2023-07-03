module waveform_generator_processor(input clk, rst,
	input [2:0] select, output [7:0] out);
	reg [7:0] phase;
	reg [7:0]counter = 8'd0;
	reg [15:0] sine = 16'd0, cose = 16'd30000;
	reg [15:0] tmp = 16'd0;
	reg d = 1'd0;
	always@(posedge clk, posedge rst) begin
		counter = counter + 8'd1;
		tmp = {{6{cose[15]}}, cose[15:6]};
		sine = sine + tmp;
		tmp = {{6{sine[15]}}, sine[15:6]};
		cose = cose - tmp;
	end

	always@(posedge clk, posedge rst) begin
		if (clk) d = (counter == 8'd0) ? ~d : d;
		if(rst) phase = 8'd0;
		else begin
			case (select)
				3'd0 : phase = 8'd255 / (8'd255 - counter + 8'd1);
				3'd1 : phase = (counter > 8'd127) ? 8'd255 : 8'd0;
				3'd2 : phase = (d) ? (8'd255 - counter) : counter;
				3'd3 : phase = sine[15:8] + 8'd127;
				3'd4 : phase = (sine[15]) ? (8'd255 - sine[15:8] - 8'd128):
											sine[15:8] + 8'd128;
				3'd5 : phase = (sine[15]) ? 8'd127 : sine[15:8] + 8'd128;
			endcase
		end
	end
	
	assign out = phase;
endmodule