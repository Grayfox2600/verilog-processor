module inst_decoder(decode, instruction, cond, op_code, dest_reg, src_reg1, src_reg2, shift_bits);
input [15:0] instruction;
input decode;
output [3:0] op_code, shift_bits;
output [2:0] dest_reg, src_reg1, src_reg2;
output [1:0] cond;

assign cond = (decode) ? instruction[15:14] : cond;
assign op_code = (decode) ? instruction[13:10] : op_code;
assign dest_reg = (decode) ? instruction[9:7] : dest_reg;
assign src_reg1 = (decode) ? instruction[6:4] : src_reg1;
assign src_reg2 = (decode) ? instruction[3:1] : src_reg2;
assign shift_bits = (decode) ? instruction[3:0] : shift_bits;

endmodule
