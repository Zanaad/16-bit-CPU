`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2024 12:28:59 AM
// Design Name: 
// Module Name: Register_File
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


module Register_File(
    input [1:0] Rs,
    input [1:0] Rt,
    input [1:0] Rd,
    input [15:0] WriteData,
    input RegWrite,
    input Clock,
    output [15:0]ReadRs,
    output [15:0]ReadRt
    );
    reg [15:0] regjistra[3:0];  //4 regjistra ka 16 bit
    
    integer i;
    initial
    begin
    for(i=0; i<4; i=i+1)
    regjistra[i] <= 16'd0;
    end
    always @(posedge Clock)
    begin
    if(RegWrite)        //Pyesim nese na lejohet me shkru ne regjistra
    regjistra[Rd] <= WriteData;  //nese na lejohet, atehere ne reg te destinacionit e vendosim WriteData
    end
    assign ReadRs=regjistra[Rs];
    assign ReadRt=regjistra[Rt]; 
endmodule