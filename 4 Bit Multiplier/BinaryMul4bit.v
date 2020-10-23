`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2020 14:59:18
// Design Name: 
// Module Name: BinaryMul4bit
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


module BinaryMul4bit(
    input [3:0] A,
    input [3:0] B,
    output [7:0] M
    );
    wire [3:0] s1,s2;
    wire c1,c2;
    RCA RCA1 (.A({1'b0, A[3:1]& {3{B[0]}}}), .B({4{B[1]}}&A), .C_in(1'b0), .Sum(s1), .C_out(c1));
    RCA RCA2 (.A({c1, s1[3:1]}), .B({4{B[2]}}&A), .C_in(1'b0), .Sum(s2), .C_out(c2));
    RCA RCA3 (.A({c2, s2[3:1]}), .B({4{B[3]}}&A), .C_in(1'b0), .Sum(M[6:3]), .C_out(M[7]));
    assign M[2:0] = {s2[0], s1[0], A[0]&B[0]};
endmodule
