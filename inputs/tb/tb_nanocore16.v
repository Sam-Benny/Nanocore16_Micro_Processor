
module tb_nanocore16;

    // Inputs
    reg tb_clk;
    reg tb_rst_n;
    reg tb_pc_en;
    reg [15:0] tb_branch_target;

    // Outputs
    wire tb_zero_flag;
    wire tb_carry_flag;
    wire [7:0] tb_alu_result;

    // DUT Instantiation
    top_module dut (
        .clk(tb_clk),
        .rst_n(tb_rst_n),
        .pc_en(tb_pc_en),
        .branch_target(tb_branch_target),
        .zero_flag(tb_zero_flag),
        .carry_flag(tb_carry_flag),
        .alu_result(tb_alu_result)
    );

    // Clock Generation (10 ns period)
    initial begin
        tb_clk = 1'b0;
        forever #5 tb_clk = ~tb_clk;
    end

    // Test Sequence
    initial begin

        // Initial values
        tb_rst_n         = 1'b0;
        tb_pc_en         = 1'b0;
        tb_branch_target = 16'h0000;

        // Hold reset
        #20;
        tb_rst_n = 1'b1;
        tb_pc_en = 1'b1;

        // Execute program normally
        #120;

        // Hold PC for 20 ns
        $display("\n------ PC HOLD TEST ------");
        tb_pc_en = 1'b0;

        #20;

        // Resume execution
        $display("\n------ PC RESUME ------");
        tb_pc_en = 1'b1;

        #80;

        // Force branch target
        $display("\n------ BRANCH TEST ------");
        tb_branch_target = 16'h0005;

        #20;

        tb_branch_target = 16'h0000;

        #100;

        $display("\nSimulation Completed Successfully");
        $finish;
    end

    // Console Monitor
    initial begin

        $display("----------------------------------------------------------------------------");
        $display("TIME\tRST\tPC_EN\tPC\tINSTR\tALU\tZERO\tCARRY");
        $display("----------------------------------------------------------------------------");

        $monitor("%0t\t%b\t%b\t%h\t%h\t%h\t%b\t%b",
                 $time,
                 tb_rst_n,
                 tb_pc_en,
                 dut.pc_out,
                 dut.instr,
                 tb_alu_result,
                 tb_zero_flag,
                 tb_carry_flag);

    end

    // FSDB Dump for Verdi
    initial begin
        $dumpfile("tb_nanocore16.fsdb");
        $dumpvars(0, tb_nanocore16);
    end

endmodule
