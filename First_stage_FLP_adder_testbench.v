`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2023 14:11:22
// Design Name: 
// Module Name: First_stage_FLP_adder_testbench
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


module First_stage_FLP_adder_testbench;

  // Inputs
  reg [7:0] exp1;
  reg [7:0] exp2;

  // Outputs
  wire [8:0] exp;
  wire [8:0] mant;

  // Instantiate the module being tested
  First_stage_FLP_adder dut(
    .exp1(exp1),
    .exp2(exp2),
    .exp(exp),
    .mant(mant)
  );

  // Clock generation
  reg clk = 0;
  always #5 clk = ~clk;

  // Test stimulus
  initial begin
    exp1 = 8'b00000000;
    exp2 = 8'b00000000;
    #10;

    exp1 = 8'b01010101;
    exp2 = 8'b10101010;
    #10;

    exp1 = 8'b11111110;
    exp2 = 8'b00000001;
    #10;

    // Add more test cases as needed
  end

  // Assertions
  always @(posedge clk) begin
    $display("exp1=%h exp2=%h exp=%h mant=%h", exp1, exp2, exp, mant);

    // Add assertions here
  end

endmodule

