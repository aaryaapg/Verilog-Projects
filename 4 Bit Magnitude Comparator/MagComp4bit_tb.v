`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2020 15:49:55
// Design Name: 
// Module Name: MagComp4bit_tb
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


module MagComp4bit_tb();
reg [3:0] A,B;
wire Equal, A_greater,B_greater;
MagComp4bit uut (.A(A), .B(B), .Equal(Equal), .A_greater(A_greater), .B_greater(B_greater));
initial begin
    A = 4'b0000;
    B = 4'b0000;
    #10 A = 4'b0000; B = 4'b0110; //B
    #10 A = 4'b1100; B = 4'b0110; //A
    #10 A = 4'b0100; B = 4'b1010; //B
    #10 A = 4'b0110; B = 4'b0110; //Equal
end
endmodule
