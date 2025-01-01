`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2020 22:17:54
// Design Name: 
// Module Name: Mux4to1_tb
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


module Mux4to1_tb();
reg A,B,C,D;
reg [1:0] S;
wire Y;
Mux4to1 uut (.A(A),.B(B),.C(C),.D(D),.S(S),.Y(Y));
initial begin
A = 1'b1;
B = 1'b0;
C = 1'b0;
D = 1'b1;
S = 2'b00; //A
#10 S = 2'b01; //B
#10 S = 2'b10; //C
#10 S = 2'b11; //D
end
endmodule
