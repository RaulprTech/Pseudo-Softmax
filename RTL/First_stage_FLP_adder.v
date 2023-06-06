
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2023 13:14:34
// Design Name: 
// Module Name: 1st_stage_FLP_adder
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

`include "abs.v"
`include "shift_reg.v"


module First_stage_FLP_adder(
  input [7:0] exp1,
  input [7:0] exp2,
  output [8:0] exp,
  output [7:0] mant
);

  wire [8:0] sum;
  wire [7:0] max_exp;
  wire [8:0] abs_value;
  wire [8:0] shifted_value;
  wire ovf;

  
  // Resta de exponentes
  assign sum = exp1 - exp2;

  // Instancia de modulo de valor absoluto
  absolute_value abs(
    .value(sum),
    .abs_value(abs_value)
  );

  // Registro de desplazamiento de abs_value al valor 1
  assign shifted_value = 8'h01 >> abs_value;
  
//  shift_reg reg1(
//    .data_in(abs_value),
//    .shift_in(8'h01),
//    .data_out(shifted_value)
//  );
  

  // Mant es igual a la suma de shifted_value y 1, ovf toma el valor de desbordamiento
  assign {ovf, mant} = shifted_value + 8'h01;
  
  // Mux selecciona el mayor valor de entrada
  assign max_exp = (exp1 >= exp2) ? exp1 : exp2;

  // la salida exp es la suma de max_exp con mant
  assign exp = max_exp + ovf;

endmodule