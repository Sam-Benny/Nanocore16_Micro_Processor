/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Thu Jul 30 16:09:37 2026
/////////////////////////////////////////////////////////////


module pc ( clk, rst_n, pc_en, branch_en, branch_target, pc_out );
  input [15:0] branch_target;
  output [15:0] pc_out;
  input clk, rst_n, pc_en, branch_en;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n1, n18, n19, n20, n22, n23, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n47, n48, n49, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103;

  DFFARX1_HVT \pc_out_reg[15]  ( .D(n17), .CLK(n19), .RSTB(n18), .Q(pc_out[15]), .QN(n96) );
  DFFARX1_HVT \pc_out_reg[14]  ( .D(n16), .CLK(n19), .RSTB(n18), .Q(pc_out[14]), .QN(n86) );
  DFFARX1_HVT \pc_out_reg[13]  ( .D(n15), .CLK(n19), .RSTB(n18), .Q(pc_out[13]), .QN(n85) );
  DFFARX1_HVT \pc_out_reg[12]  ( .D(n14), .CLK(n19), .RSTB(n1), .Q(pc_out[12]), 
        .QN(n88) );
  DFFARX1_HVT \pc_out_reg[11]  ( .D(n13), .CLK(n19), .RSTB(n1), .Q(pc_out[11]), 
        .QN(n93) );
  DFFARX1_HVT \pc_out_reg[10]  ( .D(n12), .CLK(n19), .RSTB(n1), .Q(pc_out[10]), 
        .QN(n92) );
  DFFARX1_HVT \pc_out_reg[9]  ( .D(n11), .CLK(n19), .RSTB(n1), .Q(pc_out[9]), 
        .QN(n94) );
  DFFARX1_HVT \pc_out_reg[8]  ( .D(n10), .CLK(n19), .RSTB(n1), .Q(pc_out[8]), 
        .QN(n91) );
  DFFARX1_HVT \pc_out_reg[7]  ( .D(n9), .CLK(clk), .RSTB(n1), .Q(pc_out[7]), 
        .QN(n89) );
  DFFARX1_HVT \pc_out_reg[6]  ( .D(n8), .CLK(n19), .RSTB(n1), .Q(pc_out[6]), 
        .QN(n87) );
  DFFARX1_HVT \pc_out_reg[5]  ( .D(n7), .CLK(clk), .RSTB(n1), .Q(pc_out[5]), 
        .QN(n90) );
  DFFARX1_HVT \pc_out_reg[4]  ( .D(n6), .CLK(clk), .RSTB(n1), .Q(pc_out[4]), 
        .QN(n83) );
  DFFARX1_HVT \pc_out_reg[3]  ( .D(n5), .CLK(clk), .RSTB(n1), .Q(pc_out[3]), 
        .QN(n82) );
  DFFARX1_HVT \pc_out_reg[2]  ( .D(n4), .CLK(n19), .RSTB(n1), .Q(pc_out[2]), 
        .QN(n95) );
  DFFARX1_HVT \pc_out_reg[1]  ( .D(n3), .CLK(n19), .RSTB(n1), .Q(pc_out[1]), 
        .QN(n81) );
  DFFARX1_HVT \pc_out_reg[0]  ( .D(n2), .CLK(n19), .RSTB(n18), .Q(pc_out[0]), 
        .QN(n84) );
  NBUFFX2_HVT U3 ( .A(rst_n), .Y(n1) );
  NBUFFX2_HVT U4 ( .A(rst_n), .Y(n18) );
  NBUFFX2_HVT U5 ( .A(clk), .Y(n19) );
  AND2X2_LVT U7 ( .A1(branch_en), .A2(pc_en), .Y(n78) );
  NAND2X0_LVT U8 ( .A1(n78), .A2(branch_target[15]), .Y(n22) );
  AND3X1_HVT U12 ( .A1(pc_out[1]), .A2(pc_out[0]), .A3(pc_out[2]), .Y(n54) );
  AND3X1_HVT U13 ( .A1(n54), .A2(pc_out[4]), .A3(pc_out[3]), .Y(n59) );
  AND3X1_HVT U14 ( .A1(n59), .A2(pc_out[6]), .A3(pc_out[5]), .Y(n64) );
  AND3X1_HVT U15 ( .A1(n64), .A2(pc_out[8]), .A3(pc_out[7]), .Y(n69) );
  AND3X1_HVT U16 ( .A1(n69), .A2(pc_out[10]), .A3(pc_out[9]), .Y(n74) );
  AND4X1_HVT U17 ( .A1(n75), .A2(n74), .A3(pc_out[12]), .A4(pc_out[11]), .Y(
        n27) );
  NAND3X0_HVT U20 ( .A1(n74), .A2(pc_out[12]), .A3(pc_out[11]), .Y(n26) );
  AO221X1_HVT U21 ( .A1(n99), .A2(n85), .A3(n99), .A4(n26), .A5(n102), .Y(n25)
         );
  OAI221X1_HVT U22 ( .A1(n25), .A2(n86), .A3(n25), .A4(n75), .A5(pc_out[15]), 
        .Y(n20) );
  AO21X1_HVT U26 ( .A1(n75), .A2(n26), .A3(n102), .Y(n29) );
  AO22X1_HVT U27 ( .A1(branch_target[13]), .A2(n78), .A3(n27), .A4(n85), .Y(
        n28) );
  AO21X1_HVT U28 ( .A1(pc_out[13]), .A2(n29), .A3(n28), .Y(n15) );
  NAND2X0_LVT U29 ( .A1(n78), .A2(branch_target[12]), .Y(n32) );
  OA21X1_HVT U30 ( .A1(branch_en), .A2(n74), .A3(pc_en), .Y(n77) );
  AO221X1_HVT U31 ( .A1(n77), .A2(pc_out[11]), .A3(n77), .A4(n42), .A5(n88), 
        .Y(n31) );
  NAND4X0_HVT U32 ( .A1(n74), .A2(n75), .A3(pc_out[11]), .A4(n88), .Y(n30) );
  NAND3X0_HVT U33 ( .A1(n32), .A2(n31), .A3(n30), .Y(n14) );
  OA21X1_HVT U35 ( .A1(branch_en), .A2(n69), .A3(pc_en), .Y(n71) );
  AO221X1_HVT U36 ( .A1(n71), .A2(pc_out[9]), .A3(n71), .A4(n42), .A5(n92), 
        .Y(n34) );
  NAND4X0_HVT U37 ( .A1(n69), .A2(n75), .A3(pc_out[9]), .A4(n92), .Y(n33) );
  NAND3X0_HVT U38 ( .A1(n35), .A2(n34), .A3(n33), .Y(n12) );
  NAND2X0_LVT U39 ( .A1(n78), .A2(branch_target[8]), .Y(n38) );
  OA21X1_HVT U40 ( .A1(branch_en), .A2(n64), .A3(pc_en), .Y(n66) );
  AO221X1_HVT U41 ( .A1(n66), .A2(pc_out[7]), .A3(n66), .A4(n42), .A5(n91), 
        .Y(n37) );
  NAND4X0_HVT U42 ( .A1(n64), .A2(n75), .A3(pc_out[7]), .A4(n91), .Y(n36) );
  NAND3X0_HVT U43 ( .A1(n38), .A2(n37), .A3(n36), .Y(n10) );
  NAND2X0_LVT U44 ( .A1(n78), .A2(branch_target[6]), .Y(n41) );
  OA21X1_HVT U45 ( .A1(branch_en), .A2(n59), .A3(pc_en), .Y(n61) );
  AO221X1_HVT U46 ( .A1(n61), .A2(pc_out[5]), .A3(n61), .A4(n42), .A5(n87), 
        .Y(n40) );
  NAND4X0_HVT U47 ( .A1(n59), .A2(n75), .A3(pc_out[5]), .A4(n87), .Y(n39) );
  NAND3X0_HVT U48 ( .A1(n41), .A2(n40), .A3(n39), .Y(n8) );
  OA21X1_HVT U50 ( .A1(branch_en), .A2(n54), .A3(pc_en), .Y(n56) );
  AO221X1_HVT U51 ( .A1(n56), .A2(pc_out[3]), .A3(n56), .A4(n42), .A5(n83), 
        .Y(n44) );
  NAND4X0_HVT U52 ( .A1(n54), .A2(n75), .A3(pc_out[3]), .A4(n83), .Y(n43) );
  NAND3X0_HVT U53 ( .A1(n45), .A2(n44), .A3(n43), .Y(n6) );
  NAND2X0_LVT U54 ( .A1(n78), .A2(branch_target[2]), .Y(n49) );
  AO21X1_HVT U55 ( .A1(n99), .A2(n84), .A3(n102), .Y(n53) );
  OAI221X1_HVT U56 ( .A1(n53), .A2(n81), .A3(n53), .A4(n75), .A5(pc_out[2]), 
        .Y(n48) );
  NAND4X0_HVT U57 ( .A1(pc_out[1]), .A2(n75), .A3(pc_out[0]), .A4(n95), .Y(n47) );
  NAND3X0_LVT U58 ( .A1(n49), .A2(n48), .A3(n47), .Y(n4) );
  AO22X1_HVT U59 ( .A1(branch_target[0]), .A2(n78), .A3(pc_out[0]), .A4(n102), 
        .Y(n51) );
  AO21X1_HVT U60 ( .A1(n75), .A2(n84), .A3(n51), .Y(n2) );
  AND2X1_HVT U61 ( .A1(n75), .A2(n81), .Y(n52) );
  AO222X1_LVT U62 ( .A1(n53), .A2(pc_out[1]), .A3(n78), .A4(branch_target[1]), 
        .A5(pc_out[0]), .A6(n52), .Y(n3) );
  NAND2X0_HVT U63 ( .A1(n75), .A2(n54), .Y(n55) );
  AO22X1_HVT U64 ( .A1(pc_out[3]), .A2(n56), .A3(n82), .A4(n55), .Y(n58) );
  NAND2X0_LVT U65 ( .A1(n78), .A2(branch_target[3]), .Y(n57) );
  NAND2X0_LVT U66 ( .A1(n58), .A2(n57), .Y(n5) );
  NAND2X0_HVT U67 ( .A1(n75), .A2(n59), .Y(n60) );
  AO22X1_LVT U68 ( .A1(pc_out[5]), .A2(n61), .A3(n90), .A4(n60), .Y(n63) );
  NAND2X0_LVT U69 ( .A1(n78), .A2(branch_target[5]), .Y(n62) );
  NAND2X0_HVT U71 ( .A1(n75), .A2(n64), .Y(n65) );
  AO22X1_LVT U72 ( .A1(pc_out[7]), .A2(n66), .A3(n89), .A4(n65), .Y(n68) );
  NAND2X0_LVT U73 ( .A1(n78), .A2(branch_target[7]), .Y(n67) );
  NAND2X0_LVT U74 ( .A1(n68), .A2(n67), .Y(n9) );
  NAND2X0_HVT U75 ( .A1(n75), .A2(n69), .Y(n70) );
  AO22X1_LVT U76 ( .A1(pc_out[9]), .A2(n71), .A3(n94), .A4(n70), .Y(n73) );
  NAND2X0_LVT U77 ( .A1(n78), .A2(branch_target[9]), .Y(n72) );
  NAND2X0_LVT U78 ( .A1(n73), .A2(n72), .Y(n11) );
  NAND2X0_HVT U79 ( .A1(n75), .A2(n74), .Y(n76) );
  AO22X1_LVT U80 ( .A1(pc_out[11]), .A2(n77), .A3(n93), .A4(n76), .Y(n80) );
  NAND2X0_LVT U81 ( .A1(n78), .A2(branch_target[11]), .Y(n79) );
  NAND2X0_LVT U82 ( .A1(n80), .A2(n79), .Y(n13) );
  INVX0_HVT U6 ( .A(n75), .Y(n42) );
  NAND2X0_HVT U9 ( .A1(n78), .A2(branch_target[4]), .Y(n45) );
  NAND2X0_HVT U10 ( .A1(n78), .A2(branch_target[10]), .Y(n35) );
  NAND2X0_HVT U11 ( .A1(n63), .A2(n62), .Y(n7) );
  INVX0_HVT U18 ( .A(pc_en), .Y(n102) );
  AND2X2_HVT U19 ( .A1(n99), .A2(pc_en), .Y(n75) );
  INVX0_HVT U23 ( .A(branch_en), .Y(n99) );
  OR2X1_LVT U24 ( .A1(n103), .A2(n97), .Y(n16) );
  NOR2X0_LVT U25 ( .A1(pc_out[14]), .A2(n98), .Y(n97) );
  INVX1_LVT U34 ( .A(n23), .Y(n98) );
  AND2X1_LVT U49 ( .A1(n27), .A2(pc_out[13]), .Y(n23) );
  NAND2X0_LVT U70 ( .A1(n20), .A2(n22), .Y(n100) );
  AO21X1_RVT U83 ( .A1(n23), .A2(n101), .A3(n100), .Y(n17) );
  AND2X1_HVT U84 ( .A1(pc_out[14]), .A2(n96), .Y(n101) );
  AO22X1_HVT U85 ( .A1(n78), .A2(branch_target[14]), .A3(n25), .A4(pc_out[14]), 
        .Y(n103) );
endmodule


