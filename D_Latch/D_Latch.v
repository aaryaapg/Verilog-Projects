`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2020 14:10:08
// Design Name: 
// Module Name: D_Latch
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


module D_Latch(
    //input Clk, //High Level Triggered
    input Din,
    input En, //Active High
    input Rst, //Active high reset
    output reg Qout
    );
    always @ (Din, Rst, En)
    begin
    if(Rst == 1'b1) Qout = 1'b0; 
    else if (En == 1'b0) Qout = Qout; //Keep its previous value
    else Qout = Din;
    end
endmodule
