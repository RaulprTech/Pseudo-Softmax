`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2023 02:07:42
// Design Name: 
// Module Name: FLP_adder_tb
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


module FLP_adder_tb;
  reg clk;
  reg [7:0] exp1;
  reg [7:0] exp2;
  reg [7:0] mant1;
  reg [7:0] mant2;
  wire [8:0] exp;
  wire [7:0] mant;

    FLP_adder dut (
    .clk(clk),
    .exp1(exp1),
    .exp2(exp2),
    .mant1(mant1),
    .mant2(mant2),
    .exp(exp),
    .mant(mant)
  );
  
  always #50 clk = ~clk;

  initial begin
//    $monitor("exp1=%d exp2=%d mant1=%d mant2=%d exp=%d mant=%d", exp1, exp2, mant1, mant2, exp, mant);
    clk=0;
    exp1 = 8'd10; 
    exp2 = 8'd5;
    mant1 = 8'd4; 
    mant2 = 8'd3;
    #100;
    exp1 = 8'd20; 
    exp2 = 8'd15;
    mant1 = 8'd3; 
    mant2 = 8'd5;
    #100;
    exp1 = 8'd30; 
    exp2 = 8'd25;
    mant1 = 8'd24; 
    mant2 = 8'd10;
    #100;
//    $finish;
  end
  
  
endmodule
