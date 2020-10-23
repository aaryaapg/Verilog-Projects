`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2020 15:37:12
// Design Name: 
// Module Name: MagComp4bit
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


module MagComp4bit(
    input [3:0] A,
    input [3:0] B,
    output Equal,
    output A_greater,
    output B_greater
    );
    wire [3:0] x;
    assign x = A ~^ B;
    assign Equal = x[3] & x[2] & x[1] & x[0];
    assign A_greater = A[3]&(~B[3]) | x[3]&A[2]&(~B[2]) | x[3]&x[2]&A[1]&(~B[1]) | x[3]&x[2]&x[1]&A[0]&(~B[0]);
    assign B_greater = B[3]&(~A[3]) | x[3]&B[2]&(~A[2]) | x[3]&x[2]&B[1]&(~A[1]) | x[3]&x[2]&x[1]&B[0]&(~A[0]);
endmodule
