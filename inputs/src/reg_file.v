module reg_file (

	input clk,
	input rst_n,
	input wr_en,
	input [3:0] rd_addr,
	input [3:0] rs1_addr,
	input [3:0] rs2_addr,
	input [7:0] wr_data,
	output [7:0] rs1_data,
	output [7:0] rs2_data

);

reg [7:0] regs[0:15];

assign rs1_data = regs[rs1_addr];
assign rs2_data = regs[rs2_addr];
integer i;



always@(posedge clk or negedge rst_n)begin

	if(rst_n==0)begin
		for(i=0; i<16; i=i+1)
			regs[i] <= 8'h00;
	end

	else begin

		if(wr_en && rd_addr!=0)
			regs[rd_addr] <= wr_data;

	end

end 

endmodule 


