`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2020 00:14:09
// Design Name: 
// Module Name: ParityGeneratortb
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


module ParityGeneratortb();
reg [2:0] m;
wire even_parity_bit;
wire odd_parity_bit;
ParityGenerator uut(.m(m), .even_parity_bit(even_parity_bit), .odd_parity_bit(odd_parity_bit));
initial 
begin
m = 3'b000;
end
always #5 m[0] = ~m[0];
always #15 m[1] = ~m[1];
always #30 m[2] = ~m[2];
endmodule
