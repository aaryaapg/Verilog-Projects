`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2020 15:57:30
// Design Name: 
// Module Name: D_Flipflop
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


module D_Flipflop(
    input Din,
    input Rst, //Synchronous Reset, Active High
    input Clk,
    input En, //Active high enable
    output reg Qout
    );
    always @ (posedge Clk)
    begin
    if (Rst == 1'b1) Qout = 1'b0;
    else if (En == 1'b0) Qout = Qout;
    else Qout = Din;
    end
endmodule
