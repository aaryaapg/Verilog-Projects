`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2020 11:36:28
// Design Name: 
// Module Name: Decoder3to8
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

// This is a purely combinational ckt, hence I'm using blocking statements
module Decoder3to8(
    input [2:0] a,
    input en,
    output reg [7:0] D
    );
    initial D = 8'h00;
    always @(a,en)
    begin
        if(en==1'b1) begin
            case (a)
                3'b000 : D = 8'h01;
                3'b001 : D = 8'h02;
                3'b010 : D = 8'h04;
                3'b011 : D = 8'h08;
                3'b100 : D = 8'h10;
                3'b101 : D = 8'h20;
                3'b110 : D = 8'h40;
                3'b111 : D = 8'h80;
                default : D = 8'h00;          
             endcase
         end
         else D = 8'b00000000;
     end
endmodule
