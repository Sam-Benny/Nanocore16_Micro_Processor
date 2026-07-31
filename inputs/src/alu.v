module alu (

	input [3:0] alu_op,
	input [7:0] operand_a,
	input [7:0] operand_b,
        output reg [7:0] alu_result,
        output reg zero_flag,
 	output reg carry_flag

);

always@(*)begin 

	alu_result = 8'h00;
	carry_flag = 1'b0;

	case(alu_op) 

		4'h0 : { carry_flag, alu_result } = operand_a + operand_b ;
		4'h1 : { carry_flag, alu_result } = operand_a - operand_b ;
		4'h3 : alu_result = operand_a & operand_b ;
		4'h4 : alu_result = operand_a | operand_b ;
		4'h5 : alu_result = operand_a ^ operand_b ;
		4'h6 : alu_result = ~operand_a ;
		4'h7 : alu_result = operand_a << operand_b[2:0] ;
		4'h8 : alu_result= operand_a >> operand_b[2:0] ;
		4'h9 : alu_result = operand_b;
		4'ha : alu_result = operand_a;
		4'hb : {carry_flag, alu_result} = operand_a - operand_b;
	default : alu_result = 8'h00;

	endcase
	
	zero_flag = (alu_result == 8'h00);
end

endmodule

