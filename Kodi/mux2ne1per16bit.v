`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2024 11:30:00 PM
// Design Name: 
// Module Name: mux2ne1per16bit
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


module mux2ne1per16bit(
 input [15:0] hyrja0,
 input [15:0] hyrja1,
 input Sinjali,
    output [15:0] dalja );
    assign dalja=Sinjali ? hyrja1 : hyrja0;
endmodule
