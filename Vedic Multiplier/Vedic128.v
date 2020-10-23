`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2020 00:46:56
// Design Name: 
// Module Name: Vedic128
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


module Vedic128(
    input [127:0] A,B,
    output [255:0] P
    );
    wire [127:0] w0, w1, w2, w3, s_rca1, s_rca2, s_rca3;
    wire c_rca1, c_rca2, c_rca3;
    Vedic64 M0 (.A(A[63:0]), .B(B[63:0]), .P(w0));
    Vedic64 M1 (.A(A[63:0]), .B(B[127:64]), .P(w1));
    Vedic64 M2 (.A(A[127:64]), .B(B[63:0]), .P(w2));
    Vedic64 M3 (.A(A[127:64]), .B(B[127:64]), .P(w3));
    RippleN #(.n(128)) RCA_1 (.A(w1), .B(w2), .S(s_rca1),.C(c_rca1));
    RippleN #(.n(128)) RCA_2 (.A({{64{1'b0}}, w0[127:64]}), .B(s_rca1), .S(s_rca2),.C(c_rca2));
    RippleN #(.n(128)) RCA_3 (.A({{63{1'b0}}, c_rca1|c_rca2, s_rca2[127:64]}), .B(w3), .S(s_rca3), .C(c_rca3));
    assign P = {s_rca3, s_rca2[63:0], w0[63:0]};
endmodule