module instruction_memory ( addr, instr );
  input [15:0] addr;
  output [15:0] instr;
  wire   instr_4, instr_3, instr_2, instr_1, instr_0, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n46, n47, n48, n49,
         n50, n52, n53, n54;
  assign instr[5] = instr[7];
  assign instr[4] = instr_4;
  assign instr[3] = instr_3;
  assign instr[2] = instr_2;
  assign instr[1] = instr_1;
  assign instr[0] = instr_0;

  INVX1_HVT U4 ( .A(addr[4]), .Y(n41) );
  OA221X1_HVT U6 ( .A1(n9), .A2(n8), .A3(n9), .A4(n18), .A5(n52), .Y(instr[10]) );
  AND2X1_HVT U7 ( .A1(n1), .A2(n2), .Y(instr[8]) );
  AND2X1_HVT U8 ( .A1(n50), .A2(n52), .Y(n1) );
  INVX0_HVT U9 ( .A(n17), .Y(n3) );
  INVX0_HVT U10 ( .A(instr_3), .Y(n4) );
  NAND2X0_HVT U11 ( .A1(n3), .A2(n4), .Y(n2) );
  INVX0_HVT U13 ( .A(addr[2]), .Y(n47) );
  INVX0_HVT U17 ( .A(addr[0]), .Y(n50) );
  AND2X1_HVT U18 ( .A1(n40), .A2(n50), .Y(n19) );
  INVX1_LVT U19 ( .A(addr[1]), .Y(n42) );
  NAND2X0_LVT U21 ( .A1(addr[0]), .A2(addr[1]), .Y(n33) );
  NAND2X0_LVT U22 ( .A1(n33), .A2(n31), .Y(n29) );
  INVX0_HVT U23 ( .A(n29), .Y(n5) );
  OA21X1_HVT U24 ( .A1(n47), .A2(n46), .A3(n41), .Y(n17) );
  AO22X1_HVT U25 ( .A1(n19), .A2(addr[1]), .A3(n5), .A4(n17), .Y(n6) );
  AND2X1_HVT U26 ( .A1(n52), .A2(n6), .Y(instr[9]) );
  NAND3X0_HVT U27 ( .A1(addr[3]), .A2(n41), .A3(n47), .Y(n20) );
  INVX0_HVT U28 ( .A(n20), .Y(n43) );
  AND3X1_HVT U29 ( .A1(n52), .A2(n43), .A3(addr[1]), .Y(instr[7]) );
  NAND2X0_HVT U30 ( .A1(addr[4]), .A2(n19), .Y(n12) );
  AND2X1_HVT U31 ( .A1(addr[2]), .A2(n41), .Y(n26) );
  NAND4X0_LVT U32 ( .A1(addr[3]), .A2(addr[1]), .A3(n26), .A4(n50), .Y(n16) );
  NAND3X0_HVT U33 ( .A1(n26), .A2(n46), .A3(n33), .Y(n7) );
  NAND3X0_HVT U34 ( .A1(n12), .A2(n16), .A3(n7), .Y(n9) );
  AND2X1_HVT U35 ( .A1(n41), .A2(n47), .Y(n8) );
  INVX0_LVT U36 ( .A(n33), .Y(n18) );
  OA21X1_HVT U37 ( .A1(n10), .A2(addr[1]), .A3(n52), .Y(n36) );
  NAND2X0_HVT U38 ( .A1(addr[3]), .A2(addr[0]), .Y(n23) );
  NAND3X0_HVT U40 ( .A1(n26), .A2(n18), .A3(n46), .Y(n11) );
  NAND3X0_HVT U41 ( .A1(n12), .A2(n20), .A3(n11), .Y(n14) );
  AND3X1_HVT U42 ( .A1(addr[3]), .A2(addr[1]), .A3(n50), .Y(n13) );
  OA221X1_HVT U43 ( .A1(n14), .A2(n13), .A3(n14), .A4(n41), .A5(n52), .Y(
        instr[11]) );
  AOI21X2_LVT U45 ( .A1(n48), .A2(n16), .A3(n15), .Y(instr_3) );
  NAND2X0_HVT U46 ( .A1(addr[3]), .A2(n31), .Y(n27) );
  OA22X1_HVT U47 ( .A1(n18), .A2(n27), .A3(addr[3]), .A4(n42), .Y(n22) );
  OA22X1_HVT U48 ( .A1(n20), .A2(addr[0]), .A3(n19), .A4(n41), .Y(n21) );
  NAND2X0_HVT U49 ( .A1(n52), .A2(n21), .Y(n24) );
  AO21X1_LVT U50 ( .A1(n26), .A2(n22), .A3(n24), .Y(instr[13]) );
  AND2X1_LVT U51 ( .A1(addr[1]), .A2(n46), .Y(n28) );
  INVX0_HVT U52 ( .A(n23), .Y(n25) );
  AO221X1_HVT U53 ( .A1(n26), .A2(n28), .A3(n26), .A4(n25), .A5(n24), .Y(
        instr[14]) );
  AO222X1_HVT U54 ( .A1(n29), .A2(n43), .A3(n41), .A4(n28), .A5(n27), .A6(n26), 
        .Y(n30) );
  AND2X1_HVT U55 ( .A1(n52), .A2(n30), .Y(instr_4) );
  NAND2X0_HVT U56 ( .A1(n54), .A2(n47), .Y(n32) );
  NAND3X0_LVT U57 ( .A1(addr[3]), .A2(n33), .A3(n32), .Y(n35) );
  NAND2X0_LVT U58 ( .A1(addr[0]), .A2(n46), .Y(n34) );
  NAND4X0_HVT U59 ( .A1(n36), .A2(n41), .A3(n35), .A4(n34), .Y(instr[12]) );
  AND2X1_HVT U60 ( .A1(n54), .A2(n52), .Y(n39) );
  AND2X1_HVT U61 ( .A1(n41), .A2(n46), .Y(n37) );
  OR2X1_HVT U62 ( .A1(n37), .A2(n40), .Y(n38) );
  AND2X1_HVT U63 ( .A1(n39), .A2(n38), .Y(instr_2) );
  OA221X1_HVT U64 ( .A1(addr[4]), .A2(n42), .A3(n50), .A4(n41), .A5(n40), .Y(
        n44) );
  OA221X1_HVT U65 ( .A1(n44), .A2(addr[0]), .A3(n44), .A4(n43), .A5(n52), .Y(
        instr_0) );
  AO221X1_HVT U66 ( .A1(addr[3]), .A2(n47), .A3(n46), .A4(n54), .A5(addr[4]), 
        .Y(n49) );
  INVX1_HVT U3 ( .A(n15), .Y(n52) );
  OR2X1_HVT U5 ( .A1(addr[3]), .A2(addr[2]), .Y(n10) );
  INVX0_HVT U12 ( .A(n10), .Y(n40) );
  NAND3X0_HVT U14 ( .A1(n36), .A2(n17), .A3(n23), .Y(instr[15]) );
  INVX0_HVT U15 ( .A(n54), .Y(n31) );
  AND2X1_HVT U16 ( .A1(n42), .A2(n50), .Y(n54) );
  NAND2X0_HVT U20 ( .A1(n49), .A2(n48), .Y(n53) );
  OR3X1_HVT U39 ( .A1(addr[6]), .A2(addr[5]), .A3(addr[7]), .Y(n15) );
  AO22X1_RVT U44 ( .A1(n50), .A2(instr[7]), .A3(n53), .A4(n52), .Y(instr_1) );
  INVX0_LVT U67 ( .A(addr[3]), .Y(n46) );
  NAND4X0_HVT U68 ( .A1(addr[4]), .A2(n50), .A3(n42), .A4(n40), .Y(n48) );
endmodule


module decoder ( instr, zero_flag, opcode, rd_addr, rs1_addr, rs2_addr, imm, 
        alu_op, reg_wr_en, imm_sel, branch_en );
  input [15:0] instr;
  output [3:0] opcode;
  output [3:0] rd_addr;
  output [3:0] rs1_addr;
  output [3:0] rs2_addr;
  output [7:0] imm;
  output [3:0] alu_op;
  input zero_flag;
  output reg_wr_en, imm_sel, branch_en;
  wire   \instr[15] , \instr[14] , \instr[13] , \instr[12] , \instr[11] ,
         \instr[10] , \instr[9] , \instr[8] , \instr[7] , \instr[5] ,
         \instr[4] , \instr[3] , \instr[2] , \instr[1] , \instr[0] , n1, n2,
         n3, n4, n5, n6, n9, n10, n11, n12, n13, n14, n15;
  assign opcode[3] = \instr[15] ;
  assign \instr[15]  = instr[15];
  assign opcode[2] = \instr[14] ;
  assign \instr[14]  = instr[14];
  assign opcode[1] = \instr[13] ;
  assign \instr[13]  = instr[13];
  assign opcode[0] = \instr[12] ;
  assign \instr[12]  = instr[12];
  assign rd_addr[3] = \instr[11] ;
  assign \instr[11]  = instr[11];
  assign rd_addr[2] = \instr[10] ;
  assign \instr[10]  = instr[10];
  assign rd_addr[1] = \instr[9] ;
  assign \instr[9]  = instr[9];
  assign rd_addr[0] = \instr[8] ;
  assign \instr[8]  = instr[8];
  assign rs1_addr[3] = \instr[7] ;
  assign \instr[7]  = instr[7];
  assign rs1_addr[1] = \instr[5] ;
  assign \instr[5]  = instr[5];
  assign rs1_addr[0] = \instr[4] ;
  assign \instr[4]  = instr[4];
  assign imm[3] = \instr[3] ;
  assign imm[4] = \instr[3] ;
  assign imm[5] = \instr[3] ;
  assign imm[6] = \instr[3] ;
  assign imm[7] = \instr[3] ;
  assign rs2_addr[3] = \instr[3] ;
  assign \instr[3]  = instr[3];
  assign imm[2] = \instr[2] ;
  assign rs2_addr[2] = \instr[2] ;
  assign \instr[2]  = instr[2];
  assign imm[1] = \instr[1] ;
  assign rs2_addr[1] = \instr[1] ;
  assign \instr[1]  = instr[1];
  assign imm[0] = \instr[0] ;
  assign rs2_addr[0] = \instr[0] ;
  assign \instr[0]  = instr[0];

  INVX0_HVT U3 ( .A(\instr[15] ), .Y(n5) );
  AND2X1_HVT U4 ( .A1(\instr[14] ), .A2(n5), .Y(alu_op[2]) );
  AND2X1_LVT U5 ( .A1(\instr[13] ), .A2(\instr[12] ), .Y(n10) );
  INVX0_HVT U6 ( .A(\instr[14] ), .Y(n1) );
  AO21X1_LVT U7 ( .A1(\instr[15] ), .A2(n1), .A3(\instr[13] ), .Y(n3) );
  NAND3X0_HVT U9 ( .A1(n9), .A2(n1), .A3(n5), .Y(n2) );
  NAND2X0_HVT U10 ( .A1(\instr[13] ), .A2(n2), .Y(n4) );
  AO22X1_HVT U11 ( .A1(alu_op[2]), .A2(n10), .A3(n3), .A4(n4), .Y(imm_sel) );
  AOI221X1_LVT U12 ( .A1(\instr[15] ), .A2(\instr[14] ), .A3(\instr[15] ), 
        .A4(\instr[12] ), .A5(n4), .Y(alu_op[1]) );
  AND2X1_LVT U13 ( .A1(\instr[14] ), .A2(\instr[15] ), .Y(n6) );
  NOR2X1_HVT U14 ( .A1(n6), .A2(n9), .Y(alu_op[0]) );
  OR2X1_HVT U19 ( .A1(\instr[14] ), .A2(n10), .Y(n11) );
  NAND2X0_HVT U20 ( .A1(\instr[15] ), .A2(n11), .Y(reg_wr_en) );
  NOR3X0_RVT U15 ( .A1(\instr[14] ), .A2(n10), .A3(n5), .Y(alu_op[3]) );
  INVX0_HVT U8 ( .A(\instr[12] ), .Y(n9) );
  NOR2X1_HVT U16 ( .A1(n14), .A2(n12), .Y(branch_en) );
  AND2X1_LVT U17 ( .A1(n13), .A2(\instr[12] ), .Y(n12) );
  INVX1_LVT U18 ( .A(zero_flag), .Y(n13) );
  AO21X1_LVT U21 ( .A1(zero_flag), .A2(\instr[13] ), .A3(n15), .Y(n14) );
  INVX1_LVT U22 ( .A(n6), .Y(n15) );
endmodule


