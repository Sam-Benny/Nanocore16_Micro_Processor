module tb_pc;

reg tb_clk;
reg tb_rst_n;
reg tb_pc_en;
reg tb_branch_en;
reg [15:0] tb_branch_target;
wire [15:0] tb_pc_out;

pc dut (.clk(tb_clk),
       	.rst_n(tb_rst_n),
       	.pc_en(tb_pc_en),
       	.branch_en(tb_branch_en),
	.branch_target(tb_branch_target),
       	.pc_out(tb_pc_out)
);

initial begin
	tb_clk = 0;

end

always 
	#10 tb_clk = ~tb_clk ;



initial begin 

	 tb_rst_n = 0; tb_pc_en = 0; tb_branch_en = 0; tb_branch_target = 0;  
#10 	 tb_rst_n = 1; tb_pc_en = 1; tb_branch_en = 0; 
#20	 tb_rst_n = 1; tb_pc_en = 1; tb_branch_en = 0;
#20	 tb_rst_n = 1; tb_pc_en = 1; tb_branch_en = 1; tb_branch_target = 7;
#20 	 tb_rst_n = 1; tb_pc_en = 1; tb_branch_en = 1; tb_branch_target = 10;
#20 	 tb_rst_n = 0;	 
#20 	 tb_rst_n = 1; tb_pc_en = 1; tb_branch_en = 0; 
	
	#50 $finish;
end 

initial begin 

	$dumpfile("pc.fsdb");
	$dumpvars(0,tb_pc);
end

endmodule

