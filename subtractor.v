module subtractor(in1, in2, diff);
parameter n = 4;
input [n-1:0] in1, in2;
output reg [n-1:0] diff;

always @*
begin
	diff = in1 + (~in2+1);
	diff = (in2>in1) ? (~diff+1) : diff;
end

endmodule
