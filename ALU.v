module ALU(execute, srcreg1, srcreg2, op, shift, ALU_result, flags);
parameter mux_ins = 4, mux_width = 4, mux_sel = 2'b00;
input [15:0] srcreg1, srcreg2;
input [3:0] op, shift;
input execute;
output [15:0] ALU_result;
output [2:0] flags;
wire [15:0] add_result, sub_result, mul_result, bor_result, band_result, bxor_result, rsr_result,
				lsr_result, rrr_result;
wire [mux_width-1:0] mux_result;
wire addcarry;

adder #(16) add(srcreg1, srcreg2, addcarry, add_result); 
subtractor #(16) sub(srcreg1, srcreg2, sub_result); 
multiplier #(16) mul(srcreg1, srcreg2, mul_result); 
bitwise_or #(16) bor(srcreg1, srcreg2, bor_result); 
bitwise_and #(16) band(srcreg1, srcreg2, band_result); 
bitwise_xor #(16) bxor(srcreg1, srcreg2, bxor_result); 
rshift_reg #(16) rsr(srcreg1, shift, rsr_result); 
lshift_reg #(16) lsr(srcreg1, shift, lsr_result); 
rrot_reg #(16) rrr(srcreg1, shift, rrr_result); 
multiplexer #(mux_ins,mux_width) mux(srcreg1, mux_sel, mux_result); //separate inputs with "_", with srcreg1[0] being least significant grouping 

assign ALU_result = (op==0 && execute) ? add_result :
		    (op==1 && execute) ? sub_result :
		    (op==2 && execute) ? mul_result :
           	    (op==3 && execute) ? bor_result :
		    (op==4 && execute) ? band_result :
		    (op==5 && execute) ? bxor_result :
		    (op==6 && execute) ? rsr_result :
		    (op==7 && execute) ? lsr_result :
		    (op==8 && execute) ? rrr_result :
		    (op==9 && execute) ? mux_result :
		    ALU_result;

assign flags[0] = ((op==0 || op==1) && (add_result==0 || sub_result==0 || mul_result==0) && execute) ? 1 : 0;	//z flag
assign flags[1] = (op==0 && addcarry==1 && execute) ? 1 : 0;				//c flag
assign flags[2] = (op==1 && srcreg2 > srcreg1 && execute) ? 1 : 0;			//n flag

endmodule
