`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2020 00:06:47
// Design Name: 
// Module Name: ParityGenerator
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


module ParityGenerator(
    input [2:0] m,
    output even_parity_bit,
    output odd_parity_bit
    );  
assign even_parity_bit = m[2]^m[1]^m[0];
assign odd_parity_bit = (m[2]^m[1])~^m[0];
endmodule
