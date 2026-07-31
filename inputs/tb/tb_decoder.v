module tb_decoder;
	
	reg [15:0] tb_instr;
	reg tb_zero_flag;
	wire [3:0] tb_opcode, tb_rd_addr, tb_rs1_addr, tb_rs2_addr, tb_alu_op;
	wire [7:0] tb_imm;
	wire tb_reg_wr_en;
	wire tb_imm_sel;
	wire tb_branch_en;


decoder dut ( 

	      .instr(tb_instr),
	      .zero_flag(tb_zero_flag),
	      .opcode(tb_opcode),
	      .rd_addr(tb_rd_addr),
	      .rs1_addr(tb_rs1_addr),
	      .rs2_addr(tb_rs2_addr),
	      .alu_op(tb_alu_op),
	      .imm(tb_imm),
	      .reg_wr_en(tb_reg_wr_en),
	      .imm_sel(tb_imm_sel),
	      .branch_en(tb_branch_en)


      );
	


      initial begin 

		tb_instr = 16'h0000; tb_zero_flag =0; //add
	#10	tb_instr = 16'h0312; tb_zero_flag =0; //sub
	#10	tb_instr = 16'h1312; tb_zero_flag =0; //addi
	#10	tb_instr = 16'h2105; tb_zero_flag =0; //and
	#10	tb_instr = 16'h4423; tb_zero_flag =0; //or
	#10	tb_instr = 16'h5423; tb_zero_flag =0; //xor
	#10	tb_instr = 16'h6210; tb_zero_flag =0; //inv
	#10	tb_instr = 16'h7312; tb_zero_flag =0; //shl
	#10	tb_instr = 16'h8312; tb_zero_flag =0; //shr
	#10	tb_instr = 16'h9105; tb_zero_flag =0; //ldi
	#10	tb_instr = 16'ha210; tb_zero_flag =0; //mov
	#10	tb_instr = 16'hb123; tb_zero_flag =0; //cmp
	#10	tb_instr = 16'hc105; tb_zero_flag =0; //jmp
	#10	tb_instr = 16'hd005; tb_zero_flag =1; //beq
	#10	tb_instr = 16'he005; tb_zero_flag =0; //bne
	#10	tb_instr = 16'hf000; tb_zero_flag =0; //nop

	#10 $finish;

end

initial begin
	
	$monitor("instr=%h opcode=%h rd=%h rs1=%h rs2=%h imm=%h alu_op=%h reg_wr=%b imm_sel=%b branch=%b",
		          tb_instr, tb_opcode, tb_rd_addr, tb_rs1_addr, tb_rs2_addr, tb_imm,
		          tb_alu_op, tb_reg_wr_en, tb_imm_sel, tb_branch_en);
		  
	$dumpfile("decoder.fsdb");
	$dumpvars(0,tb_decoder);

end
	
	endmodule
