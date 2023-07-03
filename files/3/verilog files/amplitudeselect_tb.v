`timescale 1ns / 1ns
module amplitudeslct_tb();
  reg [1:0] SW = 2'b00;
  reg [7:0] wave = 8'b11111111;
  wire [7:0] out_wave;
  amplitudeselect inst(wave,SW,out_wave);
  initial begin
    #200 SW=2'b11;
    #200 SW=2'b01;
    #200 $stop;
  end

endmodule