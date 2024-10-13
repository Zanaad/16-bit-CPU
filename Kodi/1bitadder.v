`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2024 09:09:34 PM
// Design Name: 
// Module Name: 1bitadder
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


module fulladder(
    input A,B,Cin,
    output Sum,Cout
    );
    assign Sum=A^B^Cin;
    assign Cout=A&B | A&Cin | B&Cin;
endmodule