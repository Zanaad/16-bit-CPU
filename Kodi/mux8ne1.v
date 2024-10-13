`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2024 10:22:24 AM
// Design Name: 
// Module Name: mux8ne1
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


module mux8ne1(
   input hyrja0,hyrja1,hyrja2,hyrja3,hyrja4,hyrja5,hyrja6,hyrja7,
   input [2:0] s,
   output dalja
    );
    assign dalja=s[2] ? (s[1] ? (s[0]? hyrja7:hyrja6) : (s[0] ? hyrja5 : hyrja4)) : (s[1] ? (s[0] ? hyrja3:hyrja2):(s[0] ? hyrja1:hyrja0));
endmodule