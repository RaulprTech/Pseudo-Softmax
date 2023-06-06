`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2023 01:17:52
// Design Name: 
// Module Name: First_stage_FLP_adder_tb
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


module First_stage_FLP_adder_tb;

  reg [7:0] exp1;
  reg [7:0] exp2;
  wire [8:0] exp;
  wire [7:0] mant;

  First_stage_FLP_adder dut (
    .exp1(exp1),
    .exp2(exp2),
    .exp(exp),
    .mant(mant)
  );

  initial begin
    $monitor("exp1=%d exp2=%d exp=%d mant=%d", exp1, exp2, exp, mant);

    exp1 = 8'd10; exp2 = 8'd5;
    #10;
    exp1 = 8'd20; exp2 = 8'd15;
    #10;
    exp1 = 8'd30; exp2 = 8'd25;
    #10;
    $finish;
  end
endmodule
