`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2020 19:00:54
// Design Name: 
// Module Name: CLA_16_tb
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


module CLA_16_tb();
parameter n = 16; //Default Value is 4
reg [n-1:0] A;
reg [n-1:0] B;
wire C;
wire [n-1:0] S;
CarryLookAheadN #(.n(16)) uut(.A(A), .B(B), .C(C), .S(S));
initial begin
A = 16'h0000;
B = 16'h0000;
#10 A = 16'h25CD; B = 16'h124E;
#10 A = 16'hFF66; B = 16'h1111;
#10 A = 16'h8940; B = 16'h0407;
#10 A = 16'hB509; B = 16'h022A;
end
endmodule
