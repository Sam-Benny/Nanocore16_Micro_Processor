module decoder(

	input [15:0] instr,
	input zero_flag,
	output [3:0] opcode,
	output [3:0] rd_addr,
	output [3:0] rs1_addr,
	output [3:0] rs2_addr,
	output [7:0] imm,
	output reg [3:0] alu_op,
	output reg reg_wr_en,
	output reg imm_sel,
	output reg branch_en

);

	assign opcode = instr [15:12] ;
	assign rd_addr = instr [11:8] ;
	assign rs1_addr = instr [7:4] ;
	assign rs2_addr = instr [3:0] ;
	assign imm = { {4{instr[3]}} , instr[3:0] };

always@(*) begin
	
	case (opcode) 

		4'h0 : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'b0, 1'b1, 1'b0, 1'b0};
		4'h1 : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h1, 1'b1, 1'b0, 1'b0};
		4'h2 : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h0, 1'b1, 1'b1, 1'b0};
		4'h3 : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h3, 1'b1, 1'b0, 1'b0};
		4'h4 : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h4, 1'b1, 1'b0, 1'b0};
		4'h5 : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h5, 1'b1, 1'b0, 1'b0};
		4'h6 : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h6, 1'b1, 1'b0, 1'b0};
		4'h7 : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h7, 1'b1, 1'b1, 1'b0};
		4'h8 : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h8, 1'b1, 1'b1, 1'b0};
		4'h9 : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h9, 1'b1, 1'b1, 1'b0};
		4'ha : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'ha, 1'b1, 1'b0, 1'b0};
		4'hb : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h1, 1'b0, 1'b0, 1'b0};
		4'hc : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h0, 1'b0, 1'b0, 1'b1}; 
		4'hd : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h0, 1'b0, 1'b0, zero_flag};
		4'he : { alu_op, reg_wr_en, imm_sel, branch_en } = {4'h0, 1'b0, 1'b0, ~zero_flag}; 

	default : { alu_op, reg_wr_en, imm_sel, branch_en }  = {4'h0,1'b0, 1'b0, 1'b0};
	endcase 

end

endmodule
