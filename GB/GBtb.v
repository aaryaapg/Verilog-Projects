`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2020 23:02:54
// Design Name: 
// Module Name: GBtb
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


module GBtb();
reg [3:0] g;
wire [3:0] b;
GB uut(.g(g),.b(b));
initial 
begin
g = 4'b0000;
end
always #5 g[0] = ~g[0];
always #10 g[1] = ~g[1];
always #20 g[2] = ~g[2];
always #30 g[3] = ~g[3];

endmodule
