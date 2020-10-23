`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2020 23:07:49
// Design Name: 
// Module Name: UniversalShiftRegister4bit
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


module UniversalShiftRegister4bit(
    input [3:0] P_in,
    input R_Shift, //LSB in
    input L_Shift, //MSB in
    input Clk,
    input Rst,
    input [1:0] Sel,
    output [3:0] Out
    );
    wire [3:0] Mux_out;
    //En is always high here
    Mux4to1 Mux0 (.A(Out[0]),.B(Out[1]),.C(L_Shift),.D(P_in[0]),.S(Sel),.Y(Mux_out[0]));
    D_Flipflop D0 (.Din(Mux_out[0]), .Rst(Rst), .Clk(Clk), .En(1'b1), .Qout(Out[0]));
    Mux4to1 Mux1 (.A(Out[1]),.B(Out[2]),.C(Out[0]),.D(P_in[1]),.S(Sel),.Y(Mux_out[1]));
    D_Flipflop D1 (.Din(Mux_out[1]), .Rst(Rst), .Clk(Clk), .En(1'b1), .Qout(Out[1]));
    Mux4to1 Mux2 (.A(Out[2]),.B(Out[3]),.C(Out[1]),.D(P_in[2]),.S(Sel),.Y(Mux_out[2]));
    D_Flipflop D2 (.Din(Mux_out[2]), .Rst(Rst), .Clk(Clk), .En(1'b1), .Qout(Out[2]));
    Mux4to1 Mux3 (.A(Out[3]),.B(R_Shift),.C(Out[2]),.D(P_in[3]),.S(Sel),.Y(Mux_out[3]));
    D_Flipflop D3 (.Din(Mux_out[3]), .Rst(Rst), .Clk(Clk), .En(1'b1), .Qout(Out[3]));
endmodule
