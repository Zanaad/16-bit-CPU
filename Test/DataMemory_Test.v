`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2024 07:58:38 PM
// Design Name: 
// Module Name: DataMemory_Test
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


module DataMemory_Test();
    reg Clock,MemWrite,MemRead;
    reg [15:0] adresa;
    reg [15:0] WriteData;
    wire [15:0] ReadData;
    
    initial
    $monitor ("Adresa=%d","WriteData=%d","MemWrite=%b","MemRead=%b","Clock=%b","ReadData=%d",adresa,WriteData,MemWrite,MemRead,Clock,ReadData);
    
    initial
    begin
    #0 Clock=1'b0;
    #5 MemWrite=1'b1; adresa=16'd14; WriteData=16'd21; MemRead=1'b0;
    #5 Clock=1'b1;
    #5 Clock=1'b0; MemWrite=1'b0;
    #5 MemRead=1'b1; adresa=16'd14;
    #5 $stop;
    end
    
    DataMemory DM(adresa,WriteData,MemWrite,MemRead,Clock,ReadData);
endmodule
