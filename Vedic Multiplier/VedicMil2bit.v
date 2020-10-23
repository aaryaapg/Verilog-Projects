`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2020 15:15:23
// Design Name: 
// Module Name: VedicMil2bit
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


module VedicMil2bit(
    input [1:0] A, //2 bit input
    input [1:0] B,
    output [3:0] S //4 bit Solution
    );
    wire c1;
    assign S[0] = A[0] & B[0];
    H_Adder HA1(.a(A[0] & B[1]), .b(A[1] & B[0]), .s(S[1]), .c(c1));
    H_Adder HA2(.a(c1), .b(A[1] & B[1]), .s(S[2]), .c(S[3]));
endmodule
