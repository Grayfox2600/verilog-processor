module testbench_multiplexer();
reg [15:0] in1;
reg [1:0] sel;
wire [3:0] out;

initial 
begin
$display($time, " Test my multiplexer");
end

initial
begin
$monitor($time, " in1=%b, sel=%b, out=%b", in1, sel, out);
end

initial
begin
in1=16'b1111_1111_1111_0000; 
sel=2'b00;
#100;
in1=16'b1111_1111_0001_0000; 
sel=2'b01;
#100;
in1=16'b1111_0010_1111_0000; 
sel=2'b10;
#100;
in1=16'b0011_0000_0000_0000; 
sel=2'b11;
#100;
end

multiplexer unit(in1, sel, out);
endmodule
