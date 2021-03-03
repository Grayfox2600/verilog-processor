module testbench_rb_multiplexer();
reg [15:0] in0, in1, in2, in3, in4, in5, in6, in7;
reg [2:0] sel;
wire [15:0] out;

initial 
begin
$display($time, " Test my register bank multiplexer");
end

initial
begin
$monitor($time, " sel=%b, out=%b", sel, out);
end

initial
begin
in0=16'b0000000000000000;
in1=16'b0000000000000001; 
in2=16'b0000000000000010;
in3=16'b0000000000000011;
in4=16'b0000000000000100;
in5=16'b0000000000000101;
in6=16'b0000000000000110;
in7=16'b0000000000000111;
sel=3'b000;
#100;
sel=3'b001;
#100;
sel=3'b010;
#100;
sel=3'b011;
#100;
sel=3'b100;
#100;
sel=3'b101;
#100;
sel=3'b110;
#100;
sel=3'b111;
end

rb_multiplexer unit(in0, in1, in2, in3, in4, in5, in6, in7, sel, out);
endmodule
