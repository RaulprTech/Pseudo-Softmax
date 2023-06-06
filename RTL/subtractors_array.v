`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2023 13:51:52
// Design Name: 
// Module Name: subtractors_array
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


module subtractors_array(
    input [8:0] exp_sum,
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
    output reg [8:0] exp_out1,
    output reg [8:0] exp_out2,
    output reg [8:0] exp_out3,
    output reg [8:0] exp_out4,
    output reg [8:0] exp_out5,
    output reg [8:0] exp_out6,
    output reg [8:0] exp_out7,
    output reg [8:0] exp_out8,
    output reg [8:0] exp_out9,
    output reg [8:0] exp_out10
);

always @* begin
    exp_out1 = x1 - exp_sum;
    exp_out2 = x2 - exp_sum;
    exp_out3 = x3 - exp_sum;
    exp_out4 = x4 - exp_sum;
    exp_out5 = x5 - exp_sum;
    exp_out6 = x6 - exp_sum;
    exp_out7 = x7 - exp_sum;
    exp_out8 = x8 - exp_sum;
    exp_out9 = x9 - exp_sum;
    exp_out10 = x10 - exp_sum;
end
endmodule