module testbench_ALU();
reg [31:0] in1, in2;
wire [31:0] result;
wire [2:0] flags;

initial 
begin
$display($time, " Test my ALU");
end

initial
begin
$monitor($time, " in1=%b, in2=%b, result=%b, zero=%b, carry=%b, negative=%b", in1, in2, result, flags[0], flags[1], flags[2]);
end

//shift and rotate registers, and multiplexer submodules only require 1 input. Use in1.
initial
begin
in1=32'b11110000000000000000000000000100;
//in2=32'b00000000000000000000000000000101;
#100;
in1=32'b00010000000000000000000000000101; 
//in2=32'b00000000000000000000000000000101;
#100;
in1=32'b00100000000000000000000000001111;
//in2=32'b00000000000000000000000000001000;
#100;
in1=32'b00110000000000000000000000001000;
//in2=32'b10000000000000000000000000001111;
#100;
end

//Adjust .op() parameter to select submodule to generate (0-9). Remove .mux_ins(), .mux_width(), and .mux_sel() 
//for submodules other than multiplexer (.op(9)). Use .reg_n() for shift and rotate registers
//to select number of bits to shift or rotate.
ALU #(.op(9),.mux_ins(8),.mux_width(4),.mux_sel(3'd7)) unit(in1, in2, result, flags);
endmodule

