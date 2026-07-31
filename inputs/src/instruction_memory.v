module instruction_memory (
    input  wire [15:0] addr,
    output reg  [15:0] instr
);

always @(*) begin

    // Default instruction (NOP)
    instr = 16'hF000;

    case (addr[7:0])

        8'h00: instr = 16'h9105;
        8'h01: instr = 16'h9203;
        8'h02: instr = 16'h0312;
        8'h03: instr = 16'h1412;
        8'h04: instr = 16'h2514;
        8'h05: instr = 16'h3612;
        8'h06: instr = 16'h4712;
        8'h07: instr = 16'h5812;
        8'h08: instr = 16'h6910;
        8'h09: instr = 16'h9A01;
        8'h0A: instr = 16'h7BA2;
        8'h0B: instr = 16'h8CB1;
        8'h0C: instr = 16'hB012;
        8'h0D: instr = 16'hD002;
        8'h0E: instr = 16'h9D0A;
        8'h0F: instr = 16'hE002;
        8'h10: instr = 16'h9D0F;
        8'h11: instr = 16'hF000;
        8'h12: instr = 16'h9E01;
        8'h13: instr = 16'hF000;
        8'h14: instr = 16'hF000;

        default: ;   // instr already defaults to NOP

    endcase

end

endmodule
