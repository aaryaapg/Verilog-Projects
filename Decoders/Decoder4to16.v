`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2020 14:53:54
// Design Name: 
// Module Name: Decoder4to16
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


module Decoder4to16(
    input [3:0] a,
    output [15:0] D
    );
    Decoder3to8 D1 (.a(a[2:0]), .en(a[3]), .D(D[7:0]));
    Decoder3to8 D2 (.a(a[2:0]), .en(~a[3]), .D(D[15:8]));
endmodule
