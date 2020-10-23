`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2020 21:52:24
// Design Name: 
// Module Name: BCDAdder
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


module BCDAdder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output Cout,
    input [3:0] Sum
    );
    wire [3:0] bs, cl; //bs = binary sum, cl = conversion logic
    wire t,p;
    RCA RCA1(.A(A), .B(B), .C_in(Cin), .Sum(bs), .C_out(t));
    assign Cout = t|(bs[3]&bs[2])|(bs[3]&bs[1]);
    assign cl = {1'b0,{2{Cout}},1'b0};
    RCA RCA2(.A(bs), .B(cl), .C_in(1'b0), .Sum(Sum), .C_out(p));
endmodule