module reg_file ( clk, rst_n, wr_en, rd_addr, rs1_addr, rs2_addr, wr_data, 
        rs1_data, rs2_data );
  input [3:0] rd_addr;
  input [3:0] rs1_addr;
  input [3:0] rs2_addr;
  input [7:0] wr_data;
  output [7:0] rs1_data;
  output [7:0] rs2_data;
  input clk, rst_n, wr_en;
  wire   \regs[1][7] , \regs[1][6] , \regs[1][5] , \regs[1][4] , \regs[1][3] ,
         \regs[1][2] , \regs[1][1] , \regs[1][0] , \regs[2][7] , \regs[2][6] ,
         \regs[2][5] , \regs[2][4] , \regs[2][3] , \regs[2][2] , \regs[2][1] ,
         \regs[2][0] , \regs[3][7] , \regs[3][6] , \regs[3][5] , \regs[3][4] ,
         \regs[3][3] , \regs[3][2] , \regs[3][1] , \regs[3][0] , \regs[4][7] ,
         \regs[4][6] , \regs[4][5] , \regs[4][4] , \regs[4][3] , \regs[4][2] ,
         \regs[4][1] , \regs[4][0] , \regs[5][7] , \regs[5][6] , \regs[5][5] ,
         \regs[5][4] , \regs[5][3] , \regs[5][2] , \regs[5][1] , \regs[5][0] ,
         \regs[6][7] , \regs[6][6] , \regs[6][5] , \regs[6][4] , \regs[6][3] ,
         \regs[6][2] , \regs[6][1] , \regs[6][0] , \regs[7][7] , \regs[7][6] ,
         \regs[7][5] , \regs[7][4] , \regs[7][3] , \regs[7][2] , \regs[7][1] ,
         \regs[7][0] , \regs[8][7] , \regs[8][6] , \regs[8][5] , \regs[8][4] ,
         \regs[8][3] , \regs[8][2] , \regs[8][1] , \regs[8][0] , \regs[9][7] ,
         \regs[9][6] , \regs[9][5] , \regs[9][4] , \regs[9][3] , \regs[9][2] ,
         \regs[9][1] , \regs[9][0] , \regs[10][7] , \regs[10][6] ,
         \regs[10][5] , \regs[10][4] , \regs[10][3] , \regs[10][2] ,
         \regs[10][1] , \regs[10][0] , \regs[11][7] , \regs[11][6] ,
         \regs[11][5] , \regs[11][4] , \regs[11][3] , \regs[11][2] ,
         \regs[11][1] , \regs[11][0] , \regs[12][7] , \regs[12][6] ,
         \regs[12][5] , \regs[12][4] , \regs[12][3] , \regs[12][2] ,
         \regs[12][1] , \regs[12][0] , \regs[13][7] , \regs[13][6] ,
         \regs[13][5] , \regs[13][4] , \regs[13][3] , \regs[13][2] ,
         \regs[13][1] , \regs[13][0] , \regs[14][7] , \regs[14][6] ,
         \regs[14][5] , \regs[14][4] , \regs[14][3] , \regs[14][2] ,
         \regs[14][1] , \regs[14][0] , \regs[15][7] , \regs[15][6] ,
         \regs[15][5] , \regs[15][4] , \regs[15][3] , \regs[15][2] ,
         \regs[15][1] , \regs[15][0] , n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309;

  DFFARX1_HVT \regs_reg[1][7]  ( .D(n135), .CLK(n137), .RSTB(n8), .Q(
        \regs[1][7] ) );
  DFFARX1_HVT \regs_reg[1][6]  ( .D(n134), .CLK(n137), .RSTB(n8), .Q(
        \regs[1][6] ) );
  DFFARX1_HVT \regs_reg[1][5]  ( .D(n133), .CLK(n137), .RSTB(n11), .Q(
        \regs[1][5] ) );
  DFFARX1_HVT \regs_reg[1][4]  ( .D(n132), .CLK(n137), .RSTB(n13), .Q(
        \regs[1][4] ) );
  DFFARX1_HVT \regs_reg[1][3]  ( .D(n131), .CLK(n137), .RSTB(n8), .Q(
        \regs[1][3] ) );
  DFFARX1_HVT \regs_reg[1][2]  ( .D(n130), .CLK(n137), .RSTB(n4), .Q(
        \regs[1][2] ) );
  DFFARX1_HVT \regs_reg[1][1]  ( .D(n129), .CLK(n137), .RSTB(n8), .Q(
        \regs[1][1] ) );
  DFFARX1_HVT \regs_reg[1][0]  ( .D(n128), .CLK(n137), .RSTB(n4), .Q(
        \regs[1][0] ) );
  DFFARX1_HVT \regs_reg[2][7]  ( .D(n127), .CLK(n137), .RSTB(n10), .Q(
        \regs[2][7] ) );
  DFFARX1_HVT \regs_reg[2][6]  ( .D(n126), .CLK(n136), .RSTB(n12), .Q(
        \regs[2][6] ) );
  DFFARX1_HVT \regs_reg[2][5]  ( .D(n125), .CLK(n136), .RSTB(n8), .Q(
        \regs[2][5] ) );
  DFFARX1_HVT \regs_reg[2][4]  ( .D(n124), .CLK(n136), .RSTB(n4), .Q(
        \regs[2][4] ) );
  DFFARX1_HVT \regs_reg[2][3]  ( .D(n123), .CLK(n136), .RSTB(n7), .Q(
        \regs[2][3] ) );
  DFFARX1_HVT \regs_reg[2][2]  ( .D(n122), .CLK(n136), .RSTB(n7), .Q(
        \regs[2][2] ) );
  DFFARX1_HVT \regs_reg[2][1]  ( .D(n121), .CLK(n136), .RSTB(n7), .Q(
        \regs[2][1] ) );
  DFFARX1_HVT \regs_reg[2][0]  ( .D(n120), .CLK(n136), .RSTB(n7), .Q(
        \regs[2][0] ) );
  DFFARX1_HVT \regs_reg[3][7]  ( .D(n119), .CLK(n136), .RSTB(n7), .Q(
        \regs[3][7] ) );
  DFFARX1_HVT \regs_reg[3][6]  ( .D(n118), .CLK(n15), .RSTB(n7), .Q(
        \regs[3][6] ) );
  DFFARX1_HVT \regs_reg[3][5]  ( .D(n117), .CLK(n15), .RSTB(n8), .Q(
        \regs[3][5] ) );
  DFFARX1_HVT \regs_reg[3][4]  ( .D(n116), .CLK(n15), .RSTB(n8), .Q(
        \regs[3][4] ) );
  DFFARX1_HVT \regs_reg[3][3]  ( .D(n115), .CLK(n15), .RSTB(n8), .Q(
        \regs[3][3] ) );
  DFFARX1_HVT \regs_reg[3][2]  ( .D(n114), .CLK(n15), .RSTB(n8), .Q(
        \regs[3][2] ) );
  DFFARX1_HVT \regs_reg[3][1]  ( .D(n113), .CLK(n15), .RSTB(n8), .Q(
        \regs[3][1] ) );
  DFFARX1_HVT \regs_reg[3][0]  ( .D(n112), .CLK(n15), .RSTB(n8), .Q(
        \regs[3][0] ) );
  DFFARX1_HVT \regs_reg[4][7]  ( .D(n111), .CLK(n141), .RSTB(n11), .Q(
        \regs[4][7] ) );
  DFFARX1_HVT \regs_reg[4][6]  ( .D(n110), .CLK(n141), .RSTB(n12), .Q(
        \regs[4][6] ) );
  DFFARX1_HVT \regs_reg[4][5]  ( .D(n109), .CLK(n141), .RSTB(n10), .Q(
        \regs[4][5] ) );
  DFFARX1_HVT \regs_reg[4][4]  ( .D(n108), .CLK(n141), .RSTB(n11), .Q(
        \regs[4][4] ) );
  DFFARX1_HVT \regs_reg[4][3]  ( .D(n107), .CLK(n141), .RSTB(rst_n), .Q(
        \regs[4][3] ) );
  DFFARX1_HVT \regs_reg[4][2]  ( .D(n106), .CLK(n141), .RSTB(n13), .Q(
        \regs[4][2] ) );
  DFFARX1_HVT \regs_reg[4][1]  ( .D(n105), .CLK(n141), .RSTB(n12), .Q(
        \regs[4][1] ) );
  DFFARX1_HVT \regs_reg[4][0]  ( .D(n104), .CLK(n141), .RSTB(n10), .Q(
        \regs[4][0] ) );
  DFFARX1_HVT \regs_reg[5][7]  ( .D(n103), .CLK(n141), .RSTB(n11), .Q(
        \regs[5][7] ) );
  DFFARX1_HVT \regs_reg[5][6]  ( .D(n102), .CLK(n141), .RSTB(rst_n), .Q(
        \regs[5][6] ) );
  DFFARX1_HVT \regs_reg[5][5]  ( .D(n101), .CLK(n141), .RSTB(n13), .Q(
        \regs[5][5] ) );
  DFFARX1_HVT \regs_reg[5][4]  ( .D(n100), .CLK(n140), .RSTB(n12), .Q(
        \regs[5][4] ) );
  DFFARX1_HVT \regs_reg[5][3]  ( .D(n99), .CLK(n140), .RSTB(n6), .Q(
        \regs[5][3] ) );
  DFFARX1_HVT \regs_reg[5][2]  ( .D(n98), .CLK(n140), .RSTB(n6), .Q(
        \regs[5][2] ) );
  DFFARX1_HVT \regs_reg[5][1]  ( .D(n97), .CLK(n140), .RSTB(n6), .Q(
        \regs[5][1] ) );
  DFFARX1_HVT \regs_reg[5][0]  ( .D(n96), .CLK(n140), .RSTB(n6), .Q(
        \regs[5][0] ) );
  DFFARX1_HVT \regs_reg[6][7]  ( .D(n95), .CLK(n140), .RSTB(n6), .Q(
        \regs[6][7] ) );
  DFFARX1_HVT \regs_reg[6][6]  ( .D(n94), .CLK(n140), .RSTB(n6), .Q(
        \regs[6][6] ) );
  DFFARX1_HVT \regs_reg[6][5]  ( .D(n93), .CLK(n139), .RSTB(n6), .Q(
        \regs[6][5] ) );
  DFFARX1_HVT \regs_reg[6][4]  ( .D(n92), .CLK(n139), .RSTB(n6), .Q(
        \regs[6][4] ) );
  DFFARX1_HVT \regs_reg[6][3]  ( .D(n91), .CLK(n139), .RSTB(n6), .Q(
        \regs[6][3] ) );
  DFFARX1_HVT \regs_reg[6][2]  ( .D(n90), .CLK(n139), .RSTB(n6), .Q(
        \regs[6][2] ) );
  DFFARX1_HVT \regs_reg[6][1]  ( .D(n89), .CLK(n139), .RSTB(n11), .Q(
        \regs[6][1] ) );
  DFFARX1_HVT \regs_reg[6][0]  ( .D(n88), .CLK(n139), .RSTB(n10), .Q(
        \regs[6][0] ) );
  DFFARX1_HVT \regs_reg[7][7]  ( .D(n87), .CLK(n144), .RSTB(n12), .Q(
        \regs[7][7] ) );
  DFFARX1_HVT \regs_reg[7][6]  ( .D(n86), .CLK(n143), .RSTB(n3), .Q(
        \regs[7][6] ) );
  DFFARX1_HVT \regs_reg[7][5]  ( .D(n85), .CLK(n142), .RSTB(n7), .Q(
        \regs[7][5] ) );
  DFFARX1_HVT \regs_reg[7][4]  ( .D(n84), .CLK(n144), .RSTB(n10), .Q(
        \regs[7][4] ) );
  DFFARX1_HVT \regs_reg[7][3]  ( .D(n83), .CLK(n144), .RSTB(n9), .Q(
        \regs[7][3] ) );
  DFFARX1_HVT \regs_reg[7][2]  ( .D(n82), .CLK(n143), .RSTB(n3), .Q(
        \regs[7][2] ) );
  DFFARX1_HVT \regs_reg[7][1]  ( .D(n81), .CLK(clk), .RSTB(n9), .Q(
        \regs[7][1] ) );
  DFFARX1_HVT \regs_reg[7][0]  ( .D(n80), .CLK(n142), .RSTB(n3), .Q(
        \regs[7][0] ) );
  DFFARX1_HVT \regs_reg[8][7]  ( .D(n79), .CLK(n144), .RSTB(n3), .Q(
        \regs[8][7] ) );
  DFFARX1_HVT \regs_reg[8][6]  ( .D(n78), .CLK(n144), .RSTB(n3), .Q(
        \regs[8][6] ) );
  DFFARX1_HVT \regs_reg[8][5]  ( .D(n77), .CLK(clk), .RSTB(n3), .Q(
        \regs[8][5] ) );
  DFFARX1_HVT \regs_reg[8][4]  ( .D(n76), .CLK(n143), .RSTB(n5), .Q(
        \regs[8][4] ) );
  DFFARX1_HVT \regs_reg[8][3]  ( .D(n75), .CLK(clk), .RSTB(n7), .Q(
        \regs[8][3] ) );
  DFFARX1_HVT \regs_reg[8][2]  ( .D(n74), .CLK(n143), .RSTB(n5), .Q(
        \regs[8][2] ) );
  DFFARX1_HVT \regs_reg[8][1]  ( .D(n73), .CLK(n142), .RSTB(n4), .Q(
        \regs[8][1] ) );
  DFFARX1_HVT \regs_reg[8][0]  ( .D(n72), .CLK(n14), .RSTB(n11), .Q(
        \regs[8][0] ) );
  DFFARX1_HVT \regs_reg[9][7]  ( .D(n71), .CLK(n14), .RSTB(n9), .Q(
        \regs[9][7] ) );
  DFFARX1_HVT \regs_reg[9][6]  ( .D(n70), .CLK(n14), .RSTB(n7), .Q(
        \regs[9][6] ) );
  DFFARX1_HVT \regs_reg[9][5]  ( .D(n69), .CLK(n14), .RSTB(n4), .Q(
        \regs[9][5] ) );
  DFFARX1_HVT \regs_reg[9][4]  ( .D(n68), .CLK(n14), .RSTB(n4), .Q(
        \regs[9][4] ) );
  DFFARX1_HVT \regs_reg[9][3]  ( .D(n67), .CLK(n14), .RSTB(n3), .Q(
        \regs[9][3] ) );
  DFFARX1_HVT \regs_reg[9][2]  ( .D(n66), .CLK(n14), .RSTB(n5), .Q(
        \regs[9][2] ) );
  DFFARX1_HVT \regs_reg[9][1]  ( .D(n65), .CLK(n14), .RSTB(n3), .Q(
        \regs[9][1] ) );
  DFFARX1_HVT \regs_reg[9][0]  ( .D(n64), .CLK(n14), .RSTB(n3), .Q(
        \regs[9][0] ) );
  DFFARX1_HVT \regs_reg[10][7]  ( .D(n63), .CLK(n15), .RSTB(n5), .Q(
        \regs[10][7] ) );
  DFFARX1_HVT \regs_reg[10][6]  ( .D(n62), .CLK(n143), .RSTB(rst_n), .Q(
        \regs[10][6] ) );
  DFFARX1_HVT \regs_reg[10][5]  ( .D(n61), .CLK(n140), .RSTB(n13), .Q(
        \regs[10][5] ) );
  DFFARX1_HVT \regs_reg[10][4]  ( .D(n60), .CLK(n138), .RSTB(n7), .Q(
        \regs[10][4] ) );
  DFFARX1_HVT \regs_reg[10][3]  ( .D(n59), .CLK(n139), .RSTB(n7), .Q(
        \regs[10][3] ) );
  DFFARX1_HVT \regs_reg[10][2]  ( .D(n58), .CLK(n136), .RSTB(n3), .Q(
        \regs[10][2] ) );
  DFFARX1_HVT \regs_reg[10][1]  ( .D(n57), .CLK(n144), .RSTB(n9), .Q(
        \regs[10][1] ) );
  DFFARX1_HVT \regs_reg[10][0]  ( .D(n56), .CLK(n15), .RSTB(n3), .Q(
        \regs[10][0] ) );
  DFFARX1_HVT \regs_reg[11][7]  ( .D(n55), .CLK(n142), .RSTB(n3), .Q(
        \regs[11][7] ) );
  DFFARX1_HVT \regs_reg[11][6]  ( .D(n54), .CLK(n140), .RSTB(n5), .Q(
        \regs[11][6] ) );
  DFFARX1_HVT \regs_reg[11][5]  ( .D(n53), .CLK(n141), .RSTB(n6), .Q(
        \regs[11][5] ) );
  DFFARX1_HVT \regs_reg[11][4]  ( .D(n52), .CLK(n137), .RSTB(n6), .Q(
        \regs[11][4] ) );
  DFFARX1_HVT \regs_reg[11][3]  ( .D(n51), .CLK(n137), .RSTB(n11), .Q(
        \regs[11][3] ) );
  DFFARX1_HVT \regs_reg[11][2]  ( .D(n50), .CLK(n136), .RSTB(n5), .Q(
        \regs[11][2] ) );
  DFFARX1_HVT \regs_reg[11][1]  ( .D(n49), .CLK(n15), .RSTB(n9), .Q(
        \regs[11][1] ) );
  DFFARX1_HVT \regs_reg[11][0]  ( .D(n48), .CLK(n140), .RSTB(n4), .Q(
        \regs[11][0] ) );
  DFFARX1_HVT \regs_reg[12][7]  ( .D(n47), .CLK(n139), .RSTB(n13), .Q(
        \regs[12][7] ) );
  DFFARX1_HVT \regs_reg[12][6]  ( .D(n46), .CLK(n142), .RSTB(n4), .Q(
        \regs[12][6] ) );
  DFFARX1_HVT \regs_reg[12][5]  ( .D(n45), .CLK(n14), .RSTB(n5), .Q(
        \regs[12][5] ) );
  DFFARX1_HVT \regs_reg[12][4]  ( .D(n44), .CLK(n143), .RSTB(n5), .Q(
        \regs[12][4] ) );
  DFFARX1_HVT \regs_reg[12][3]  ( .D(n43), .CLK(n139), .RSTB(rst_n), .Q(
        \regs[12][3] ) );
  DFFARX1_HVT \regs_reg[12][2]  ( .D(n42), .CLK(n136), .RSTB(n7), .Q(
        \regs[12][2] ) );
  DFFARX1_HVT \regs_reg[12][1]  ( .D(n41), .CLK(n144), .RSTB(n13), .Q(
        \regs[12][1] ) );
  DFFARX1_HVT \regs_reg[12][0]  ( .D(n40), .CLK(n142), .RSTB(n9), .Q(
        \regs[12][0] ) );
  DFFARX1_HVT \regs_reg[13][7]  ( .D(n39), .CLK(n15), .RSTB(n5), .Q(
        \regs[13][7] ) );
  DFFARX1_HVT \regs_reg[13][6]  ( .D(n38), .CLK(n137), .RSTB(n5), .Q(
        \regs[13][6] ) );
  DFFARX1_HVT \regs_reg[13][5]  ( .D(n37), .CLK(n136), .RSTB(n9), .Q(
        \regs[13][5] ) );
  DFFARX1_HVT \regs_reg[13][4]  ( .D(n36), .CLK(n15), .RSTB(n5), .Q(
        \regs[13][4] ) );
  DFFARX1_HVT \regs_reg[13][3]  ( .D(n35), .CLK(n140), .RSTB(n11), .Q(
        \regs[13][3] ) );
  DFFARX1_HVT \regs_reg[13][2]  ( .D(n34), .CLK(n139), .RSTB(n13), .Q(
        \regs[13][2] ) );
  DFFARX1_HVT \regs_reg[13][1]  ( .D(n33), .CLK(clk), .RSTB(n9), .Q(
        \regs[13][1] ) );
  DFFARX1_HVT \regs_reg[13][0]  ( .D(n32), .CLK(n14), .RSTB(n12), .Q(
        \regs[13][0] ) );
  DFFARX1_HVT \regs_reg[14][7]  ( .D(n31), .CLK(n144), .RSTB(n4), .Q(
        \regs[14][7] ) );
  DFFARX1_HVT \regs_reg[14][6]  ( .D(n30), .CLK(n140), .RSTB(n4), .Q(
        \regs[14][6] ) );
  DFFARX1_HVT \regs_reg[14][5]  ( .D(n29), .CLK(n14), .RSTB(n10), .Q(
        \regs[14][5] ) );
  DFFARX1_HVT \regs_reg[14][4]  ( .D(n28), .CLK(n139), .RSTB(n4), .Q(
        \regs[14][4] ) );
  DFFARX1_HVT \regs_reg[14][3]  ( .D(n27), .CLK(n139), .RSTB(n9), .Q(
        \regs[14][3] ) );
  DFFARX1_HVT \regs_reg[14][2]  ( .D(n26), .CLK(n138), .RSTB(n9), .Q(
        \regs[14][2] ) );
  DFFARX1_HVT \regs_reg[14][1]  ( .D(n25), .CLK(n138), .RSTB(n12), .Q(
        \regs[14][1] ) );
  DFFARX1_HVT \regs_reg[14][0]  ( .D(n24), .CLK(n138), .RSTB(n9), .Q(
        \regs[14][0] ) );
  DFFARX1_HVT \regs_reg[15][7]  ( .D(n23), .CLK(n138), .RSTB(n13), .Q(
        \regs[15][7] ) );
  DFFARX1_HVT \regs_reg[15][6]  ( .D(n22), .CLK(n138), .RSTB(n4), .Q(
        \regs[15][6] ) );
  DFFARX1_HVT \regs_reg[15][5]  ( .D(n21), .CLK(n138), .RSTB(n9), .Q(
        \regs[15][5] ) );
  DFFARX1_HVT \regs_reg[15][4]  ( .D(n20), .CLK(n138), .RSTB(n10), .Q(
        \regs[15][4] ) );
  DFFARX1_HVT \regs_reg[15][3]  ( .D(n19), .CLK(n138), .RSTB(n5), .Q(
        \regs[15][3] ) );
  DFFARX1_HVT \regs_reg[15][2]  ( .D(n18), .CLK(n138), .RSTB(rst_n), .Q(
        \regs[15][2] ) );
  DFFARX1_HVT \regs_reg[15][1]  ( .D(n17), .CLK(n138), .RSTB(n11), .Q(
        \regs[15][1] ) );
  DFFARX1_HVT \regs_reg[15][0]  ( .D(n16), .CLK(n138), .RSTB(n8), .Q(
        \regs[15][0] ) );
  NBUFFX2_HVT U3 ( .A(n13), .Y(n3) );
  NBUFFX2_HVT U4 ( .A(n12), .Y(n4) );
  NBUFFX2_HVT U5 ( .A(n12), .Y(n5) );
  NBUFFX2_HVT U6 ( .A(n12), .Y(n6) );
  NBUFFX2_HVT U7 ( .A(n10), .Y(n7) );
  NBUFFX2_HVT U8 ( .A(n10), .Y(n8) );
  NBUFFX2_HVT U9 ( .A(n10), .Y(n9) );
  NBUFFX2_HVT U10 ( .A(rst_n), .Y(n10) );
  NBUFFX2_HVT U11 ( .A(rst_n), .Y(n11) );
  NBUFFX2_HVT U12 ( .A(rst_n), .Y(n12) );
  NBUFFX2_HVT U13 ( .A(rst_n), .Y(n13) );
  NBUFFX2_HVT U14 ( .A(n144), .Y(n14) );
  NBUFFX2_HVT U15 ( .A(clk), .Y(n15) );
  NBUFFX2_HVT U16 ( .A(n143), .Y(n136) );
  NBUFFX2_HVT U17 ( .A(n143), .Y(n137) );
  NBUFFX2_HVT U18 ( .A(n143), .Y(n138) );
  NBUFFX2_HVT U19 ( .A(n142), .Y(n139) );
  NBUFFX2_HVT U20 ( .A(n142), .Y(n140) );
  NBUFFX2_HVT U21 ( .A(n142), .Y(n141) );
  NBUFFX2_HVT U22 ( .A(clk), .Y(n142) );
  NBUFFX2_HVT U23 ( .A(clk), .Y(n143) );
  NBUFFX2_HVT U24 ( .A(clk), .Y(n144) );
  AND3X1_HVT U26 ( .A1(rs2_addr[2]), .A2(n179), .A3(n177), .Y(n257) );
  AND3X1_HVT U29 ( .A1(rs2_addr[1]), .A2(rs2_addr[2]), .A3(rs2_addr[0]), .Y(
        n250) );
  INVX1_LVT U30 ( .A(rs2_addr[3]), .Y(n265) );
  INVX0_HVT U31 ( .A(n270), .Y(n271) );
  INVX0_HVT U32 ( .A(n284), .Y(n285) );
  INVX0_HVT U33 ( .A(n302), .Y(n303) );
  INVX0_LVT U34 ( .A(rs1_addr[3]), .Y(n145) );
  AND2X2_LVT U36 ( .A1(rs1_addr[0]), .A2(n145), .Y(n168) );
  AND2X2_LVT U37 ( .A1(rs1_addr[3]), .A2(rs1_addr[0]), .Y(n167) );
  AO222X1_HVT U38 ( .A1(\regs[10][6] ), .A2(n2), .A3(\regs[3][6] ), .A4(n168), 
        .A5(\regs[11][6] ), .A6(n167), .Y(n148) );
  INVX0_LVT U39 ( .A(rs1_addr[1]), .Y(n171) );
  AO222X1_HVT U40 ( .A1(\regs[8][6] ), .A2(n2), .A3(\regs[1][6] ), .A4(n168), 
        .A5(\regs[9][6] ), .A6(n167), .Y(n146) );
  AND2X1_HVT U41 ( .A1(n171), .A2(n146), .Y(n147) );
  AO21X1_HVT U42 ( .A1(rs1_addr[1]), .A2(n148), .A3(n147), .Y(rs1_data[6]) );
  AO222X1_HVT U43 ( .A1(\regs[10][4] ), .A2(n2), .A3(\regs[3][4] ), .A4(n168), 
        .A5(\regs[11][4] ), .A6(n167), .Y(n151) );
  AO222X1_HVT U44 ( .A1(\regs[8][4] ), .A2(n2), .A3(\regs[1][4] ), .A4(n168), 
        .A5(\regs[9][4] ), .A6(n167), .Y(n149) );
  AND2X1_HVT U45 ( .A1(n171), .A2(n149), .Y(n150) );
  AO222X1_HVT U47 ( .A1(\regs[10][5] ), .A2(n2), .A3(\regs[3][5] ), .A4(n168), 
        .A5(\regs[11][5] ), .A6(n167), .Y(n154) );
  AO222X1_HVT U48 ( .A1(\regs[8][5] ), .A2(n2), .A3(\regs[1][5] ), .A4(n168), 
        .A5(\regs[9][5] ), .A6(n167), .Y(n152) );
  AND2X1_HVT U49 ( .A1(n171), .A2(n152), .Y(n153) );
  AO21X1_HVT U50 ( .A1(rs1_addr[1]), .A2(n154), .A3(n153), .Y(rs1_data[5]) );
  AO222X1_HVT U51 ( .A1(\regs[10][2] ), .A2(n2), .A3(\regs[3][2] ), .A4(n168), 
        .A5(\regs[11][2] ), .A6(n167), .Y(n157) );
  AO222X1_HVT U52 ( .A1(\regs[8][2] ), .A2(n2), .A3(\regs[1][2] ), .A4(n168), 
        .A5(\regs[9][2] ), .A6(n167), .Y(n155) );
  AND2X1_HVT U53 ( .A1(n171), .A2(n155), .Y(n156) );
  AO222X1_HVT U55 ( .A1(\regs[10][3] ), .A2(n169), .A3(\regs[3][3] ), .A4(n168), .A5(\regs[11][3] ), .A6(n167), .Y(n160) );
  AO222X1_HVT U56 ( .A1(\regs[8][3] ), .A2(n169), .A3(\regs[1][3] ), .A4(n168), 
        .A5(\regs[9][3] ), .A6(n167), .Y(n158) );
  AND2X1_HVT U57 ( .A1(n171), .A2(n158), .Y(n159) );
  AO222X1_HVT U59 ( .A1(\regs[10][0] ), .A2(n169), .A3(\regs[3][0] ), .A4(n168), .A5(\regs[11][0] ), .A6(n167), .Y(n163) );
  AO222X1_HVT U60 ( .A1(\regs[8][0] ), .A2(n169), .A3(\regs[1][0] ), .A4(n168), 
        .A5(\regs[9][0] ), .A6(n167), .Y(n161) );
  AND2X1_LVT U61 ( .A1(n171), .A2(n161), .Y(n162) );
  AO21X1_LVT U62 ( .A1(rs1_addr[1]), .A2(n163), .A3(n162), .Y(rs1_data[0]) );
  AO222X1_HVT U63 ( .A1(\regs[10][1] ), .A2(n169), .A3(\regs[3][1] ), .A4(n168), .A5(\regs[11][1] ), .A6(n167), .Y(n166) );
  AO222X1_HVT U64 ( .A1(\regs[8][1] ), .A2(n169), .A3(\regs[1][1] ), .A4(n168), 
        .A5(\regs[9][1] ), .A6(n167), .Y(n164) );
  AND2X1_LVT U65 ( .A1(n171), .A2(n164), .Y(n165) );
  AO222X1_HVT U67 ( .A1(\regs[10][7] ), .A2(n169), .A3(\regs[3][7] ), .A4(n168), .A5(\regs[11][7] ), .A6(n167), .Y(n173) );
  AO222X1_HVT U68 ( .A1(\regs[8][7] ), .A2(n169), .A3(\regs[1][7] ), .A4(n168), 
        .A5(\regs[9][7] ), .A6(n167), .Y(n170) );
  AND2X1_HVT U69 ( .A1(n171), .A2(n170), .Y(n172) );
  AO21X1_HVT U70 ( .A1(rs1_addr[1]), .A2(n173), .A3(n172), .Y(rs1_data[7]) );
  INVX0_HVT U71 ( .A(rs2_addr[2]), .Y(n178) );
  INVX0_HVT U72 ( .A(rs2_addr[0]), .Y(n177) );
  AO22X1_HVT U73 ( .A1(n250), .A2(\regs[7][7] ), .A3(n253), .A4(\regs[2][7] ), 
        .Y(n186) );
  AND3X1_HVT U74 ( .A1(rs2_addr[2]), .A2(rs2_addr[0]), .A3(n179), .Y(n254) );
  AND3X1_HVT U75 ( .A1(rs2_addr[2]), .A2(rs2_addr[1]), .A3(n177), .Y(n256) );
  AOI22X1_HVT U76 ( .A1(n254), .A2(\regs[5][7] ), .A3(n256), .A4(\regs[6][7] ), 
        .Y(n176) );
  AND3X1_HVT U77 ( .A1(rs2_addr[1]), .A2(rs2_addr[0]), .A3(n178), .Y(n255) );
  AOI22X1_HVT U78 ( .A1(n252), .A2(\regs[1][7] ), .A3(n255), .A4(\regs[3][7] ), 
        .Y(n175) );
  NAND3X0_HVT U80 ( .A1(n176), .A2(n175), .A3(n174), .Y(n185) );
  AND3X1_HVT U81 ( .A1(n179), .A2(n178), .A3(n177), .Y(n251) );
  AO22X1_HVT U82 ( .A1(\regs[8][7] ), .A2(n251), .A3(\regs[15][7] ), .A4(n250), 
        .Y(n183) );
  AO22X1_HVT U83 ( .A1(\regs[10][7] ), .A2(n253), .A3(\regs[9][7] ), .A4(n252), 
        .Y(n182) );
  AO22X1_HVT U84 ( .A1(\regs[11][7] ), .A2(n255), .A3(\regs[13][7] ), .A4(n254), .Y(n181) );
  AO22X1_HVT U85 ( .A1(\regs[12][7] ), .A2(n308), .A3(\regs[14][7] ), .A4(n256), .Y(n180) );
  OR4X1_HVT U86 ( .A1(n183), .A2(n182), .A3(n181), .A4(n180), .Y(n184) );
  AO222X1_HVT U87 ( .A1(n265), .A2(n186), .A3(n265), .A4(n185), .A5(
        rs2_addr[3]), .A6(n184), .Y(rs2_data[7]) );
  AO22X1_HVT U88 ( .A1(n250), .A2(\regs[7][6] ), .A3(n253), .A4(\regs[2][6] ), 
        .Y(n196) );
  AOI22X1_HVT U89 ( .A1(n254), .A2(\regs[5][6] ), .A3(n256), .A4(\regs[6][6] ), 
        .Y(n189) );
  AOI22X1_HVT U90 ( .A1(n252), .A2(\regs[1][6] ), .A3(n255), .A4(\regs[3][6] ), 
        .Y(n188) );
  NAND2X0_RVT U91 ( .A1(n308), .A2(\regs[4][6] ), .Y(n187) );
  NAND3X0_HVT U92 ( .A1(n189), .A2(n188), .A3(n187), .Y(n195) );
  AO22X1_HVT U93 ( .A1(n251), .A2(\regs[8][6] ), .A3(n250), .A4(\regs[15][6] ), 
        .Y(n193) );
  AO22X1_HVT U94 ( .A1(n253), .A2(\regs[10][6] ), .A3(n252), .A4(\regs[9][6] ), 
        .Y(n192) );
  AO22X1_HVT U95 ( .A1(n255), .A2(\regs[11][6] ), .A3(n254), .A4(\regs[13][6] ), .Y(n191) );
  AO22X1_HVT U96 ( .A1(n308), .A2(\regs[12][6] ), .A3(n256), .A4(\regs[14][6] ), .Y(n190) );
  OR4X1_HVT U97 ( .A1(n193), .A2(n192), .A3(n191), .A4(n190), .Y(n194) );
  AO222X1_HVT U98 ( .A1(n265), .A2(n196), .A3(n265), .A4(n195), .A5(
        rs2_addr[3]), .A6(n194), .Y(rs2_data[6]) );
  AO22X1_HVT U99 ( .A1(n250), .A2(\regs[7][5] ), .A3(n253), .A4(\regs[2][5] ), 
        .Y(n206) );
  AOI22X1_LVT U100 ( .A1(n254), .A2(\regs[5][5] ), .A3(n256), .A4(\regs[6][5] ), .Y(n199) );
  AOI22X1_HVT U101 ( .A1(n252), .A2(\regs[1][5] ), .A3(n255), .A4(\regs[3][5] ), .Y(n198) );
  NAND2X0_LVT U102 ( .A1(n308), .A2(\regs[4][5] ), .Y(n197) );
  NAND3X0_HVT U103 ( .A1(n199), .A2(n198), .A3(n197), .Y(n205) );
  AO22X1_LVT U104 ( .A1(n251), .A2(\regs[8][5] ), .A3(n250), .A4(\regs[15][5] ), .Y(n203) );
  AO22X1_HVT U105 ( .A1(n253), .A2(\regs[10][5] ), .A3(n252), .A4(\regs[9][5] ), .Y(n202) );
  AO22X1_LVT U107 ( .A1(n308), .A2(\regs[12][5] ), .A3(n256), .A4(
        \regs[14][5] ), .Y(n200) );
  OR4X1_HVT U108 ( .A1(n203), .A2(n202), .A3(n201), .A4(n200), .Y(n204) );
  AO222X1_HVT U109 ( .A1(n265), .A2(n206), .A3(n265), .A4(n205), .A5(
        rs2_addr[3]), .A6(n204), .Y(rs2_data[5]) );
  AO22X1_HVT U110 ( .A1(n250), .A2(\regs[7][4] ), .A3(n253), .A4(\regs[2][4] ), 
        .Y(n216) );
  AOI22X1_LVT U111 ( .A1(n254), .A2(\regs[5][4] ), .A3(n256), .A4(\regs[6][4] ), .Y(n209) );
  AOI22X1_HVT U112 ( .A1(n252), .A2(\regs[1][4] ), .A3(n255), .A4(\regs[3][4] ), .Y(n208) );
  NAND2X0_LVT U113 ( .A1(n308), .A2(\regs[4][4] ), .Y(n207) );
  NAND3X0_HVT U114 ( .A1(n209), .A2(n208), .A3(n207), .Y(n215) );
  AO22X1_LVT U115 ( .A1(n251), .A2(\regs[8][4] ), .A3(n250), .A4(\regs[15][4] ), .Y(n213) );
  AO22X1_HVT U116 ( .A1(n253), .A2(\regs[10][4] ), .A3(n252), .A4(\regs[9][4] ), .Y(n212) );
  AO22X1_LVT U117 ( .A1(n255), .A2(\regs[11][4] ), .A3(n254), .A4(
        \regs[13][4] ), .Y(n211) );
  AO22X1_LVT U118 ( .A1(n308), .A2(\regs[12][4] ), .A3(n256), .A4(
        \regs[14][4] ), .Y(n210) );
  OR4X1_HVT U119 ( .A1(n213), .A2(n212), .A3(n211), .A4(n210), .Y(n214) );
  AO222X1_HVT U120 ( .A1(n265), .A2(n216), .A3(n265), .A4(n215), .A5(
        rs2_addr[3]), .A6(n214), .Y(rs2_data[4]) );
  AO22X1_HVT U121 ( .A1(n250), .A2(\regs[7][3] ), .A3(n253), .A4(\regs[2][3] ), 
        .Y(n226) );
  AOI22X1_LVT U122 ( .A1(n254), .A2(\regs[5][3] ), .A3(n256), .A4(\regs[6][3] ), .Y(n219) );
  AOI22X1_HVT U123 ( .A1(n252), .A2(\regs[1][3] ), .A3(n255), .A4(\regs[3][3] ), .Y(n218) );
  NAND2X0_LVT U124 ( .A1(n308), .A2(\regs[4][3] ), .Y(n217) );
  NAND3X0_HVT U125 ( .A1(n219), .A2(n218), .A3(n217), .Y(n225) );
  AO22X1_LVT U126 ( .A1(n251), .A2(\regs[8][3] ), .A3(n250), .A4(\regs[15][3] ), .Y(n223) );
  AO22X1_HVT U127 ( .A1(n253), .A2(\regs[10][3] ), .A3(n252), .A4(\regs[9][3] ), .Y(n222) );
  AO22X1_LVT U128 ( .A1(n255), .A2(\regs[11][3] ), .A3(n254), .A4(
        \regs[13][3] ), .Y(n221) );
  AO22X1_LVT U129 ( .A1(n308), .A2(\regs[12][3] ), .A3(n256), .A4(
        \regs[14][3] ), .Y(n220) );
  OR4X1_HVT U130 ( .A1(n223), .A2(n222), .A3(n221), .A4(n220), .Y(n224) );
  AO22X1_HVT U132 ( .A1(n250), .A2(\regs[7][2] ), .A3(n253), .A4(\regs[2][2] ), 
        .Y(n236) );
  AOI22X1_LVT U133 ( .A1(n254), .A2(\regs[5][2] ), .A3(n256), .A4(\regs[6][2] ), .Y(n229) );
  AOI22X1_HVT U134 ( .A1(n252), .A2(\regs[1][2] ), .A3(n255), .A4(\regs[3][2] ), .Y(n228) );
  NAND2X0_LVT U135 ( .A1(n308), .A2(\regs[4][2] ), .Y(n227) );
  NAND3X0_HVT U136 ( .A1(n229), .A2(n228), .A3(n227), .Y(n235) );
  AO22X1_LVT U137 ( .A1(n251), .A2(\regs[8][2] ), .A3(n250), .A4(\regs[15][2] ), .Y(n233) );
  AO22X1_HVT U138 ( .A1(n253), .A2(\regs[10][2] ), .A3(n252), .A4(\regs[9][2] ), .Y(n232) );
  AO22X1_LVT U139 ( .A1(n255), .A2(\regs[11][2] ), .A3(n254), .A4(
        \regs[13][2] ), .Y(n231) );
  AO22X1_LVT U140 ( .A1(n308), .A2(\regs[12][2] ), .A3(n256), .A4(
        \regs[14][2] ), .Y(n230) );
  AO22X1_HVT U143 ( .A1(n250), .A2(\regs[7][1] ), .A3(n253), .A4(\regs[2][1] ), 
        .Y(n246) );
  AOI22X1_HVT U144 ( .A1(n254), .A2(\regs[5][1] ), .A3(n256), .A4(\regs[6][1] ), .Y(n239) );
  AOI22X1_HVT U145 ( .A1(n252), .A2(\regs[1][1] ), .A3(n255), .A4(\regs[3][1] ), .Y(n238) );
  NAND3X0_HVT U147 ( .A1(n239), .A2(n238), .A3(n237), .Y(n245) );
  AO22X1_HVT U148 ( .A1(n251), .A2(\regs[8][1] ), .A3(n250), .A4(\regs[15][1] ), .Y(n243) );
  AO22X1_HVT U149 ( .A1(n253), .A2(\regs[10][1] ), .A3(n252), .A4(\regs[9][1] ), .Y(n242) );
  AO22X1_HVT U150 ( .A1(n255), .A2(\regs[11][1] ), .A3(n254), .A4(
        \regs[13][1] ), .Y(n241) );
  AO22X1_HVT U151 ( .A1(n257), .A2(\regs[12][1] ), .A3(n256), .A4(
        \regs[14][1] ), .Y(n240) );
  OR4X1_HVT U152 ( .A1(n243), .A2(n242), .A3(n241), .A4(n240), .Y(n244) );
  AO222X1_HVT U153 ( .A1(n265), .A2(n246), .A3(n265), .A4(n245), .A5(
        rs2_addr[3]), .A6(n244), .Y(rs2_data[1]) );
  AO22X1_HVT U154 ( .A1(n250), .A2(\regs[7][0] ), .A3(n253), .A4(\regs[2][0] ), 
        .Y(n264) );
  AOI22X1_HVT U156 ( .A1(n252), .A2(\regs[1][0] ), .A3(n255), .A4(\regs[3][0] ), .Y(n248) );
  AO22X1_HVT U159 ( .A1(n251), .A2(\regs[8][0] ), .A3(n250), .A4(\regs[15][0] ), .Y(n261) );
  AO22X1_HVT U161 ( .A1(n255), .A2(\regs[11][0] ), .A3(n254), .A4(
        \regs[13][0] ), .Y(n259) );
  AO22X1_HVT U162 ( .A1(n257), .A2(\regs[12][0] ), .A3(n256), .A4(
        \regs[14][0] ), .Y(n258) );
  OR4X1_HVT U163 ( .A1(n261), .A2(n260), .A3(n259), .A4(n258), .Y(n262) );
  AND3X1_HVT U165 ( .A1(rd_addr[0]), .A2(rd_addr[3]), .A3(wr_en), .Y(n278) );
  NAND3X0_HVT U166 ( .A1(rd_addr[1]), .A2(rd_addr[2]), .A3(n278), .Y(n266) );
  INVX0_HVT U167 ( .A(n266), .Y(n267) );
  AO22X1_HVT U168 ( .A1(n267), .A2(wr_data[0]), .A3(n266), .A4(\regs[15][0] ), 
        .Y(n16) );
  AO22X1_HVT U169 ( .A1(n267), .A2(wr_data[1]), .A3(n266), .A4(\regs[15][1] ), 
        .Y(n17) );
  AO22X1_HVT U170 ( .A1(n267), .A2(wr_data[2]), .A3(n266), .A4(\regs[15][2] ), 
        .Y(n18) );
  AO22X1_HVT U171 ( .A1(n267), .A2(wr_data[3]), .A3(n266), .A4(\regs[15][3] ), 
        .Y(n19) );
  AO22X1_HVT U172 ( .A1(n267), .A2(wr_data[4]), .A3(n266), .A4(\regs[15][4] ), 
        .Y(n20) );
  AO22X1_HVT U173 ( .A1(n267), .A2(wr_data[5]), .A3(n266), .A4(\regs[15][5] ), 
        .Y(n21) );
  AO22X1_HVT U174 ( .A1(n267), .A2(wr_data[6]), .A3(n266), .A4(\regs[15][6] ), 
        .Y(n22) );
  AO22X1_RVT U175 ( .A1(n267), .A2(wr_data[7]), .A3(n266), .A4(\regs[15][7] ), 
        .Y(n23) );
  INVX0_HVT U176 ( .A(rd_addr[0]), .Y(n287) );
  AND3X1_HVT U177 ( .A1(rd_addr[3]), .A2(wr_en), .A3(n287), .Y(n281) );
  NAND3X0_HVT U178 ( .A1(rd_addr[1]), .A2(rd_addr[2]), .A3(n281), .Y(n268) );
  INVX0_HVT U179 ( .A(n268), .Y(n269) );
  AO22X1_HVT U180 ( .A1(n269), .A2(wr_data[0]), .A3(n268), .A4(\regs[14][0] ), 
        .Y(n24) );
  AO22X1_HVT U181 ( .A1(n269), .A2(wr_data[1]), .A3(n268), .A4(\regs[14][1] ), 
        .Y(n25) );
  AO22X1_HVT U182 ( .A1(n269), .A2(wr_data[2]), .A3(n268), .A4(\regs[14][2] ), 
        .Y(n26) );
  AO22X1_HVT U183 ( .A1(n269), .A2(wr_data[3]), .A3(n268), .A4(\regs[14][3] ), 
        .Y(n27) );
  AO22X1_HVT U184 ( .A1(n269), .A2(wr_data[4]), .A3(n268), .A4(\regs[14][4] ), 
        .Y(n28) );
  AO22X1_HVT U185 ( .A1(n269), .A2(wr_data[5]), .A3(n268), .A4(\regs[14][5] ), 
        .Y(n29) );
  AO22X1_HVT U186 ( .A1(n269), .A2(wr_data[6]), .A3(n268), .A4(\regs[14][6] ), 
        .Y(n30) );
  INVX0_HVT U188 ( .A(rd_addr[1]), .Y(n300) );
  NAND3X0_HVT U189 ( .A1(rd_addr[2]), .A2(n278), .A3(n300), .Y(n270) );
  AO22X1_HVT U190 ( .A1(n271), .A2(wr_data[0]), .A3(n270), .A4(\regs[13][0] ), 
        .Y(n32) );
  AO22X1_HVT U191 ( .A1(n271), .A2(wr_data[1]), .A3(n270), .A4(\regs[13][1] ), 
        .Y(n33) );
  AO22X1_HVT U192 ( .A1(n271), .A2(wr_data[2]), .A3(n270), .A4(\regs[13][2] ), 
        .Y(n34) );
  AO22X1_HVT U193 ( .A1(n271), .A2(wr_data[3]), .A3(n270), .A4(\regs[13][3] ), 
        .Y(n35) );
  AO22X1_HVT U194 ( .A1(n271), .A2(wr_data[4]), .A3(n270), .A4(\regs[13][4] ), 
        .Y(n36) );
  AO22X1_HVT U195 ( .A1(n271), .A2(wr_data[5]), .A3(n270), .A4(\regs[13][5] ), 
        .Y(n37) );
  AO22X1_HVT U196 ( .A1(n271), .A2(wr_data[6]), .A3(n270), .A4(\regs[13][6] ), 
        .Y(n38) );
  AO22X1_RVT U197 ( .A1(n271), .A2(wr_data[7]), .A3(n270), .A4(\regs[13][7] ), 
        .Y(n39) );
  NAND3X0_HVT U198 ( .A1(rd_addr[2]), .A2(n281), .A3(n300), .Y(n272) );
  INVX0_HVT U199 ( .A(n272), .Y(n273) );
  AO22X1_HVT U200 ( .A1(n273), .A2(wr_data[0]), .A3(n272), .A4(\regs[12][0] ), 
        .Y(n40) );
  AO22X1_HVT U201 ( .A1(n273), .A2(wr_data[1]), .A3(n272), .A4(\regs[12][1] ), 
        .Y(n41) );
  AO22X1_HVT U202 ( .A1(n273), .A2(wr_data[2]), .A3(n272), .A4(\regs[12][2] ), 
        .Y(n42) );
  AO22X1_HVT U203 ( .A1(n273), .A2(wr_data[3]), .A3(n272), .A4(\regs[12][3] ), 
        .Y(n43) );
  AO22X1_HVT U204 ( .A1(n273), .A2(wr_data[4]), .A3(n272), .A4(\regs[12][4] ), 
        .Y(n44) );
  AO22X1_HVT U205 ( .A1(n273), .A2(wr_data[5]), .A3(n272), .A4(\regs[12][5] ), 
        .Y(n45) );
  AO22X1_HVT U206 ( .A1(n273), .A2(wr_data[6]), .A3(n272), .A4(\regs[12][6] ), 
        .Y(n46) );
  INVX0_HVT U208 ( .A(rd_addr[2]), .Y(n299) );
  NAND3X0_HVT U209 ( .A1(rd_addr[1]), .A2(n278), .A3(n299), .Y(n274) );
  INVX0_HVT U210 ( .A(n274), .Y(n275) );
  AO22X1_HVT U211 ( .A1(n275), .A2(wr_data[0]), .A3(n274), .A4(\regs[11][0] ), 
        .Y(n48) );
  AO22X1_HVT U212 ( .A1(n275), .A2(wr_data[1]), .A3(n274), .A4(\regs[11][1] ), 
        .Y(n49) );
  AO22X1_HVT U213 ( .A1(n275), .A2(wr_data[2]), .A3(n274), .A4(\regs[11][2] ), 
        .Y(n50) );
  AO22X1_HVT U214 ( .A1(n275), .A2(wr_data[3]), .A3(n274), .A4(\regs[11][3] ), 
        .Y(n51) );
  AO22X1_HVT U215 ( .A1(n275), .A2(wr_data[4]), .A3(n274), .A4(\regs[11][4] ), 
        .Y(n52) );
  AO22X1_HVT U216 ( .A1(n275), .A2(wr_data[5]), .A3(n274), .A4(\regs[11][5] ), 
        .Y(n53) );
  AO22X1_HVT U217 ( .A1(n275), .A2(wr_data[6]), .A3(n274), .A4(\regs[11][6] ), 
        .Y(n54) );
  AO22X1_RVT U218 ( .A1(n275), .A2(wr_data[7]), .A3(n274), .A4(\regs[11][7] ), 
        .Y(n55) );
  NAND3X0_HVT U219 ( .A1(rd_addr[1]), .A2(n281), .A3(n299), .Y(n276) );
  INVX0_HVT U220 ( .A(n276), .Y(n277) );
  AO22X1_HVT U221 ( .A1(n277), .A2(wr_data[0]), .A3(n276), .A4(\regs[10][0] ), 
        .Y(n56) );
  AO22X1_HVT U222 ( .A1(n277), .A2(wr_data[1]), .A3(n276), .A4(\regs[10][1] ), 
        .Y(n57) );
  AO22X1_HVT U223 ( .A1(n277), .A2(wr_data[2]), .A3(n276), .A4(\regs[10][2] ), 
        .Y(n58) );
  AO22X1_HVT U224 ( .A1(n277), .A2(wr_data[3]), .A3(n276), .A4(\regs[10][3] ), 
        .Y(n59) );
  AO22X1_HVT U225 ( .A1(n277), .A2(wr_data[4]), .A3(n276), .A4(\regs[10][4] ), 
        .Y(n60) );
  AO22X1_HVT U226 ( .A1(n277), .A2(wr_data[5]), .A3(n276), .A4(\regs[10][5] ), 
        .Y(n61) );
  AO22X1_HVT U227 ( .A1(n277), .A2(wr_data[6]), .A3(n276), .A4(\regs[10][6] ), 
        .Y(n62) );
  NAND3X0_HVT U229 ( .A1(n278), .A2(n300), .A3(n299), .Y(n279) );
  INVX0_HVT U230 ( .A(n279), .Y(n280) );
  AO22X1_HVT U231 ( .A1(n280), .A2(wr_data[0]), .A3(n279), .A4(\regs[9][0] ), 
        .Y(n64) );
  AO22X1_HVT U232 ( .A1(n280), .A2(wr_data[1]), .A3(n279), .A4(\regs[9][1] ), 
        .Y(n65) );
  AO22X1_HVT U233 ( .A1(n280), .A2(wr_data[2]), .A3(n279), .A4(\regs[9][2] ), 
        .Y(n66) );
  AO22X1_HVT U234 ( .A1(n280), .A2(wr_data[3]), .A3(n279), .A4(\regs[9][3] ), 
        .Y(n67) );
  AO22X1_HVT U235 ( .A1(n280), .A2(wr_data[4]), .A3(n279), .A4(\regs[9][4] ), 
        .Y(n68) );
  AO22X1_HVT U236 ( .A1(n280), .A2(wr_data[5]), .A3(n279), .A4(\regs[9][5] ), 
        .Y(n69) );
  AO22X1_HVT U237 ( .A1(n280), .A2(wr_data[6]), .A3(n279), .A4(\regs[9][6] ), 
        .Y(n70) );
  AO22X1_RVT U238 ( .A1(n280), .A2(wr_data[7]), .A3(n279), .A4(\regs[9][7] ), 
        .Y(n71) );
  NAND3X0_HVT U239 ( .A1(n281), .A2(n300), .A3(n299), .Y(n282) );
  INVX0_HVT U240 ( .A(n282), .Y(n283) );
  AO22X1_HVT U241 ( .A1(n283), .A2(wr_data[0]), .A3(n282), .A4(\regs[8][0] ), 
        .Y(n72) );
  AO22X1_HVT U242 ( .A1(n283), .A2(wr_data[1]), .A3(n282), .A4(\regs[8][1] ), 
        .Y(n73) );
  AO22X1_HVT U243 ( .A1(n283), .A2(wr_data[2]), .A3(n282), .A4(\regs[8][2] ), 
        .Y(n74) );
  AO22X1_HVT U244 ( .A1(n283), .A2(wr_data[3]), .A3(n282), .A4(\regs[8][3] ), 
        .Y(n75) );
  AO22X1_HVT U245 ( .A1(n283), .A2(wr_data[4]), .A3(n282), .A4(\regs[8][4] ), 
        .Y(n76) );
  AO22X1_HVT U246 ( .A1(n283), .A2(wr_data[5]), .A3(n282), .A4(\regs[8][5] ), 
        .Y(n77) );
  AO22X1_HVT U247 ( .A1(n283), .A2(wr_data[6]), .A3(n282), .A4(\regs[8][6] ), 
        .Y(n78) );
  INVX0_HVT U249 ( .A(rd_addr[3]), .Y(n286) );
  AND3X1_HVT U250 ( .A1(rd_addr[0]), .A2(wr_en), .A3(n286), .Y(n301) );
  NAND3X0_HVT U251 ( .A1(rd_addr[1]), .A2(rd_addr[2]), .A3(n301), .Y(n284) );
  AO22X1_HVT U252 ( .A1(n285), .A2(wr_data[0]), .A3(n284), .A4(\regs[7][0] ), 
        .Y(n80) );
  AO22X1_HVT U253 ( .A1(n285), .A2(wr_data[1]), .A3(n284), .A4(\regs[7][1] ), 
        .Y(n81) );
  AO22X1_HVT U254 ( .A1(n285), .A2(wr_data[2]), .A3(n284), .A4(\regs[7][2] ), 
        .Y(n82) );
  AO22X1_HVT U255 ( .A1(n285), .A2(wr_data[3]), .A3(n284), .A4(\regs[7][3] ), 
        .Y(n83) );
  AO22X1_HVT U256 ( .A1(n285), .A2(wr_data[4]), .A3(n284), .A4(\regs[7][4] ), 
        .Y(n84) );
  AO22X1_HVT U257 ( .A1(n285), .A2(wr_data[5]), .A3(n284), .A4(\regs[7][5] ), 
        .Y(n85) );
  AO22X1_HVT U258 ( .A1(n285), .A2(wr_data[6]), .A3(n284), .A4(\regs[7][6] ), 
        .Y(n86) );
  AND3X1_HVT U260 ( .A1(wr_en), .A2(n287), .A3(n286), .Y(n296) );
  NAND3X0_HVT U261 ( .A1(rd_addr[1]), .A2(rd_addr[2]), .A3(n296), .Y(n288) );
  INVX0_HVT U262 ( .A(n288), .Y(n289) );
  AO22X1_HVT U263 ( .A1(n289), .A2(wr_data[0]), .A3(n288), .A4(\regs[6][0] ), 
        .Y(n88) );
  AO22X1_HVT U264 ( .A1(n289), .A2(wr_data[1]), .A3(n288), .A4(\regs[6][1] ), 
        .Y(n89) );
  AO22X1_HVT U265 ( .A1(n289), .A2(wr_data[2]), .A3(n288), .A4(\regs[6][2] ), 
        .Y(n90) );
  AO22X1_HVT U266 ( .A1(n289), .A2(wr_data[3]), .A3(n288), .A4(\regs[6][3] ), 
        .Y(n91) );
  AO22X1_HVT U267 ( .A1(n289), .A2(wr_data[4]), .A3(n288), .A4(\regs[6][4] ), 
        .Y(n92) );
  AO22X1_HVT U268 ( .A1(n289), .A2(wr_data[5]), .A3(n288), .A4(\regs[6][5] ), 
        .Y(n93) );
  AO22X1_HVT U269 ( .A1(n289), .A2(wr_data[6]), .A3(n288), .A4(\regs[6][6] ), 
        .Y(n94) );
  NAND3X0_HVT U271 ( .A1(rd_addr[2]), .A2(n301), .A3(n300), .Y(n290) );
  INVX0_HVT U272 ( .A(n290), .Y(n291) );
  AO22X1_HVT U273 ( .A1(n291), .A2(wr_data[0]), .A3(n290), .A4(\regs[5][0] ), 
        .Y(n96) );
  AO22X1_HVT U274 ( .A1(n291), .A2(wr_data[1]), .A3(n290), .A4(\regs[5][1] ), 
        .Y(n97) );
  AO22X1_HVT U275 ( .A1(n291), .A2(wr_data[2]), .A3(n290), .A4(\regs[5][2] ), 
        .Y(n98) );
  AO22X1_HVT U276 ( .A1(n291), .A2(wr_data[3]), .A3(n290), .A4(\regs[5][3] ), 
        .Y(n99) );
  AO22X1_HVT U277 ( .A1(n291), .A2(wr_data[4]), .A3(n290), .A4(\regs[5][4] ), 
        .Y(n100) );
  AO22X1_HVT U278 ( .A1(n291), .A2(wr_data[5]), .A3(n290), .A4(\regs[5][5] ), 
        .Y(n101) );
  AO22X1_HVT U279 ( .A1(n291), .A2(wr_data[6]), .A3(n290), .A4(\regs[5][6] ), 
        .Y(n102) );
  AO22X1_RVT U280 ( .A1(n291), .A2(wr_data[7]), .A3(n290), .A4(\regs[5][7] ), 
        .Y(n103) );
  NAND3X0_HVT U281 ( .A1(rd_addr[2]), .A2(n296), .A3(n300), .Y(n292) );
  INVX0_HVT U282 ( .A(n292), .Y(n293) );
  AO22X1_HVT U283 ( .A1(n293), .A2(wr_data[0]), .A3(n292), .A4(\regs[4][0] ), 
        .Y(n104) );
  AO22X1_HVT U284 ( .A1(n293), .A2(wr_data[1]), .A3(n292), .A4(\regs[4][1] ), 
        .Y(n105) );
  AO22X1_HVT U285 ( .A1(n293), .A2(wr_data[2]), .A3(n292), .A4(\regs[4][2] ), 
        .Y(n106) );
  AO22X1_HVT U286 ( .A1(n293), .A2(wr_data[3]), .A3(n292), .A4(\regs[4][3] ), 
        .Y(n107) );
  AO22X1_HVT U287 ( .A1(n293), .A2(wr_data[4]), .A3(n292), .A4(\regs[4][4] ), 
        .Y(n108) );
  AO22X1_HVT U288 ( .A1(n293), .A2(wr_data[5]), .A3(n292), .A4(\regs[4][5] ), 
        .Y(n109) );
  AO22X1_HVT U289 ( .A1(n293), .A2(wr_data[6]), .A3(n292), .A4(\regs[4][6] ), 
        .Y(n110) );
  NAND3X0_HVT U291 ( .A1(rd_addr[1]), .A2(n301), .A3(n299), .Y(n294) );
  INVX0_HVT U292 ( .A(n294), .Y(n295) );
  AO22X1_HVT U293 ( .A1(n295), .A2(wr_data[0]), .A3(n294), .A4(\regs[3][0] ), 
        .Y(n112) );
  AO22X1_HVT U294 ( .A1(n295), .A2(wr_data[1]), .A3(n294), .A4(\regs[3][1] ), 
        .Y(n113) );
  AO22X1_HVT U295 ( .A1(n295), .A2(wr_data[2]), .A3(n294), .A4(\regs[3][2] ), 
        .Y(n114) );
  AO22X1_HVT U296 ( .A1(n295), .A2(wr_data[3]), .A3(n294), .A4(\regs[3][3] ), 
        .Y(n115) );
  AO22X1_HVT U297 ( .A1(n295), .A2(wr_data[4]), .A3(n294), .A4(\regs[3][4] ), 
        .Y(n116) );
  AO22X1_HVT U298 ( .A1(n295), .A2(wr_data[5]), .A3(n294), .A4(\regs[3][5] ), 
        .Y(n117) );
  AO22X1_HVT U299 ( .A1(n295), .A2(wr_data[6]), .A3(n294), .A4(\regs[3][6] ), 
        .Y(n118) );
  AO22X1_RVT U300 ( .A1(n295), .A2(wr_data[7]), .A3(n294), .A4(\regs[3][7] ), 
        .Y(n119) );
  NAND3X0_HVT U301 ( .A1(rd_addr[1]), .A2(n296), .A3(n299), .Y(n297) );
  INVX0_HVT U302 ( .A(n297), .Y(n298) );
  AO22X1_HVT U303 ( .A1(n298), .A2(wr_data[0]), .A3(n297), .A4(\regs[2][0] ), 
        .Y(n120) );
  AO22X1_HVT U304 ( .A1(n298), .A2(wr_data[1]), .A3(n297), .A4(\regs[2][1] ), 
        .Y(n121) );
  AO22X1_HVT U305 ( .A1(n298), .A2(wr_data[2]), .A3(n297), .A4(\regs[2][2] ), 
        .Y(n122) );
  AO22X1_HVT U306 ( .A1(n298), .A2(wr_data[3]), .A3(n297), .A4(\regs[2][3] ), 
        .Y(n123) );
  AO22X1_HVT U307 ( .A1(n298), .A2(wr_data[4]), .A3(n297), .A4(\regs[2][4] ), 
        .Y(n124) );
  AO22X1_HVT U308 ( .A1(n298), .A2(wr_data[5]), .A3(n297), .A4(\regs[2][5] ), 
        .Y(n125) );
  AO22X1_HVT U309 ( .A1(n298), .A2(wr_data[6]), .A3(n297), .A4(\regs[2][6] ), 
        .Y(n126) );
  NAND3X0_HVT U311 ( .A1(n301), .A2(n300), .A3(n299), .Y(n302) );
  AO22X1_HVT U312 ( .A1(n303), .A2(wr_data[0]), .A3(n302), .A4(\regs[1][0] ), 
        .Y(n128) );
  AO22X1_HVT U313 ( .A1(n303), .A2(wr_data[1]), .A3(n302), .A4(\regs[1][1] ), 
        .Y(n129) );
  AO22X1_HVT U314 ( .A1(n303), .A2(wr_data[2]), .A3(n302), .A4(\regs[1][2] ), 
        .Y(n130) );
  AO22X1_HVT U315 ( .A1(n303), .A2(wr_data[3]), .A3(n302), .A4(\regs[1][3] ), 
        .Y(n131) );
  AO22X1_HVT U316 ( .A1(n303), .A2(wr_data[4]), .A3(n302), .A4(\regs[1][4] ), 
        .Y(n132) );
  AO22X1_HVT U317 ( .A1(n303), .A2(wr_data[5]), .A3(n302), .A4(\regs[1][5] ), 
        .Y(n133) );
  AO22X1_HVT U318 ( .A1(n303), .A2(wr_data[6]), .A3(n302), .A4(\regs[1][6] ), 
        .Y(n134) );
  AO21X1_RVT U58 ( .A1(rs1_addr[1]), .A2(n160), .A3(n159), .Y(rs1_data[3]) );
  INVX1_HVT U2 ( .A(rs2_addr[1]), .Y(n179) );
  NAND2X0_HVT U25 ( .A1(n257), .A2(\regs[4][0] ), .Y(n247) );
  AO22X1_HVT U27 ( .A1(n256), .A2(\regs[6][0] ), .A3(\regs[5][0] ), .A4(n254), 
        .Y(n306) );
  OR2X1_RVT U28 ( .A1(n305), .A2(n306), .Y(n263) );
  AO22X1_HVT U35 ( .A1(n255), .A2(\regs[11][5] ), .A3(n254), .A4(\regs[13][5] ), .Y(n201) );
  NAND2X0_HVT U46 ( .A1(n308), .A2(\regs[4][7] ), .Y(n174) );
  OR2X1_HVT U54 ( .A1(n264), .A2(n263), .Y(n307) );
  NAND2X0_HVT U66 ( .A1(n308), .A2(\regs[4][1] ), .Y(n237) );
  AO22X1_HVT U79 ( .A1(n262), .A2(rs2_addr[3]), .A3(n307), .A4(n265), .Y(
        rs2_data[0]) );
  OR4X1_HVT U106 ( .A1(n233), .A2(n232), .A3(n231), .A4(n230), .Y(n234) );
  AO222X1_HVT U131 ( .A1(n265), .A2(n226), .A3(n265), .A4(n225), .A5(
        rs2_addr[3]), .A6(n224), .Y(rs2_data[3]) );
  NBUFFX2_HVT U141 ( .A(n169), .Y(n2) );
  NOR2X1_HVT U142 ( .A1(n145), .A2(rs1_addr[0]), .Y(n169) );
  AO222X1_HVT U146 ( .A1(n265), .A2(n236), .A3(n265), .A4(n235), .A5(
        rs2_addr[3]), .A6(n234), .Y(rs2_data[2]) );
  AO21X1_HVT U155 ( .A1(rs1_addr[1]), .A2(n166), .A3(n165), .Y(rs1_data[1]) );
  AO21X1_HVT U157 ( .A1(rs1_addr[1]), .A2(n157), .A3(n156), .Y(rs1_data[2]) );
  AO22X1_HVT U158 ( .A1(n269), .A2(wr_data[7]), .A3(n268), .A4(\regs[14][7] ), 
        .Y(n31) );
  AO22X1_HVT U160 ( .A1(n273), .A2(wr_data[7]), .A3(n272), .A4(\regs[12][7] ), 
        .Y(n47) );
  AO22X1_HVT U164 ( .A1(n277), .A2(wr_data[7]), .A3(n276), .A4(\regs[10][7] ), 
        .Y(n63) );
  AO22X1_HVT U187 ( .A1(n283), .A2(wr_data[7]), .A3(n282), .A4(\regs[8][7] ), 
        .Y(n79) );
  AO22X1_HVT U207 ( .A1(n285), .A2(wr_data[7]), .A3(n284), .A4(\regs[7][7] ), 
        .Y(n87) );
  AO22X1_HVT U228 ( .A1(n289), .A2(wr_data[7]), .A3(n288), .A4(\regs[6][7] ), 
        .Y(n95) );
  AO22X1_HVT U248 ( .A1(n293), .A2(wr_data[7]), .A3(n292), .A4(\regs[4][7] ), 
        .Y(n111) );
  AO22X1_HVT U259 ( .A1(n298), .A2(wr_data[7]), .A3(n297), .A4(\regs[2][7] ), 
        .Y(n127) );
  AO22X1_HVT U270 ( .A1(n303), .A2(wr_data[7]), .A3(n302), .A4(\regs[1][7] ), 
        .Y(n135) );
  NAND2X0_HVT U290 ( .A1(rs2_addr[1]), .A2(n178), .Y(n304) );
  AO21X1_HVT U310 ( .A1(rs1_addr[1]), .A2(n151), .A3(n150), .Y(rs1_data[4]) );
  NAND2X0_HVT U319 ( .A1(n248), .A2(n247), .Y(n305) );
  AO22X1_LVT U320 ( .A1(n252), .A2(\regs[9][0] ), .A3(\regs[10][0] ), .A4(n253), .Y(n260) );
  NOR2X2_RVT U321 ( .A1(n304), .A2(rs2_addr[0]), .Y(n253) );
  NBUFFX2_LVT U322 ( .A(n257), .Y(n308) );
  INVX2_HVT U323 ( .A(n309), .Y(n252) );
  NAND3X0_HVT U324 ( .A1(n179), .A2(rs2_addr[0]), .A3(n178), .Y(n309) );
