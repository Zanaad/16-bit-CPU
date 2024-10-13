`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2024 11:35:21 AM
// Design Name: 
// Module Name: CPU
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


module CPU(
    input Clock
    );
    wire [3:0] opcode;
    wire RegDst,AluSrc,MemToReg,RegWrite,MemRead,MemWrite,Branch;
    wire [1:0] AluOp;
    DataPath DP(Clock,RegDst,AluSrc,MemToReg,RegWrite,MemRead,MemWrite,Branch,AluOp,opcode);
    ControlUnit CU(opcode,RegDst,AluSrc,MemToReg,RegWrite,MemRead,MemWrite,AluOp,Branch);
    
endmodule