`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2024 12:21:43 PM
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(
    input[15:0] Adresa,
    input [15:0] WriteData,
    input MemWrite,
    input MemRead,
    input Clock,
    output [15:0] ReadData
    );
    reg [7:0] dataMem[127:0];
    initial 
    $readmemb("DMemory.mem",dataMem);
    always @(posedge Clock)
    begin
    if(MemWrite)
    begin
    dataMem[Adresa+16'd0] <= WriteData[15:8];
    dataMem[Adresa+16'd1] <= WriteData[7:0];
    end
    end
    
    always@(negedge Clock)
    begin
    $writememb("DMemory.mem",dataMem);
    end
    
    assign ReadData[15:8]=dataMem[Adresa+16'd0];
    assign ReadData[7:0]=dataMem[Adresa+16'd1];
endmodule