`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2020 18:25:22
// Design Name: 
// Module Name: RippleN_tb32
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


module RippleN_tb32();
parameter n = 32; //Default Value is 4
reg [n-1:0] A;
reg [n-1:0] B;
wire C;
wire [n-1:0] S;
RippleN #(.n(32)) uut(.A(A), .B(B), .C(C), .S(S));
initial begin
A = 32'h0000_0000;
B = 32'h0000_0000;
#10 A = 32'hABCD_25CD; B = 32'h0001_124E; 
#10 A = 32'h4567_FF66; B = 32'hA456_1111; 
#10 A = 32'hEE11_8940; B = 32'hF000_0407; 
#10 A = 32'hB509_1123; B = 32'h022A_E888; 
end
endmodule
