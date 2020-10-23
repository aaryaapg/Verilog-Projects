`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2020 18:15:30
// Design Name: 
// Module Name: CarryLookAheadN
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


module CarryLookAheadN
#(parameter n = 4) //Default width is 4 bits
(   input [n-1:0] A,B,
    output C,
    output [n-1:0] S
    );
    wire [n-1:0] Sum, G, P;
    wire [n:0] Carry;
    assign Carry[0] = 1'b0; //Input carry for first adder is 0
    genvar i;
    generate 
        for(i=0; i<n; i=i+1)
        begin
            // assign Carry[i+1] = (A[i] & B[i]) | ((A[i] ^ B[i])&Carry[i]);
            F_Adder FA_uut (.A(A[i]),
                            .B(B[i]),
                            .Cin(Carry[i]),
                            .Cout(Carry[i+1]),
                            .S(Sum[i])   
                            );
        end
    endgenerate
    genvar j;
    generate
    for (j=0; j<n; j=j+1) 
      begin
        assign G[j]   = A[j] & B[j];
        assign P[j]   = A[j] ^ B[j];
        assign Carry[j+1] = G[j] | (P[j] & Carry[j]);
      end
    endgenerate
    
    
    assign C = Carry[n];
    assign S = Sum;
endmodule
