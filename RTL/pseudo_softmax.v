`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2023 19:37:12
// Design Name: 
// Module Name: pseudo_softmax
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

`include "FLP_adder_tree.v"
`include "subtractors_array.v"
`include "reciprocal_pwl.v"

//module pseudo_softmax #(NUM_INPUTS=10, DATA_WIDTH=8)(
module pseudo_softmax(

//  input start,
//  input finished,
  input clk,
//  input [NUM_INPUTS*DATA_WIDTH-1:0] input_bus,
  // mse, diferencia relativa
  // softmax 32 bits
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
  output [7:0] mant_out,
  output [7:0] exp_out1,
  output [7:0] exp_out2,
  output [7:0] exp_out3,
  output [7:0] exp_out4,
  output [7:0] exp_out5,
  output [7:0] exp_out6,
  output [7:0] exp_out7,
  output [7:0] exp_out8,
  output [7:0] exp_out9,
  output [7:0] exp_out10  

    );
  
  wire [8:0] exp_sum;
  wire [7:0] mant_sum;
    
  FLP_adder_tree adder_tree(
    .clk(clk),
    .x1(x1),
    .x2(x2),
    .x3(x3),
    .x4(x4),
    .x5(x5),
    .x6(x6),
    .x7(x7),
    .x8(x8),
    .x9(x9),
    .x10(x10),
    .exp(exp_sum),
    .mant(mant_sum)
  );
  
  subtractors_array subtractors(
    .x1(x1),
    .x2(x2),
    .x3(x3),
    .x4(x4),
    .x5(x5),
    .x6(x6),
    .x7(x7),
    .x8(x8),
    .x9(x9),
    .x10(x10),
    .exp_sum(exp_sum),
    .exp_out1(exp_out1),
    .exp_out2(exp_out2),
    .exp_out3(exp_out3),
    .exp_out4(exp_out4),
    .exp_out5(exp_out5),
    .exp_out6(exp_out6),
    .exp_out7(exp_out7),
    .exp_out8(exp_out8),
    .exp_out9(exp_out9),
    .exp_out10(exp_out10)
  );
  
  reciprocal_pwl pwl(
    .clk(clk),
    .in(mant_sum),
    .out(mant_out)
  );
  
endmodule
