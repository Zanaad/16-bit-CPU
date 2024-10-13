`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2024 10:21:09 AM
// Design Name: 
// Module Name: Alu16bit
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


module Alu16bit(
     input [15:0] A,
    input [15:0] B,
    input Bnegate,
    input [2:0] op,
    output zero,overflow,CarryOut,
    output [15:0] rez
    );
    wire [14:0] cout;
    // Alu1bit(A,B,CarryIn,Binvert,Less, operation, CarryOut,result)
    Alu1bit alu0(A[0],B[0],Bnegate,Bnegate,rez[15],op,cout[0],rez[0]);
    Alu1bit alu1(A[1],B[1],cout[0],Bnegate,0,op,cout[1],rez[1]);
    Alu1bit alu2(A[2],B[2],cout[1],Bnegate,0,op,cout[2],rez[2]);
    Alu1bit alu3(A[3],B[3],cout[2],Bnegate,0,op,cout[3],rez[3]);
    Alu1bit alu4(A[4],B[4],cout[3],Bnegate,0,op,cout[4],rez[4]);
    Alu1bit alu5(A[5],B[5],cout[4],Bnegate,0,op,cout[5],rez[5]);
    Alu1bit alu6(A[6],B[6],cout[5],Bnegate,0,op,cout[6],rez[6]);
    Alu1bit alu7(A[7],B[7],cout[6],Bnegate,0,op,cout[7],rez[7]);
    Alu1bit alu8(A[8],B[8],cout[7],Bnegate,0,op,cout[8],rez[8]);
    Alu1bit alu9(A[9],B[9],cout[8],Bnegate,0,op,cout[9],rez[9]);
    Alu1bit alu10(A[10],B[10],cout[9],Bnegate,0,op,cout[10],rez[10]);
    Alu1bit alu11(A[11],B[11],cout[10],Bnegate,0,op,cout[11],rez[11]);
    Alu1bit alu12(A[12],B[12],cout[11],Bnegate,0,op,cout[12],rez[12]);
    Alu1bit alu13(A[13],B[13],cout[12],Bnegate,0,op,cout[13],rez[13]);
    Alu1bit alu14(A[14],B[14],cout[13],Bnegate,0,op,cout[14],rez[14]);
    Alu1bit alu15(A[15],B[15],cout[14],Bnegate,0,op,CarryOut,rez[15]);
    
    assign zero=~(rez[0]|rez[1] | rez[2] | rez[3] | rez[4] | rez[5] | rez[6] | rez[7] | 
    rez[8] | rez[9] | rez[10] | rez[11] | rez[12] | rez[13] | rez[14] | rez[15]);
    
    assign overflow=cout[14]^CarryOut;
endmodule