`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2020 12:05:54
// Design Name: 
// Module Name: Decoder3to8_tb
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


module Decoder3to8_tb();
reg en;
reg [2:0] a;
wire [7:0] D;
Decoder3to8 uut (.a(a), .en(en), .D(D));
initial begin
    en = 1'b0; a = 3'b000;
    #10 a = 3'b011;
    #10 en = 1'b1; a = 3'b001;
    #10 a = 3'b101;
    #10 a = 3'b111;
    #10 en = 1'b0; a = 3'b100;
    #10 a = 3'b100;
    #10 en = 1'b1;
end
endmodule
