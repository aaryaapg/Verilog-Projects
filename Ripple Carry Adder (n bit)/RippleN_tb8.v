`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2020 17:58:23
// Design Name: 
// Module Name: RippleN_tb8
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


module RippleN_tb8();
parameter n = 8; //Default Value is 4
reg [n-1:0] A;
reg [n-1:0] B;
wire C;
wire [n-1:0] S;
RippleN #(.n(8)) uut(.A(A), .B(B), .C(C), .S(S));
initial begin
A = 8'h00;
B = 8'h00;
#10 A = 8'h96; B = 8'hB2; //Ans is 48, C_out = 1
#10 A = 8'h85; B = 8'h6D; //Ans is F2, C_out = 0
#10 A = 8'h50; B = 8'hA5; //Ans is F5, C_out = 0
#10 A = 8'h77; B = 8'h31; //Ans is A8, C_out = 0
end
endmodule
