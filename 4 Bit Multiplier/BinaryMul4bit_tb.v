`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2020 15:43:02
// Design Name: 
// Module Name: BinaryMul4bit_tb
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


module BinaryMul4bit_tb();
reg [3:0] A,B;
wire [7:0] M;
BinaryMul4bit uut (.A(A), .B(B), .M(M));
initial begin
    A = 4'b0000;
    B = 4'b0000;
    #10 A = 4'b0000; B = 4'b0100;
    #10 A = 4'b1100; B = 4'b1000;
    #10 A = 4'b0110; B = 4'b0101;
    #10 A = 4'b1111; B = 4'b1010;
    #10 A = 4'b0111; B = 4'b1000;
    #10 A = 4'b1111; B = 4'b1111;

end
endmodule
