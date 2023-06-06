`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2023 00:09:25
// Design Name: 
// Module Name: absolute_value_tb
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


module absolute_value_tb;

  reg signed [8:0] value;
  wire [8:0] abs_value;

  absolute_value uut (
    .value(value),
    .abs_value(abs_value)
  );

  initial begin
    // Caso de prueba 1: valor positivo
    value = 9'h00F;
    #100;
    $display("Caso de prueba 1: Valor absoluto de %d es %d", value, abs_value);

    // Caso de prueba 2: valor negativo
    value = -9'h0DF;
    #100;
    $display("Caso de prueba 2: Valor absoluto de %d es %d", value, abs_value);

    // Caso de prueba 3: cero
    value = 9'h000;
    #100;
    $display("Caso de prueba 3: Valor absoluto de %d es %d", value, abs_value);
    
    // Caso de prueba 4: valor positivo
    value = -9'h011;
    #100;
    $display("Caso de prueba 4: Valor absoluto de %d es %d", value, abs_value);

    // Caso de prueba 5: valor negativo
    value = -9'h05D;
    #100;
    $display("Caso de prueba 5: Valor absoluto de %d es %d", value, abs_value);

  end

endmodule