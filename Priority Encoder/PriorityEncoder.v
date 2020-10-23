`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2020 16:25:16
// Design Name: 
// Module Name: PriorityEncoder
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


module PriorityEncoder(
    input [7:0] D,
    output reg [2:0] a
    );
    always @ (D)
    begin
        if(D[7]==1'b1) a = 3'd7; //D7 has the highest priority
        else if(D[6]==1'b1 && D[7]==1'b0) a = 3'd6;
        else if(D[5]==1'b1 && &D[7:6]==1'b0) a = 3'd5; //I've used reduction and operator
        else if(D[4]==1'b1 && &D[7:5]==1'b0) a = 3'd4;
        else if(D[3]==1'b1 && &D[7:4]==1'b0) a = 3'd3;
        else if(D[2]==1'b1 && &D[7:3]==1'b0) a = 3'd2;
        else if(D[1]==1'b1 && &D[7:2]==1'b0) a = 3'd1;
        else if(D[0]==1'b1 && &D[7:1]==1'b0) a = 3'd0;
        else a = 3'dx;
    end   
endmodule
