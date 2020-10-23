`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Aaryaa Padhyegurjar
// Create Date: 25.05.2020 17:43:16
// Design Name: 
// Module Name: H_Adder
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


module H_Adder(
    input a,b,
    output wire s,c
    );
    //This is a purely combinational ckt. Hence, I'll be using blocking statements
    assign s = a ^ b;
    assign c = a & b;
    
endmodule
