module register_bank(ALU_result, destreg_sel, srcreg1_sel, srcreg2_sel, srcreg1, srcreg2);
input [15:0] ALU_result;
input [2:0] destreg_sel, srcreg1_sel, srcreg2_sel;
output [15:0] srcreg1, srcreg2;
wire [7:0] reg_en;
wire [15:0] q0, q1, q2, q3, q4, q5, q6, q7;

decoder dcdr(destreg_sel, reg_en);
register_access rb(reg_en, ALU_result, q0, q1, q2, q3, q4, q5, q6, q7);
rb_multiplexer mux1(q0, q1, q2, q3, q4, q5, q6, q7, srcreg1_sel, srcreg1);
rb_multiplexer mux2(q0, q1, q2, q3, q4, q5, q6, q7, srcreg2_sel, srcreg2);

endmodule
