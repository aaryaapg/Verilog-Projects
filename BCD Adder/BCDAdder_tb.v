`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2020 22:48:20
// Design Name: 
// Module Name: BCDAdder_tb
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


module BCDAdder_tb();
reg [3:0] A, B;
reg Cin;
wire Cout;
wire [3:0] Sum;
BCDAdder uut (.A(A), .B(B), .Cin(Cin), .Cout(Cout), .Sum(Sum));
initial begin
    Cin = 1'b0;
    A = 4'b0000;
    B = 4'b0000;
    #10 A = 4'b0110; B = 4'b0110; Cin = 1'b0; //Carry is 0, but Sum is greater than 9, hence add 6
    #10 A = 4'b1000; B = 4'b1001; Cin = 1'b0; //Sum is less than 9 but carry is High, hence add 6
    #10 A = 4'b0101; B = 4'b0100; Cin = 1'b0; //Carry is 0 and Sum is less than 9, hence add 0
    end
endmodule
