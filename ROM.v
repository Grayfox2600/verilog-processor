module ROM(read_en, pc, instruction);
input [2:0] pc;
input read_en;
output reg [15:0] instruction;
//reg [2:0] pc;
reg [15:0] mem [0:7];

initial begin
$readmemb("ROM.dat", mem);
//pc = 3'b000;
end

always @(read_en or pc) begin
if (read_en) begin
instruction = mem[pc];
//pc = pc + 3'b001;
end else begin
instruction = instruction;
end
end

endmodule
