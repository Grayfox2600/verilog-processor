module testbench_band();
reg [3:0] in1, in2;
wire [3:0] band_out;

initial 
begin
$display($time, " Test my bitwise_and");
end

initial
begin
$monitor($time, " in1=%b, in2=%b, band_out=%b", in1, in2, band_out);
end

initial
begin
in1=4'b0100; 
in2=4'b0011;
#100;
in1=4'b0100;
in2=4'b0101;
#100;
in1=4'b0101; 
in2=4'b0101;
#100;
in1=4'b1111;
in2=4'b1000;
#100;
in1=4'b1000;
in2=4'b1111;
#100;
end

bitwise_and unit(in1, in2, band_out);
endmodule
