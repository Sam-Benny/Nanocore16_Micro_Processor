module tb_reg_file;

	reg tb_clk;
	reg tb_rst_n;
	reg tb_wr_en;
	reg [3:0] tb_rd_addr;
	reg [3:0] tb_rs1_addr;
	reg [3:0] tb_rs2_addr;
	reg [7:0] tb_wr_data;
	wire [7:0] tb_rs1_data;
	wire [7:0] tb_rs2_data;


reg_file dut ( .clk(tb_clk),
	       .rst_n(tb_rst_n),
	       .wr_en(tb_wr_en),
	       .rd_addr(tb_rd_addr),
	       .rs1_addr(tb_rs1_addr),
	       .rs2_addr(tb_rs2_addr),
	       .wr_data(tb_wr_data),
	       .rs1_data(tb_rs1_data),
	       .rs2_data(tb_rs2_data)

       );

initial tb_clk =0;

always #5 tb_clk = ~tb_clk;

initial begin 
	
	tb_rd_addr =4'h0; tb_rs1_addr =4'h0; tb_rs2_addr =4'h0; tb_wr_data =8'h00; tb_rst_n =0; tb_wr_en =0;

	
	#5 tb_rd_addr =4'h1; tb_wr_data =8'ha0; tb_wr_en =1; tb_rst_n =1;
	#10 tb_rd_addr =4'h2; tb_wr_data =8'h77; tb_wr_en =1; tb_rst_n =1;
	#10 tb_rd_addr =4'h3; tb_wr_data =8'hb7; tb_wr_en =1; tb_rst_n =1;
	#10 tb_rd_addr =4'h4; tb_wr_data =8'h18; tb_wr_en =1; tb_rst_n =1;
	#10 tb_rd_addr =4'h5; tb_wr_data =8'h36; tb_wr_en =1; tb_rst_n =1;

#10	tb_rs1_addr =4'h1; tb_rs2_addr =4'h2; tb_wr_en =0; tb_rst_n =1;
#10	tb_rs1_addr =4'h3; tb_rs2_addr =4'h4; tb_wr_en =0; tb_rst_n =1;
#10 	tb_rst_n = 0;

#10 $finish;

end 

initial begin 
	$monitor("time=%0t rs1=%h rs2=%h", $time, tb_rs1_data, tb_rs2_data);
	$dumpfile("reg_file.fsdb");
	$dumpvars(0,tb_reg_file);
end

      

endmodule


