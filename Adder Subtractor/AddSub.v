`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2020 00:54:17
// Design Name: 
// Module Name: AddSub
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


module AddSub(
    input [3:0] A,B,
    input M, //M = Mode (Addn or Subn) is decidded by carry input. M is actually C_in
    output [3:0] Sum,
    output C_out, ov //ov = overflow flag
    );
    wire c0,c1,c2;
    wire [3:0] b;
    assign b = B ^ {4{M}};
    F_Adder FA0 (.A(A[0]), .B(b[0]), .Cin(M), .Cout(c0), .S(Sum[0]));
    F_Adder FA1 (.A(A[1]), .B(b[1]), .Cin(c0), .Cout(c1), .S(Sum[1]));
    F_Adder FA2 (.A(A[2]), .B(b[2]), .Cin(c1), .Cout(c2), .S(Sum[2]));
    F_Adder FA3 (.A(A[3]), .B(b[3]), .Cin(c2), .Cout(C_out), .S(Sum[3]));
    assign ov = C_out^c2;
endmodule
