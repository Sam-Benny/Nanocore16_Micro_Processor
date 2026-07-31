module top_module(
	
	input clk,
	input rst_n,pc_en,
	input [15:0] branch_target,
	output zero_flag,
	output carry_flag,
	output [7:0] alu_result
	
	
	); 

	wire [15:0] pc_out;
	wire [15:0] instr;
	wire [3:0] opcode;
	wire [3:0] rd_addr;
	wire [3:0] rs1_addr;
	wire [3:0] rs2_addr;
	wire [7:0] imm;
	wire [3:0] alu_op;
	wire [7:0] rs1_data;
	wire [7:0] rs2_data;
	
	wire [15:0] addr;
	wire reg_wr_en;
	wire imm_sel;
	wire branch_en;
	
	wire [7:0] wr_data;
	wire [7:0] operand_a;
	wire [7:0] operand_b;

assign addr      = pc_out;
assign operand_a = rs1_data;
assign operand_b = (imm_sel) ? imm : rs2_data;
assign wr_data   = alu_result;



pc dut ( .clk(clk), 
	 .rst_n(rst_n),
	 .pc_en(pc_en),
	 .branch_en(branch_en),
	 .branch_target(branch_target),
	 .pc_out(pc_out)

 );


instruction_memory dut2( .addr(addr),
	     .instr(instr)

 );

decoder dut3( .instr(instr),
	      .zero_flag(zero_flag),
	      .opcode(opcode),
	      .rd_addr(rd_addr),
	      .rs1_addr(rs1_addr),
	      .rs2_addr(rs2_addr),
	      .imm(imm),
	      .alu_op(alu_op),
	      .reg_wr_en(reg_wr_en),
	      .imm_sel(imm_sel),
	      .branch_en(branch_en)

      );

reg_file dut4( .clk(clk),
	       .rst_n(rst_n),
	       .wr_en(reg_wr_en),
	       .rd_addr(rd_addr),
	       .rs1_addr(rs1_addr),
	       .rs2_addr(rs2_addr),
	       .wr_data(wr_data),
	       .rs1_data(rs1_data),
	       .rs2_data(rs2_data)

       );


alu dut5( .alu_op(alu_op),
	  .operand_a(operand_a),
	  .operand_b(operand_b),
	  .alu_result(alu_result),
	  .zero_flag(zero_flag),
	  .carry_flag(carry_flag)

  );


 endmodule

