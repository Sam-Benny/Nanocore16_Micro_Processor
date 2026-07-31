module pc (
	input clk,
	input rst_n,
	input pc_en,
	input branch_en,
	input [15:0] branch_target,
	output reg [15:0] pc_out

);

always@(posedge clk or negedge rst_n) begin

	if(rst_n==0)
		pc_out <= 0;

	else begin

		if(branch_en && pc_en )
	     		 pc_out <= branch_target;

		 else if (branch_en ==0 && pc_en)
			 pc_out <= pc_out +1 ;

     		 else if (pc_en ==0)
	      		pc_out <= pc_out;
        end
    
end

endmodule 

