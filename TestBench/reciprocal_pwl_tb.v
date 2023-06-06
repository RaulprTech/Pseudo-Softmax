`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2023 17:40:50
// Design Name: 
// Module Name: reciprocal_pwl_tb
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
//`include "C:\Users\raul_\OneDrive - CINVESTAV\Documentos\HDL projects\Vivado\Pseudo-softmax\Pseudo-softmax.srcs\sources_1\new\reciprocal_pwl.v"

module reciprocal_pwl_tb;

    reg clk;
    reg [7:0] in;
    wire [7:0] out;
    
    always #5 clk = ~clk;
    
    initial begin
        clk=0;
        in = 8'h02;
        #10;
        in = 8'h03;
        #10;
        in = 8'h05;
        #10;
        $finish;
    end
    
    reciprocal_pwl dut(
        .clk(clk),
        .in(in),
        .out(out)
    );
    
endmodule
