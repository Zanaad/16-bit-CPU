`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2024 07:07:48 PM
// Design Name: 
// Module Name: InstrcutionMemoryTest
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


module InstructionMemoryTest();
    reg [15:0] PC;
    wire [15:0] Instruction;
    initial
     begin
     #0 PC=16'd10;
     end
     InstructionMemory IM(PC,Instruction);
endmodule
