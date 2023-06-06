`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2023 17:23:23
// Design Name: 
// Module Name: pseudo_softmax_tb
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

//`include "C:\Users\raul_\OneDrive - CINVESTAV\Documentos\HDL projects\Vivado\Pseudo-softmax\Pseudo-softmax.srcs\sources_1\new\pseudo_softmax.v"
//`include "..\sources_1\new\pseudo_softmax.v"

module pseudo_softmax_tb;

  reg clk;
  reg [7:0] x1;
  reg [7:0] x2;
  reg [7:0] x3;
  reg [7:0] x4;
  reg [7:0] x5;
  reg [7:0] x6;
  reg [7:0] x7;
  reg [7:0] x8;
  reg [7:0] x9;
  reg [7:0] x10;

  wire [7:0] mant_out;
  wire [7:0] exp_out1;
  wire [7:0] exp_out2;
  wire [7:0] exp_out3;
  wire [7:0] exp_out4;
  wire [7:0] exp_out5;
  wire [7:0] exp_out6;
  wire [7:0] exp_out7;
  wire [7:0] exp_out8;
  wire [7:0] exp_out9;
  wire [7:0] exp_out10;
   

  pseudo_softmax uut (
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
    .mant_out(mant_out),
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

  initial begin
     clk = 1'b0;
     forever #50 clk = ~clk;
  end

  initial begin

    // Test case
    x1 = 8'h01;
    x2 = 8'h03;
    x3 = 8'h05;
    x4 = 8'h07;
    x5 = 8'h11;
    x6 = 8'h33;
    x7 = 8'h02;
    x8 = 8'h25;
    x9 = 8'h12;
    x10 = 8'h06;
    #100;
    $display("Result: %d", mant_out);
    $display("Result: %d", exp_out1);
    $display("Result: %d", exp_out2);
    $display("Result: %d", exp_out3);
    $display("Result: %d", exp_out4);
    $display("Result: %d", exp_out5);
    $display("Result: %d", exp_out6);
    $display("Result: %d", exp_out7);
    $display("Result: %d", exp_out8);
    $display("Result: %d", exp_out9);
    $display("Result: %d", exp_out10);
    

   // Compare with result in equation
//   exp_out10 = (2^(exp_out1))* mant_out
   
 end

endmodule
