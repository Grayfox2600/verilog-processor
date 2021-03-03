module testbench_multiplier();
reg [31:0] in1, in2;
wire [31:0] prod;

initial 
begin
$display($time, " Test my multiplier");
end

initial
begin
$monitor($time, " in1=%d, in2=%d, prod=%b, prod=%d", in1, in2, prod, prod);
end

initial
begin
in1=8'b00111111; 
in2=8'b00111111;
#100;
in1=8'b0000;
in2=8'b0101;
#100;
in1=8'b0101; 
in2=8'b0101;
#100;
in1=8'b1111;
in2=8'b1000;
#100;
in1=8'b1000;
in2=8'b1111;
#100;
end

multiplier#(32) unit(in1, in2, prod);
endmodule
