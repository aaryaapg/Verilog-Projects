`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2020 20:02:13
// Design Name: 
// Module Name: Vedic4
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
module Vedic4(
    input [3:0] A,
    input [3:0] B,
    output [7:0] P
    );
    wire [3:0] w0, w1, w2, w3, s_rca1, s_rca2, s_rca3;
    wire c_rca1, c_rca2, c_rca3;
    VedicMil2bit M0 (.A(A[1:0]), .B(B[1:0]), .S(w0));
    VedicMil2bit M1 (.A(A[1:0]), .B(B[3:2]), .S(w1));
    VedicMil2bit M2 (.A(A[3:2]), .B(B[1:0]), .S(w2));
    VedicMil2bit M3 (.A(A[3:2]), .B(B[3:2]), .S(w3));
    RippleN #(.n(4)) RCA_1 (.A(w1), .B(w2), .S(s_rca1),.C(c_rca1));
    RippleN #(.n(4)) RCA_2 (.A({{2{1'b0}}, w0[3:2]}), .B(s_rca1), .S(s_rca2),.C(c_rca2));
    RippleN #(.n(4)) RCA_3 (.A({1'b0, c_rca1|c_rca2, s_rca2[3:2]}), .B(w3), .S(s_rca3), .C(c_rca3));
    assign P = {s_rca3, s_rca2[1:0], w0[1:0]};
endmodule
