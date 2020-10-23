`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2020 15:13:46
// Design Name: 
// Module Name: Decoder4to16_tb
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


module Decoder4to16_tb();
reg [3:0] a;
wire [15:0] D;
Decoder4to16 uut (.a(a), .D(D));
initial begin
    a[3] = 1'b0; a[2:0] = 3'b000; //D8
    #10 a[2:0] = 3'b011; //D11
    #10 a[3] = 1'b1; a[2:0] = 3'b001; //D1
    #10 a[2:0] = 3'b101; //D5
    #10 a[2:0] = 3'b111; //D7
    #10 a[3] = 1'b0; a[2:0] = 3'b100; //D12
    #10 a[2:0] = 3'b110; //D14
    #10 a[3] = 1'b1; //D6
end

endmodule
