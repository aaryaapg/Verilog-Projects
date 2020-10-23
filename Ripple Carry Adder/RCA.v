`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2020 19:54:40
// Design Name: 
// Module Name: RCA
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


module RCA(
    input [3:0] A,
    input [3:0] B,
    input C_in,
    output [3:0] Sum,
    output C_out
    );
    wire c0,c1,c2,c3;
    F_Adder FA0( .A(A[0]), .B(B[0]), .Cin(C_in), .Cout(c0), .S(Sum[0]));
    F_Adder FA1( .A(A[1]), .B(B[1]), .Cin(c0), .Cout(c1), .S(Sum[1]));
    F_Adder FA2( .A(A[2]), .B(B[2]), .Cin(c1), .Cout(c2), .S(Sum[2]));
    F_Adder FA3( .A(A[3]), .B(B[3]), .Cin(c2), .Cout(c3), .S(Sum[3]));
    assign C_out = c3; 
endmodule
