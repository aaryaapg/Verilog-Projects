`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2020 17:50:42
// Design Name: 
// Module Name: RippleN_tb
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
module RippleN_tb();
parameter n = 4; //Default Value is 4
reg [n-1:0] A;
reg [n-1:0] B;
wire C;
wire [n-1:0] S;
RippleN #(.n(4)) uut(.A(A), .B(B), .C(C), .S(S));
initial begin
A = 4'b0000;
B = 4'b0000;
#10 A = 4'b1110; B = 4'b0001; //Ans is 1111, C_out = 0
#10 A = 4'b1000; B = 4'b1111; //Ans is 0111, C_out = 1
#10 A = 4'b1011; B = 4'b1001; //Ans is 0100, C_out = 1
#10 A = 4'b0001; B = 4'b0101; //Ans is 0110, C_out = 0
end
endmodule
