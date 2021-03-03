module bitwise_xor(in1, in2, bxor_out);
parameter size = 4;
input [size-1:0] in1, in2;
output [size-1:0] bxor_out;

assign bxor_out = in1 ^ in2;

endmodule
