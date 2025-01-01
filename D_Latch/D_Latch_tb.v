`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2020 14:32:01
// Design Name: 
// Module Name: D_Latch_tb
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


module D_Latch_tb();
reg Din, Rst, En;
wire Qout;
D_Latch uut (.Din(Din), .Rst(Rst), .En(En), .Qout(Qout));
initial begin
    Rst = 1'b0;
    En = 1'b1;
    Din = 1'b0; //Q copies D
    #10 Din = 1'b1; //Q copies D
    #10 En = 1'b0; //Q retains previous value
    #10 Din = 1'b0; //Q is still 1, previous value because En is still low
    #10 En = 1'b1; // Now q takes D, ie Q becomes 0
    #10 Din = 1'b1; 
    #10 Rst = 1'b1; // Q is zero
end
endmodule
