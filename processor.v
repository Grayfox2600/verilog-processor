module processor(clk, rst, run, state, pc, ALU_result, flags);
input clk, rst, run;
input [2:0] pc;
output [15:0] ALU_result;
output [3:0] state;
output [2:0] flags;
wire [15:0] instruction, srcreg1, srcreg2;
wire [3:0] op, shift;
wire [2:0] destreg_sel, srcreg1_sel, srcreg2_sel;
wire [1:0] cond;

FSM fsm(clk, rst, run, state);
ROM rom(state[0], pc, instruction);
inst_decoder i_dcdr(state[1], instruction, cond, op, destreg_sel, srcreg1_sel, srcreg2_sel, shift);
register_bank rb(ALU_result, destreg_sel, srcreg1_sel, srcreg2_sel, srcreg1, srcreg2);
ALU alu (state[2], srcreg1, srcreg2, op, shift, ALU_result, flags);

endmodule
