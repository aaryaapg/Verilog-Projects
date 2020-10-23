`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2020 12:46:20
// Design Name: 
// Module Name: Vedic256
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


module Vedic256(
    input [255:0] A,B,
    output [511:0] P
    );
    wire [255:0] w0, w1, w2, w3, s_rca1, s_rca2, s_rca3;
    wire c_rca1, c_rca2, c_rca3;
    Vedic128 M0 (.A(A[127:0]), .B(B[127:0]), .P(w0));
    Vedic128 M1 (.A(A[127:0]), .B(B[255:128]), .P(w1));
    Vedic128 M2 (.A(A[255:128]), .B(B[127:0]), .P(w2));
    Vedic128 M3 (.A(A[255:128]), .B(B[255:128]), .P(w3));
    RippleN #(.n(256)) RCA_1 (.A(w1), .B(w2), .S(s_rca1),.C(c_rca1));
    RippleN #(.n(256)) RCA_2 (.A({{128{1'b0}}, w0[255:128]}), .B(s_rca1), .S(s_rca2),.C(c_rca2));
    RippleN #(.n(256)) RCA_3 (.A({{127{1'b0}}, c_rca1|c_rca2, s_rca2[255:128]}), .B(w3), .S(s_rca3), .C(c_rca3));
    assign P = {s_rca3, s_rca2[127:0], w0[127:0]};
endmodule
