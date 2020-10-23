`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2020 16:40:02
// Design Name: 
// Module Name: PriorityEncoder_tb
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


module PriorityEncoder_tb();
reg [7:0] D;
wire [2:0] a;
PriorityEncoder uut (.D(D), .a(a));
initial begin
    D = 8'b00000000; //a=X
    #10 D = 8'b00000010; //a=1
    #10 D = 8'b00000011; //a=1
    #10 D = 8'b00010010; //a=4
    #10 D = 8'b00111010; //a=5
    #10 D = 8'b00001100; //a=3
    #10 D = 8'b10011000; //a=7
end
endmodule
