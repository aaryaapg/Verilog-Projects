`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2020 01:05:38
// Design Name: 
// Module Name: Vedic128_tb
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


module Vedic128_tb();
reg [127:0] A,B;
wire [255:0] P;
Vedic128 uut (.A(A), .B(B), .P(P));
initial begin
A = 128'd0;
B = 128'd0;
#10 A = 128'd57; B = 128'd9495;
#10 A = 128'd5711; B = 128'd50000000;
#10 A = 128'd122457; B = 128'd9495;
#10 A = 128'd57568; B = 128'd459394;
end
endmodule
