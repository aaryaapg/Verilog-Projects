`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2020 17:47:58
// Design Name: 
// Module Name: RippleN
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


module RippleN
#(parameter n = 4) //Default width is 4 bits
(   input [n-1:0] A,
    input [n-1:0] B,
    output [n-1:0] S,
    output C
    );
   wire [n:0] Carry;
   wire [n-1:0] Sum;
   assign Carry[0] = 1'b0; //Input carry for first full adder is zero
   genvar i;
   generate
   for (i=0; i<n; i=i+1)
      begin
      F_Adder FA_uut( .A(A[i]),
                     .B(B[i]),
                     .Cin(Carry[i]),
                     .Cout(Carry[i+1]),
                     .S(Sum[i])
                     );
      end
  endgenerate
  assign C = Carry[n];
  assign S = Sum;
endmodule
