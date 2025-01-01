`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2020 22:55:13
// Design Name: 
// Module Name: GB
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


module GB(
    input [3:0] g,
    output [3:0] b
    );
    assign b[3] = g[3];
    assign b[2] = g[3]^g[2];
    assign b[1] = g[3]^g[2]^g[1];
    assign b[0] = g[0]^g[1]^g[2]^g[3];
    
endmodule
