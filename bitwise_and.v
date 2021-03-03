module bitwise_and(in1, in2, band_out);
parameter size = 4;
input [size-1:0] in1, in2;
output [size-1:0] band_out;

assign band_out = in1 & in2;

endmodule
