module tb_alu;

	reg [3:0] tb_alu_op;
	reg [7:0] tb_operand_a, tb_operand_b;
	wire [7:0] tb_alu_result ;
	wire tb_zero_flag, carry_flag ;


alu dut ( .alu_op(tb_alu_op), 
	  .operand_a(tb_operand_a),
	  .operand_b(tb_operand_b),
	  .alu_result(tb_alu_result),
	  .zero_flag(tb_zero_flag),
	  .carry_flag(tb_carry_flag) 

        );

initial begin 

	tb_alu_op =4'h0; tb_operand_a =8'h00; tb_operand_b =8'h00; 
	
#10	tb_alu_op =4'h0; tb_operand_a =8'h0a; tb_operand_b =8'h0f; 	
#10	tb_alu_op =4'h1; tb_operand_a =8'h0f; tb_operand_b =8'h0a; 	
#10	tb_alu_op =4'h3; tb_operand_a =8'h56; tb_operand_b =8'h74; 	
#10	tb_alu_op =4'h4; tb_operand_a =8'h00; tb_operand_b =8'h0f; 	
#10	tb_alu_op =4'h5; tb_operand_a =8'h01; tb_operand_b =8'h10; 	
#10	tb_alu_op =4'h6; tb_operand_a =8'h16;  	
#10	tb_alu_op =4'h7; tb_operand_a =8'h08; tb_operand_b =8'h0b; 	
#10	tb_alu_op =4'h8; tb_operand_a =8'h32; tb_operand_b =8'h46; 	
#10	tb_alu_op =4'h9; tb_operand_b =8'hcf; 	
#10	tb_alu_op =4'ha; tb_operand_a =8'h36; 
#10	tb_alu_op =4'hb; tb_operand_a =8'h0a; tb_operand_b =8'h0f; 	
#10	tb_alu_op =4'hc; tb_operand_a =8'h0a; tb_operand_b =8'h0f;

#10 $finish;
end

initial begin
	$monitor( " alu_op =%4h   a =%8h   b =%8h   alu_out =%8h ",tb_alu_op, tb_operand_a, tb_operand_b, tb_alu_result );
	$dumpfile("alu.fsdb");
	$dumpvars(0,tb_alu);
end

endmodule
