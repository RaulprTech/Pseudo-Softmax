`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2023 03:10:00
// Design Name: 
// Module Name: FLP_adder_tree_tb
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


module FLP_adder_tree_tb;
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
  
  wire [8:0] exp;
  wire [7:0] mant;

  FLP_adder_tree dut(
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
    .exp(exp),
    .mant(mant)
  );

  always #5 clk = ~clk;

  initial begin
    // Test case
    clk=0;
    x1 = 8'h01;
    x2 = 8'h02;
    x3 = 8'h03;
    x4 = 8'h04;
    x5 = 8'h05;
    x6 = 8'h06;
    x7 = 8'h07;
    x8 = 8'h08;
    x9 = 8'h09;
    x10 = 8'h0A;

    #10;

    // Check results
    $display("exp = %d", exp);
    $display("mant = %d", mant);
    
    // Add more test cases here
  end

endmodule