endmodule


module alu ( alu_op, operand_a, operand_b, alu_result, zero_flag, carry_flag
 );
  input [3:0] alu_op;
  input [7:0] operand_a;
  input [7:0] operand_b;
  output [7:0] alu_result;
  output zero_flag, carry_flag;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n140, n141, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220;

  INVX0_HVT U2 ( .A(operand_b[6]), .Y(n111) );
  INVX0_HVT U4 ( .A(n153), .Y(n182) );
  INVX0_HVT U5 ( .A(operand_a[2]), .Y(n123) );
  INVX0_HVT U6 ( .A(operand_a[3]), .Y(n167) );
  INVX0_HVT U7 ( .A(n132), .Y(n180) );
  INVX0_HVT U8 ( .A(n133), .Y(n183) );
  INVX0_HVT U9 ( .A(n82), .Y(n171) );
  INVX0_HVT U10 ( .A(n159), .Y(n170) );
  INVX0_HVT U11 ( .A(n58), .Y(n119) );
  INVX0_HVT U12 ( .A(n152), .Y(n148) );
  INVX0_HVT U13 ( .A(operand_b[5]), .Y(n108) );
  INVX0_HVT U15 ( .A(alu_op[0]), .Y(n11) );
  INVX0_HVT U16 ( .A(operand_a[5]), .Y(n105) );
  INVX0_HVT U17 ( .A(operand_b[4]), .Y(n89) );
  INVX0_HVT U19 ( .A(operand_b[3]), .Y(n164) );
  INVX0_HVT U20 ( .A(alu_op[2]), .Y(n10) );
  INVX0_HVT U21 ( .A(operand_b[2]), .Y(n64) );
  INVX0_HVT U22 ( .A(alu_op[3]), .Y(n6) );
  INVX0_HVT U23 ( .A(operand_a[0]), .Y(n124) );
  INVX0_HVT U29 ( .A(n62), .Y(n26) );
  INVX0_HVT U30 ( .A(alu_op[1]), .Y(n7) );
  INVX0_HVT U31 ( .A(n32), .Y(n169) );
  INVX0_HVT U32 ( .A(n9), .Y(n73) );
  AO222X1_HVT U33 ( .A1(operand_b[6]), .A2(n130), .A3(operand_b[6]), .A4(n129), 
        .A5(n130), .A6(n129), .Y(n133) );
  INVX0_HVT U34 ( .A(n215), .Y(n59) );
  INVX0_HVT U35 ( .A(operand_a[1]), .Y(n125) );
  INVX0_HVT U37 ( .A(operand_a[6]), .Y(n129) );
  INVX0_HVT U38 ( .A(operand_a[7]), .Y(n186) );
  AO222X1_HVT U40 ( .A1(operand_a[6]), .A2(operand_b[6]), .A3(operand_a[6]), 
        .A4(n128), .A5(operand_b[6]), .A6(n128), .Y(n132) );
  NAND4X0_HVT U41 ( .A1(alu_op[2]), .A2(alu_op[1]), .A3(n11), .A4(n6), .Y(n162) );
  NAND4X0_HVT U42 ( .A1(alu_op[0]), .A2(alu_op[1]), .A3(n6), .A4(n10), .Y(n156) );
  OA22X1_HVT U44 ( .A1(operand_a[0]), .A2(n162), .A3(n156), .A4(n42), .Y(n16)
         );
  NAND3X0_HVT U45 ( .A1(alu_op[3]), .A2(n10), .A3(n7), .Y(n1) );
  NAND3X0_HVT U46 ( .A1(alu_op[2]), .A2(n6), .A3(n7), .Y(n150) );
  AO22X1_HVT U47 ( .A1(alu_op[0]), .A2(n1), .A3(n11), .A4(n150), .Y(n146) );
  NAND2X0_HVT U48 ( .A1(operand_b[1]), .A2(n59), .Y(n58) );
  NAND2X0_HVT U49 ( .A1(operand_a[2]), .A2(n119), .Y(n2) );
  INVX2_HVT U50 ( .A(operand_b[1]), .Y(n122) );
  NAND3X0_HVT U51 ( .A1(n215), .A2(operand_a[1]), .A3(n122), .Y(n17) );
  AND2X1_HVT U52 ( .A1(n2), .A2(n17), .Y(n3) );
  NAND2X0_HVT U53 ( .A1(n215), .A2(operand_b[1]), .Y(n82) );
  OR2X1_HVT U54 ( .A1(n167), .A2(n82), .Y(n102) );
  AND2X1_HVT U55 ( .A1(n3), .A2(n102), .Y(n4) );
  NAND4X0_HVT U56 ( .A1(alu_op[3]), .A2(n11), .A3(n10), .A4(n7), .Y(n32) );
  NAND2X0_HVT U57 ( .A1(n169), .A2(n64), .Y(n175) );
  OA22X1_HVT U58 ( .A1(n146), .A2(n59), .A3(n4), .A4(n175), .Y(n15) );
  AO22X1_HVT U59 ( .A1(n215), .A2(operand_a[7]), .A3(n59), .A4(operand_a[6]), 
        .Y(n31) );
  NAND2X0_HVT U60 ( .A1(n59), .A2(n122), .Y(n159) );
  AOI22X1_HVT U61 ( .A1(operand_b[1]), .A2(n31), .A3(n170), .A4(operand_a[4]), 
        .Y(n5) );
  NAND3X0_HVT U62 ( .A1(n215), .A2(operand_a[5]), .A3(n122), .Y(n100) );
  AND2X1_HVT U63 ( .A1(n5), .A2(n100), .Y(n74) );
  NAND2X0_HVT U64 ( .A1(operand_b[2]), .A2(n169), .Y(n49) );
  NAND4X0_HVT U65 ( .A1(n11), .A2(n10), .A3(n6), .A4(n7), .Y(n153) );
  NAND2X0_HVT U66 ( .A1(alu_op[1]), .A2(n6), .Y(n9) );
  NAND2X0_HVT U67 ( .A1(alu_op[3]), .A2(n7), .Y(n8) );
  NAND4X0_HVT U68 ( .A1(alu_op[0]), .A2(n9), .A3(n10), .A4(n8), .Y(n147) );
  AND3X1_HVT U69 ( .A1(n153), .A2(n147), .A3(n150), .Y(n12) );
  OA22X1_HVT U71 ( .A1(n74), .A2(n49), .A3(n12), .A4(n193), .Y(n14) );
  NAND4X0_HVT U72 ( .A1(alu_op[0]), .A2(alu_op[2]), .A3(n73), .A4(n64), .Y(
        n145) );
  NAND4X0_HVT U73 ( .A1(alu_op[3]), .A2(alu_op[1]), .A3(n11), .A4(n10), .Y(
        n158) );
  OA21X1_HVT U74 ( .A1(n145), .A2(n159), .A3(n158), .Y(n115) );
  OA21X1_HVT U75 ( .A1(n159), .A2(n175), .A3(n115), .Y(n131) );
  AO221X1_HVT U76 ( .A1(n131), .A2(n215), .A3(n131), .A4(n12), .A5(n124), .Y(
        n13) );
  NAND4X0_HVT U77 ( .A1(n16), .A2(n15), .A3(n14), .A4(n13), .Y(alu_result[0])
         );
  OA22X1_HVT U78 ( .A1(n159), .A2(n123), .A3(n124), .A4(n58), .Y(n18) );
  AND2X1_HVT U79 ( .A1(n18), .A2(n17), .Y(n99) );
  AO221X1_HVT U80 ( .A1(n215), .A2(n167), .A3(n59), .A4(n123), .A5(
        operand_b[1]), .Y(n19) );
  NAND2X0_HVT U81 ( .A1(operand_a[4]), .A2(n119), .Y(n101) );
  AND2X1_HVT U82 ( .A1(n19), .A2(n101), .Y(n21) );
  OR2X1_HVT U83 ( .A1(n105), .A2(n82), .Y(n20) );
  AND2X1_HVT U84 ( .A1(n21), .A2(n20), .Y(n22) );
  OA22X1_HVT U85 ( .A1(n99), .A2(n145), .A3(n22), .A4(n175), .Y(n36) );
  NAND2X0_HVT U86 ( .A1(n187), .A2(n63), .Y(n23) );
  AND2X1_HVT U87 ( .A1(n23), .A2(n150), .Y(n25) );
  OA222X1_HVT U88 ( .A1(operand_b[1]), .A2(operand_a[1]), .A3(operand_b[1]), 
        .A4(n39), .A5(operand_a[1]), .A6(n39), .Y(n62) );
  OR2X1_HVT U89 ( .A1(n153), .A2(n62), .Y(n24) );
  AND2X1_HVT U90 ( .A1(n25), .A2(n24), .Y(n30) );
  OA22X1_HVT U91 ( .A1(n26), .A2(n153), .A3(n147), .A4(n63), .Y(n27) );
  OA221X1_HVT U92 ( .A1(operand_b[2]), .A2(n30), .A3(n64), .A4(n27), .A5(n158), 
        .Y(n29) );
  OA21X1_HVT U93 ( .A1(operand_b[2]), .A2(n27), .A3(n162), .Y(n28) );
  AO22X1_HVT U94 ( .A1(operand_a[2]), .A2(n29), .A3(n123), .A4(n28), .Y(n35)
         );
  OA221X1_HVT U95 ( .A1(operand_a[2]), .A2(n30), .A3(n123), .A4(n156), .A5(
        n146), .Y(n33) );
  NAND2X0_HVT U96 ( .A1(n122), .A2(n31), .Y(n98) );
  AO221X1_HVT U97 ( .A1(n33), .A2(n32), .A3(n33), .A4(n98), .A5(n64), .Y(n34)
         );
  NAND3X0_HVT U98 ( .A1(n36), .A2(n35), .A3(n34), .Y(alu_result[2]) );
  OA22X1_HVT U99 ( .A1(n153), .A2(n42), .A3(n147), .A4(n193), .Y(n50) );
  NAND2X0_HVT U100 ( .A1(n187), .A2(n193), .Y(n38) );
  AND2X1_HVT U101 ( .A1(n38), .A2(n150), .Y(n41) );
  OR2X1_HVT U102 ( .A1(n153), .A2(n39), .Y(n40) );
  AND2X1_HVT U103 ( .A1(n41), .A2(n40), .Y(n51) );
  AO221X1_HVT U104 ( .A1(operand_b[1]), .A2(n50), .A3(n122), .A4(n51), .A5(
        n125), .Y(n57) );
  OA22X1_HVT U105 ( .A1(operand_b[1]), .A2(n42), .A3(n125), .A4(n159), .Y(n80)
         );
  NAND2X0_HVT U106 ( .A1(n215), .A2(n122), .Y(n43) );
  OA22X1_HVT U107 ( .A1(n159), .A2(n125), .A3(n123), .A4(n43), .Y(n44) );
  NAND2X0_HVT U108 ( .A1(operand_a[3]), .A2(n119), .Y(n81) );
  NAND2X0_HVT U109 ( .A1(operand_a[4]), .A2(n171), .Y(n120) );
  AND3X1_HVT U110 ( .A1(n44), .A2(n81), .A3(n120), .Y(n45) );
  OA22X1_HVT U111 ( .A1(n80), .A2(n145), .A3(n45), .A4(n175), .Y(n56) );
  NAND2X0_HVT U112 ( .A1(operand_a[5]), .A2(n170), .Y(n46) );
  NAND3X0_HVT U113 ( .A1(n215), .A2(operand_a[6]), .A3(n122), .Y(n121) );
  AND2X1_HVT U114 ( .A1(n46), .A2(n121), .Y(n48) );
  OR2X1_HVT U115 ( .A1(n58), .A2(n186), .Y(n47) );
  AND2X1_HVT U116 ( .A1(n48), .A2(n47), .Y(n79) );
  OA22X1_HVT U117 ( .A1(n79), .A2(n49), .A3(n158), .A4(n125), .Y(n55) );
  OA21X1_HVT U118 ( .A1(operand_b[1]), .A2(n50), .A3(n162), .Y(n53) );
  OA221X1_HVT U119 ( .A1(operand_a[1]), .A2(n51), .A3(n125), .A4(n156), .A5(
        n146), .Y(n52) );
  OA22X1_HVT U120 ( .A1(operand_a[1]), .A2(n53), .A3(n52), .A4(n122), .Y(n54)
         );
  NAND4X0_HVT U121 ( .A1(n57), .A2(n56), .A3(n55), .A4(n54), .Y(alu_result[1])
         );
  AO22X1_HVT U122 ( .A1(operand_b[1]), .A2(n125), .A3(n122), .A4(n167), .Y(n60) );
  OA22X1_HVT U123 ( .A1(n60), .A2(n59), .A3(n123), .A4(n58), .Y(n61) );
  OA22X1_HVT U124 ( .A1(n146), .A2(n89), .A3(n61), .A4(n145), .Y(n78) );
  OA222X1_HVT U125 ( .A1(n62), .A2(operand_b[2]), .A3(n62), .A4(operand_a[2]), 
        .A5(operand_b[2]), .A6(operand_a[2]), .Y(n152) );
  OA22X1_HVT U127 ( .A1(n202), .A2(n153), .A3(n147), .A4(n88), .Y(n70) );
  NAND2X0_HVT U128 ( .A1(n187), .A2(n88), .Y(n65) );
  AND2X1_HVT U129 ( .A1(n65), .A2(n150), .Y(n68) );
  OA222X1_HVT U132 ( .A1(n89), .A2(n70), .A3(n89), .A4(n156), .A5(operand_b[4]), .A6(n69), .Y(n72) );
  OA221X1_HVT U133 ( .A1(operand_b[4]), .A2(n70), .A3(n89), .A4(n69), .A5(n162), .Y(n71) );
  OA222X1_HVT U134 ( .A1(n201), .A2(n115), .A3(n201), .A4(n72), .A5(
        operand_a[4]), .A6(n71), .Y(n77) );
  NAND4X0_HVT U135 ( .A1(operand_b[2]), .A2(alu_op[0]), .A3(alu_op[2]), .A4(
        n73), .Y(n126) );
  OR3X1_HVT U136 ( .A1(n159), .A2(n124), .A3(n126), .Y(n76) );
  OR2X1_HVT U137 ( .A1(n175), .A2(n74), .Y(n75) );
  OA22X1_HVT U139 ( .A1(n80), .A2(n126), .A3(n79), .A4(n175), .Y(n97) );
  NAND3X0_HVT U140 ( .A1(n215), .A2(operand_a[4]), .A3(n122), .Y(n173) );
  AND2X1_HVT U141 ( .A1(n173), .A2(n81), .Y(n84) );
  OR2X1_HVT U142 ( .A1(n82), .A2(n123), .Y(n83) );
  AND2X1_HVT U143 ( .A1(n84), .A2(n83), .Y(n85) );
  OA22X1_HVT U144 ( .A1(n85), .A2(n145), .A3(n146), .A4(n108), .Y(n96) );
  OA22X1_HVT U145 ( .A1(n106), .A2(n153), .A3(n147), .A4(n107), .Y(n92) );
  AOI22X1_HVT U146 ( .A1(n107), .A2(n187), .A3(n182), .A4(n106), .Y(n90) );
  AND2X1_HVT U147 ( .A1(n90), .A2(n150), .Y(n91) );
  OA222X1_HVT U148 ( .A1(n108), .A2(n92), .A3(n108), .A4(n156), .A5(
        operand_b[5]), .A6(n91), .Y(n94) );
  OA221X1_HVT U149 ( .A1(operand_b[5]), .A2(n92), .A3(n108), .A4(n91), .A5(
        n162), .Y(n93) );
  OA222X1_HVT U150 ( .A1(n105), .A2(n115), .A3(n105), .A4(n94), .A5(
        operand_a[5]), .A6(n93), .Y(n95) );
  NAND3X0_HVT U151 ( .A1(n97), .A2(n96), .A3(n95), .Y(alu_result[5]) );
  OA22X1_HVT U152 ( .A1(n99), .A2(n126), .A3(n175), .A4(n98), .Y(n118) );
  AND2X1_HVT U153 ( .A1(n101), .A2(n100), .Y(n103) );
  AND2X1_HVT U154 ( .A1(n103), .A2(n102), .Y(n104) );
  OA22X1_HVT U155 ( .A1(n146), .A2(n111), .A3(n104), .A4(n145), .Y(n117) );
  AOI222X1_HVT U156 ( .A1(n106), .A2(n105), .A3(n106), .A4(n108), .A5(n105), 
        .A6(n108), .Y(n128) );
  OA221X1_HVT U162 ( .A1(operand_b[6]), .A2(n112), .A3(n111), .A4(n110), .A5(
        n162), .Y(n113) );
  NAND2X0_HVT U165 ( .A1(operand_a[5]), .A2(n119), .Y(n174) );
  AND3X1_HVT U166 ( .A1(n121), .A2(n120), .A3(n174), .Y(n127) );
  MUX41X1_HVT U167 ( .A1(n125), .A3(n124), .A2(n167), .A4(n123), .S0(n215), 
        .S1(n122), .Y(n144) );
  OA22X1_HVT U168 ( .A1(n145), .A2(n127), .A3(n126), .A4(n144), .Y(n143) );
  OA22X1_HVT U169 ( .A1(n153), .A2(n180), .A3(n147), .A4(n183), .Y(n140) );
  OR2X1_HVT U170 ( .A1(n184), .A2(n140), .Y(n190) );
  AND2X1_HVT U171 ( .A1(n190), .A2(n131), .Y(n136) );
  OA22X1_HVT U172 ( .A1(n133), .A2(n147), .A3(n153), .A4(n132), .Y(n134) );
  AO221X1_HVT U178 ( .A1(n162), .A2(operand_b[7]), .A3(n162), .A4(n140), .A5(
        operand_a[7]), .Y(n141) );
  OA22X1_HVT U180 ( .A1(n146), .A2(n164), .A3(n145), .A4(n144), .Y(n179) );
  OA22X1_HVT U181 ( .A1(n148), .A2(n153), .A3(n147), .A4(n149), .Y(n165) );
  NAND2X0_HVT U182 ( .A1(n187), .A2(n149), .Y(n151) );
  AND2X1_HVT U183 ( .A1(n151), .A2(n150), .Y(n155) );
  OR2X1_HVT U184 ( .A1(n153), .A2(n152), .Y(n154) );
  AND2X1_HVT U185 ( .A1(n155), .A2(n154), .Y(n163) );
  OA222X1_HVT U186 ( .A1(n164), .A2(n165), .A3(n164), .A4(n156), .A5(
        operand_b[3]), .A6(n163), .Y(n157) );
  AND2X1_HVT U187 ( .A1(n158), .A2(n157), .Y(n161) );
  OR2X1_HVT U188 ( .A1(n175), .A2(n159), .Y(n160) );
  AND2X1_HVT U189 ( .A1(n161), .A2(n160), .Y(n168) );
  OA221X1_HVT U190 ( .A1(operand_b[3]), .A2(n165), .A3(n164), .A4(n163), .A5(
        n162), .Y(n166) );
  AO22X1_HVT U191 ( .A1(operand_a[3]), .A2(n168), .A3(n167), .A4(n166), .Y(
        n178) );
  NAND4X0_HVT U192 ( .A1(n170), .A2(operand_b[2]), .A3(n169), .A4(operand_a[7]), .Y(n177) );
  NAND2X0_HVT U193 ( .A1(operand_a[6]), .A2(n171), .Y(n172) );
  OA222X1_HVT U194 ( .A1(n175), .A2(n174), .A3(n175), .A4(n173), .A5(n175), 
        .A6(n172), .Y(n176) );
  NAND4X0_HVT U195 ( .A1(n179), .A2(n178), .A3(n177), .A4(n176), .Y(
        alu_result[3]) );
  NAND2X0_LVT U196 ( .A1(n184), .A2(n180), .Y(n181) );
  NAND3X0_HVT U197 ( .A1(n182), .A2(operand_a[7]), .A3(n181), .Y(n189) );
  NAND3X0_HVT U199 ( .A1(n187), .A2(n186), .A3(n185), .Y(n188) );
  NAND3X0_HVT U200 ( .A1(n189), .A2(n190), .A3(n188), .Y(carry_flag) );
  OR3X1_HVT U201 ( .A1(alu_result[4]), .A2(alu_result[0]), .A3(alu_result[1]), 
        .Y(n191) );
  INVX1_RVT U3 ( .A(n39), .Y(n42) );
  AO22X1_HVT U14 ( .A1(n164), .A2(operand_a[3]), .A3(n209), .A4(n149), .Y(n88)
         );
  INVX0_HVT U18 ( .A(n130), .Y(n205) );
  NBUFFX2_HVT U24 ( .A(operand_b[0]), .Y(n215) );
  NAND2X0_HVT U25 ( .A1(n184), .A2(n183), .Y(n185) );
  INVX0_HVT U26 ( .A(operand_b[7]), .Y(n184) );
  AND2X1_HVT U27 ( .A1(n213), .A2(n212), .Y(n207) );
  OR2X1_HVT U28 ( .A1(n195), .A2(n196), .Y(alu_result[4]) );
  NAND2X0_HVT U36 ( .A1(n215), .A2(n124), .Y(n193) );
  INVX0_HVT U39 ( .A(operand_a[4]), .Y(n201) );
  OAI21X1_HVT U43 ( .A1(n186), .A2(n156), .A3(n146), .Y(n194) );
  NAND2X0_HVT U70 ( .A1(n78), .A2(n76), .Y(n195) );
  INVX0_HVT U126 ( .A(n147), .Y(n187) );
  NAND2X0_HVT U130 ( .A1(n77), .A2(n75), .Y(n196) );
  INVX0_HVT U131 ( .A(n66), .Y(n202) );
  NOR2X1_HVT U138 ( .A1(n186), .A2(n219), .Y(n197) );
  NAND2X0_HVT U157 ( .A1(n218), .A2(n217), .Y(n198) );
  NOR2X0_LVT U158 ( .A1(n199), .A2(n194), .Y(n138) );
  NOR2X0_LVT U159 ( .A1(n137), .A2(operand_a[7]), .Y(n199) );
  AND2X1_LVT U160 ( .A1(n134), .A2(n150), .Y(n137) );
  AO21X1_LVT U161 ( .A1(n203), .A2(n202), .A3(n200), .Y(n106) );
  AND2X1_LVT U163 ( .A1(n89), .A2(n201), .Y(n200) );
  INVX1_LVT U164 ( .A(n216), .Y(n203) );
  NOR4X1_LVT U173 ( .A1(n191), .A2(n211), .A3(n210), .A4(alu_result[7]), .Y(
        zero_flag) );
  OR2X1_LVT U174 ( .A1(n197), .A2(n198), .Y(alu_result[7]) );
  AND2X1_LVT U175 ( .A1(operand_b[0]), .A2(operand_a[0]), .Y(n39) );
  AO22X1_LVT U176 ( .A1(operand_a[1]), .A2(n122), .A3(n193), .A4(n204), .Y(n63) );
  OR2X1_LVT U177 ( .A1(operand_a[1]), .A2(n122), .Y(n204) );
  AND2X1_LVT U179 ( .A1(n112), .A2(n156), .Y(n214) );
  OA22X1_LVT U198 ( .A1(n153), .A2(n206), .A3(n205), .A4(n147), .Y(n112) );
  INVX1_LVT U202 ( .A(n128), .Y(n206) );
  OAI21X2_LVT U203 ( .A1(n129), .A2(n208), .A3(n207), .Y(alu_result[6]) );
  AND2X1_LVT U204 ( .A1(n114), .A2(n115), .Y(n208) );
  OR2X1_LVT U205 ( .A1(operand_a[3]), .A2(n164), .Y(n209) );
  OR2X1_LVT U206 ( .A1(alu_result[2]), .A2(alu_result[3]), .Y(n210) );
  OR2X1_LVT U207 ( .A1(alu_result[5]), .A2(alu_result[6]), .Y(n211) );
  OA21X1_LVT U208 ( .A1(n66), .A2(n153), .A3(n68), .Y(n69) );
  OA22X1_RVT U209 ( .A1(n153), .A2(n128), .A3(n147), .A4(n130), .Y(n109) );
  AND2X1_HVT U210 ( .A1(n117), .A2(n118), .Y(n212) );
  OR2X1_HVT U211 ( .A1(operand_a[6]), .A2(n113), .Y(n213) );
  FADDX1_HVT U212 ( .A(operand_a[4]), .B(n89), .CI(n88), .CO(n107) );
  FADDX1_HVT U213 ( .A(operand_a[2]), .B(n64), .CI(n63), .CO(n149) );
  OA22X1_HVT U214 ( .A1(n111), .A2(n214), .A3(operand_b[6]), .A4(n110), .Y(
        n114) );
  AND2X1_HVT U215 ( .A1(n109), .A2(n150), .Y(n110) );
  FADDX1_HVT U216 ( .A(operand_a[3]), .B(operand_b[3]), .CI(n152), .CO(n66) );
  OR2X1_HVT U217 ( .A1(operand_b[7]), .A2(n137), .Y(n135) );
  AND2X1_HVT U218 ( .A1(operand_b[4]), .A2(operand_a[4]), .Y(n216) );
  OR2X1_HVT U219 ( .A1(n184), .A2(n138), .Y(n217) );
  AND2X1_HVT U220 ( .A1(n141), .A2(n143), .Y(n218) );
  AND2X1_HVT U221 ( .A1(n136), .A2(n135), .Y(n219) );
  OAI22X1_HVT U222 ( .A1(n108), .A2(operand_a[5]), .A3(n220), .A4(n107), .Y(
        n130) );
  AND2X1_HVT U223 ( .A1(n108), .A2(operand_a[5]), .Y(n220) );
