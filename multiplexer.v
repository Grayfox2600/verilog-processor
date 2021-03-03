/*
**verilog cannot generate ports, so all inputs come in as a single bus
**n is number of channels/inputs, m is width of each channel
**for example if: in=11_10_01_00, then: in[3]=11, in[2]=10, in[1]=01, in[0]=00
*/
module multiplexer(in, sel, out); 
parameter n = 4, m = 4; 
input [(n*m)-1:0] in;
input [$clog2(n)-1:0] sel; //$clog2(n) sourced from: http://www.edaboard.com/thread167892.html
output [m-1:0] out;
 
/*
**indexed part-select. sourced from:
**https://verificationacademy.com/forums/systemverilog/range-must-be-bounded-constant-expressions
*/
assign out = in[(m*(sel+1))-1 -: m];  

/* This didn't work because it was assigning out 4 times with different values
genvar i;
generate  
begin
for(i = 1; i <= n; i = i + 1) 
	begin
		assign out = (i == (sel+1)) ? in[(m*i)-1:(m*i)-m] : 0;
	end
end
endgenerate
*/

endmodule
