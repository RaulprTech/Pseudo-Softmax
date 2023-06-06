`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2023 17:50:37
// Design Name: 
// Module Name: shift_reg_tb
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



module shift_reg_tb();
  reg [7:0] data_in;
  reg [7:0] shift_in;
  wire [7:0] data_out;
  reg clk;


  shift_reg uut (
    .clk(clk),
    .data_in(data_in),
    .shift_in(shift_in),
    .data_out(data_out)
  );

  always #5 clk = ~clk;
  
  
  initial begin
    // Inicializamos las entradas
    clk=0;
    data_in = 8'b01010101;
    shift_in = 8'b0;

    // Esperamos un poco para que se estabilice el circuito
    #10;

    // Comprobamos que la salida sea correcta
    if (data_out !== 8'b01010101) begin
      $display("Error: el valor de data_out no es el esperado.");
      $finish;
    end

    // Cambiamos la entrada shift_in
    shift_in = 8'b1;

    // Esperamos un poco para que se estabilice el circuito
    #10;

    // Comprobamos que la salida sea correcta
    if (data_out !== 8'b00101010) begin
      $display("Error: el valor de data_out no es el esperado.");
      $finish;
    end

    // Cambiamos la entrada data_in
    data_in = 8'b11111111;

    // Esperamos un poco para que se estabilice el circuito
    #10;

    // Comprobamos que la salida sea correcta
    if (data_out !== 8'b11111111) begin
      $display("Error: el valor de data_out no es el esperado.");
      $finish;
    end

    // Si llegamos hasta aquí, todo está bien
    $display("Testbench completado con éxito.");
    $finish;

  end

endmodule

