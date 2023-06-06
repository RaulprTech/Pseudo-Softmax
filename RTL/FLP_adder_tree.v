`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2023 12:35:07
// Design Name: 
// Module Name: FLP_adder_tree
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "FLP_adder.v"
`include "First_stage_FLP_adder.v"

module FLP_adder_tree(
  input clk,
  input [7:0] x1,
  input [7:0] x2,
  input [7:0] x3,
  input [7:0] x4,
  input [7:0] x5,
  input [7:0] x6,
  input [7:0] x7,
  input [7:0] x8,
  input [7:0] x9,
  input [7:0] x10,
  output [8:0] exp,
  output [7:0] mant
    );
  //
  // FLP_Adder solo recibe mantisas de 8 bits, pero aqui se mandan de 9
  //
  
  wire [8:0] exp1_n1;
  wire [7:0] mant1_n1;
  wire [8:0] exp2_n1;
  wire [7:0] mant2_n1;
  
  wire [8:0] exp1_n2;
  wire [7:0] mant1_n2;
  wire [8:0] exp2_n2;
  wire [7:0] mant2_n2;
  
  wire [8:0] exp1_n3;
  wire [7:0] mant1_n3;
  wire [8:0] exp2_n3;
  wire [7:0] mant2_n3;
  
  wire [8:0] exp1_n4;
  wire [7:0] mant1_n4;
  wire [8:0] exp2_n4;
  wire [7:0] mant2_n4;
  
  wire [8:0] exp1_n5;
  wire [7:0] mant1_n5;
  

  // Instancia de FLP adder en primer nivel
  First_stage_FLP_adder adder_first1(
    .exp1(x1),
    .exp2(x2),
    .exp(exp1_n1),
    .mant(mant1_n1)
  );
  
    // Instancia de FLP adder en primer nivel
  First_stage_FLP_adder adder_first2(
    .exp1(x3),
    .exp2(x4),
    .exp(exp2_n1),
    .mant(mant2_n1)
  );
  
    // Instancia de FLP adder en primer nivel
  First_stage_FLP_adder adder_first3(
    .exp1(x5),
    .exp2(x6),
    .exp(exp1_n2),
    .mant(mant1_n2)
  );
  
      // Instancia de FLP adder en primer nivel
  First_stage_FLP_adder adder_first4(
    .exp1(x7),
    .exp2(x8),
    .exp(exp1_n3),
    .mant(mant1_n3)
  );
  
      // Instancia de FLP adder en primer nivel
  First_stage_FLP_adder adder_first5(
    .exp1(x9),
    .exp2(x10),
    .exp(exp1_n4),
    .mant(mant1_n4)
  );
  
    // Instancia de FLP adder de segundo nivel
  FLP_adder adder1(
    .clk(clk),
    .exp1(exp1_n1[7:0]),
    .exp2(exp2_n1[7:0]),
    .mant1(mant1_n1),
    .mant2(mant2_n1),
    .exp(exp2_n2),
    .mant(mant2_n2)
  );
  
      // Instancia de FLP adder de tercer nivel
  FLP_adder adder2(
    .clk(clk),
    .exp1(exp1_n2[7:0]),
    .exp2(exp2_n2[7:0]),
    .mant1(mant1_n2),
    .mant2(mant2_n2),
    .exp(exp2_n3),
    .mant(mant2_n3)
  );
  
        // Instancia de FLP adder de cuarto nivel
  FLP_adder adder3(
    .clk(clk),
    .exp1(exp1_n3[7:0]),
    .exp2(exp2_n3[7:0]),
    .mant1(mant1_n3),
    .mant2(mant2_n3),
    .exp(exp2_n4),
    .mant(mant2_n4)
  );
  
  
        // Instancia de FLP adder de quinto nivel
  FLP_adder adder4(
    .clk(clk),
    .exp1(exp1_n4[7:0]),
    .exp2(exp2_n4[7:0]),
    .mant1(mant1_n4),
    .mant2(mant2_n4),
    .exp(exp1_n5),
    .mant(mant1_n5)
  );
  
  assign exp = exp1_n5;
  assign mant = mant1_n5;

endmodule
