`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2020 23:34:45
// Design Name: 
// Module Name: UniversalShiftRegister4bit_tb
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


module UniversalShiftRegister4bit_tb();
    reg [3:0] P_in;
    reg R_Shift, L_Shift, Clk,  Rst;
    reg [1:0] Sel;
    wire [3:0] Out;
    UniversalShiftRegister4bit uut (.R_Shift(R_Shift), .L_Shift(L_Shift), .Clk(Clk), .Rst(Rst), .P_in(P_in), .Sel(Sel), .Out(Out));
    initial begin
        Clk <= 1'b1;
        Rst <= 1'b0; //Keep Reset low, because it is active high
        Sel <= 2'b00;
        P_in <= 4'b0000;
        R_Shift <= 1'b0;
        L_Shift <= 1'b0;
        
        #20 Sel <= 2'b01;
       #10 R_Shift <= 1'b1;
       #10 R_Shift <= 1'b1;
       #10 R_Shift <= 1'b1;
       #10 R_Shift <= 1'b0;
        #100 Sel <= 2'b10;
       #10 L_Shift <= 1'b0;
       #10 L_Shift <= 1'b1;
       #10 L_Shift <= 1'b0;
       #10 L_Shift <= 1'b1;
       #100 Sel <= 2'b00;
       #100 Sel <= 2'b11;
       P_in <= 4'b0111;
      
    end
    always #10 Clk = ~Clk;
endmodule
