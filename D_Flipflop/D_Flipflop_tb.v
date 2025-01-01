`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2020 16:02:42
// Design Name: 
// Module Name: D_Flipflop_tb
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


module D_Flipflop_tb();
reg Din, Rst, Clk, En;
wire Qout;
D_Flipflop uut (.Din(Din), .Rst(Rst), .Clk(Clk), .En(En), .Qout(Qout));
initial begin
//Initial Value of Qout is not given, hence X
Clk = 1'b1;
Din = 1'b0; 
En = 1'b0; 
Rst = 1'b0;
end
initial begin
#5 Din <= ~Din;
#10 Din <= ~Din;
#35 Din <= ~Din;
#27 Din <= ~Din;
end
initial begin
#5 En <= ~En;
#10 En <= ~En;
#15 En <= ~En;
#40 En <= ~En;
end
initial begin
#5 Rst <= ~Rst;
#10 Rst <= ~Rst;
#18 Rst <= ~Rst;
#20 Rst <= ~Rst;
end
always #10 Clk = ~Clk;
endmodule
