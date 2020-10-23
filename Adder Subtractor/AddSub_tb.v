`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2020 01:28:11
// Design Name: 
// Module Name: AddSub_tb
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


module AddSub_tb();
reg [3:0] A;
reg [3:0] B;
reg M;
wire C_out, ov;
wire [3:0] Sum;
AddSub uut (.A(A), .B(B), .M(M), .Sum(Sum), .C_out(C_out), .ov(ov));
initial begin
A = 4'b0000;
B = 4'b0000;
M = 1'b0;
#10 A = 4'b0101;
    B = 4'b1010; //1111
#10 M = 1'b1;
    A = 4'b1001;
    B = 4'b0101; //0100
#10 M = 1'b0;
    A = 4'b1111;
    B = 4'b1111; //1110 and C_out = 1 and ov = 1
#10 M = 1'b1;
    A = 4'b1010;
    B = 4'b1010; //0000 
end
endmodule
