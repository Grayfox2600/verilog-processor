module testbench_instruction_decoder();
reg [15:0] instruction;
wire [3:0] op_code, shift_bits;
wire [2:0] dest_reg, src_reg1, src_reg2;
wire [1:0] cond;

initial 
begin
$display($time, " Test my instruction decoder");
end

initial
begin
$monitor($time, " instruction=%b, cond=%b, op_code=%b, dest_reg=%b, src_reg1=%b, src_reg2=%b, shift_bits=%b", 
					instruction, cond, op_code, dest_reg, src_reg1, src_reg2, shift_bits);
end

initial
begin
instruction=16'b1010111101010011;
end

inst_decoder unit(instruction, cond, op_code, dest_reg, src_reg1, src_reg2, shift_bits);
endmodule
