`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2020 19:15:01
// Design Name: 
// Module Name: F_Adder
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


module F_Adder(
    input A,B,Cin,
    output S, Cout
    );
    wire s1,s2,c1,c2;
    H_Adder HA1(.a(A), .b(B), .s(s1), .c(c1));
    H_Adder HA2(.a(s1), .b(Cin), .s(s2), .c(c2));
    assign Cout = c1|c2;
    assign S = s2;
endmodule
