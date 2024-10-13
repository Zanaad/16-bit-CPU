`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2024 12:10:04 PM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
    input [15:0] PCAdresa,
    output [15:0] Instruksioni
    );
    reg [7:0] IMem[127:0]; //i kem 128 adresa ka 8 bit, pra i kem 128 adresa 1 bajteshe
    initial
    $readmemb("InstructionMemory.mem",IMem);
    assign Instruksioni[15:8]=IMem[PCAdresa+16'd0];
    assign Instruksioni[7:0]=IMem[PCAdresa+16'd1];
endmodule