endmodule


module top_module ( clk, rst_n, pc_en, branch_target, zero_flag, carry_flag, 
        alu_result );
  input [15:0] branch_target;
  output [7:0] alu_result;
  input clk, rst_n, pc_en;
  output zero_flag, carry_flag;
  wire   imm_sel, branch_en, reg_wr_en, n3;
  wire   [15:0] addr;
  wire   [7:0] operand_a;
  wire   [7:0] operand_b;
  wire   [7:0] imm;
  wire   [7:0] rs2_data;
  wire   [15:0] instr;
  wire   [3:0] rd_addr;
  wire   [3:0] rs1_addr;
  wire   [3:0] rs2_addr;
  wire   [3:0] alu_op;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  INVX0_HVT U11 ( .A(imm_sel), .Y(n3) );
  AO22X1_HVT U17 ( .A1(imm_sel), .A2(imm[4]), .A3(n3), .A4(rs2_data[4]), .Y(
        operand_b[4]) );
  AO22X1_HVT U18 ( .A1(imm_sel), .A2(imm[5]), .A3(n3), .A4(rs2_data[5]), .Y(
        operand_b[5]) );
  AO22X1_HVT U19 ( .A1(imm_sel), .A2(imm[6]), .A3(n3), .A4(rs2_data[6]), .Y(
        operand_b[6]) );
  AO22X1_HVT U20 ( .A1(imm_sel), .A2(imm[7]), .A3(n3), .A4(rs2_data[7]), .Y(
        operand_b[7]) );
  pc dut ( .clk(clk), .rst_n(rst_n), .pc_en(pc_en), .branch_en(branch_en), 
        .branch_target(branch_target), .pc_out(addr) );
  instruction_memory dut2 ( .addr(addr), .instr({instr[15:7], 
        SYNOPSYS_UNCONNECTED__0, instr[5:0]}) );
  decoder dut3 ( .instr({instr[15:7], 1'b0, instr[5:0]}), .zero_flag(zero_flag), .rd_addr(rd_addr), .rs1_addr({rs1_addr[3], SYNOPSYS_UNCONNECTED__1, 
        rs1_addr[1:0]}), .rs2_addr(rs2_addr), .imm(imm), .alu_op(alu_op), 
        .reg_wr_en(reg_wr_en), .imm_sel(imm_sel), .branch_en(branch_en) );
  reg_file dut4 ( .clk(clk), .rst_n(rst_n), .wr_en(reg_wr_en), .rd_addr(
        rd_addr), .rs1_addr({rs1_addr[3], 1'b0, rs1_addr[1:0]}), .rs2_addr(
        rs2_addr), .wr_data(alu_result), .rs1_data(operand_a), .rs2_data(
        rs2_data) );
  alu dut5 ( .alu_op(alu_op), .operand_a(operand_a), .operand_b(operand_b), 
        .alu_result(alu_result), .zero_flag(zero_flag), .carry_flag(carry_flag) );
  AO22X1_RVT U16 ( .A1(imm_sel), .A2(imm[3]), .A3(n3), .A4(rs2_data[3]), .Y(
        operand_b[3]) );
  AO22X1_RVT U14 ( .A1(imm_sel), .A2(imm[2]), .A3(n3), .A4(rs2_data[2]), .Y(
        operand_b[2]) );
  AO22X1_LVT U12 ( .A1(imm_sel), .A2(imm[1]), .A3(rs2_data[1]), .A4(n3), .Y(
        operand_b[1]) );
  AO22X1_HVT U13 ( .A1(imm_sel), .A2(imm[0]), .A3(rs2_data[0]), .A4(n3), .Y(
        operand_b[0]) );
endmodule

