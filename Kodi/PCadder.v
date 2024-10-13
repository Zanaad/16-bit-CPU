`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2024 12:52:47 PM
// Design Name: 
// Module Name: PCadder
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


module PCadder(
    input [15:0] A,
    input [15:0] B,
    output [15:0] Sum,
    output CarryOut
    );
    wire Cout[14:0];
    fulladder f0(A[0],B[0],1'b0,Sum[0],Cout[0]);
    fulladder f1(A[1],B[1],Cout[0],Sum[1],Cout[1]);
    fulladder f2(A[2],B[2],Cout[1],Sum[2],Cout[2]);
    fulladder f3(A[3],B[3],Cout[2],Sum[3],Cout[3]);
    fulladder f4(A[4],B[4],Cout[3],Sum[4],Cout[4]);
    fulladder f5(A[5],B[5],Cout[4],Sum[5],Cout[5]);
    fulladder f6(A[6],B[6],Cout[5],Sum[6],Cout[6]);
    fulladder f7(A[7],B[7],Cout[6],Sum[7],Cout[7]);
    fulladder f8(A[8],B[8],Cout[7],Sum[8],Cout[8]);
    fulladder f9(A[9],B[9],Cout[8],Sum[9],Cout[9]);
    fulladder f10(A[10],B[10],Cout[9],Sum[10],Cout[10]);
    fulladder f11(A[11],B[11],Cout[10],Sum[11],Cout[11]);
    fulladder f12(A[12],B[12],Cout[11],Sum[12],Cout[12]);
    fulladder f13(A[13],B[13],Cout[12],Sum[13],Cout[13]);
    fulladder f14(A[14],B[14],Cout[13],Sum[14],Cout[14]);
    fulladder f15(A[15],B[15],Cout[14],Sum[15],CarryOut);
endmodule
