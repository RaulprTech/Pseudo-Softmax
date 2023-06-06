`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2023 21:02:27
// Design Name: 
// Module Name: subtractors_array_tb
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


module subtractors_array_tb;

reg [8:0] exp_sum;
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
    wire [8:0] exp_out1;
    wire [8:0] exp_out2;
    wire [8:0] exp_out3;
    wire [8:0] exp_out4;
    wire [8:0] exp_out5;
    wire [8:0] exp_out6;
    wire [8:0] exp_out7;
    wire [8:0] exp_out8;
    wire [8:0] exp_out9;
    wire [8:0] exp_out10;

    subtractors_array dut (
        .exp_sum(exp_sum),
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
        // Test case 1
        exp_sum = 9'd50; 
        x1 = 8'd100; 
        x2 = 8'd75; 
        x3 = 8'd25; 
        x4 = 8'd37; 
        x5 = 8'd62; 
        x6 = 8'd87; 
        x7 = 8'd112; 
        x8 = 8'd125; 
        x9 = 8'd50; 
        x10 = 8'd45;

        #10;

        $display("Test case 1 results:");
        $display("exp_sum=%d, x1=%d, exp_out1=%d", exp_sum, x1, exp_out1);
        $display("exp_sum=%d, x2=%d, exp_out2=%d", exp_sum, x2, exp_out2);
        $display("exp_sum=%d, x3=%d, exp_out3=%d", exp_sum, x3, exp_out3);
        $display("exp_sum=%d, x4=%d, exp_out4=%d", exp_sum, x4, exp_out4);
        $display("exp_sum=%d, x5=%d, exp_out5=%d", exp_sum, x5, exp_out5);
        $display("exp_sum=%d, x6=%d, exp_out6=%d", exp_sum, x6, exp_out6);
        $display("exp_sum=%d, x7=%d, exp_out7=%d", exp_sum, x7, exp_out7);
        $display("exp_sum=%d, x8=%d, exp_out8=%d", exp_sum, x8, exp_out8);
        $display("exp_sum=%d, x9=%d, exp_out9=%d", exp_sum, x9, exp_out9);
        $display("exp_sum=%d,x10=%d ,exp_out10=%d",exp_sum,x10 ,exp_out10);
        
    end
endmodule
