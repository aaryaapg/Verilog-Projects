`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2020 20:05:25
// Design Name: 
// Module Name: RCA_tb
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


module RCA_tb();
reg [3:0] A;
reg [3:0] B;
reg C_in;
wire C_out;
wire [3:0] Sum;
RCA uut (.A(A), .B(B), .C_in(C_in), .C_out(C_out), .Sum(Sum));
initial begin
A = 4'b0000;
B = 4'b0000;
C_in = 1'b0;
#10 A = 4'b1110; B = 4'b0001; //Ans is 1111, C_out = 0
#10 A = 4'b1000; B = 4'b1111; //Ans is 0111, C_out = 1
#10 A = 4'b1011; B = 4'b1001; //Ans is 0100, C_out = 1
#10 A = 4'b0001; B = 4'b0101; //Ans is 0110, C_out = 0
end
endmodule
