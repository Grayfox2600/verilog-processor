module testbench_register_bank();
reg [15:0] ALU_result;
reg [2:0] destreg_sel, srcreg1_sel, srcreg2_sel;
wire [15:0] srcreg1, srcreg2;

initial 
begin
$display($time, " Test my register bank");
end

initial
begin
$monitor($time, " ALU_result=%b, destreg_sel=%b, srcreg1_sel=%b, srcreg2_sel=%b, srcreg1=%b, srcreg2=%b", 
				ALU_result, destreg_sel, srcreg1_sel, srcreg2_sel, srcreg1, srcreg2);
end

initial
begin
ALU_result=16'b0000111100001111;
destreg_sel=3'b011;
srcreg1_sel=3'b000;
srcreg2_sel=3'b001;
#100;
$display($time, " Register3 after write: %b", unit.rb.mem[3'b011]);
end

register_bank unit(ALU_result, destreg_sel, srcreg1_sel, srcreg2_sel, srcreg1, srcreg2);
endmodule
