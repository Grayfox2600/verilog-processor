module bitwise_or(in1, in2, bor_out);
parameter size = 4;
input [size-1:0] in1, in2;
output [size-1:0] bor_out;

assign bor_out = in1 | in2;

endmodule
