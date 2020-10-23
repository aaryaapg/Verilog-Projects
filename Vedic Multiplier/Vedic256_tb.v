`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2020 12:50:20
// Design Name: 
// Module Name: Vedic256_tb
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


module Vedic256_tb();
reg [255:0] A,B;
wire [511:0] P;
Vedic256 uut (.A(A), .B(B), .P(P));
initial begin
A = 256'd0;
B = 256'd0;
#10 A = 256'd57; B = 256'd9495;
#10 A = 256'd5711; B = 256'd5006500000;
#10 A = 256'd122457; B = 256'd9495;
#10 A = 256'd57568; B = 256'd459394;
end
endmodule
