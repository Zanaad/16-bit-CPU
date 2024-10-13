`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2024 09:53:36 PM
// Design Name: 
// Module Name: Alu1bit
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


module Alu1bit(
    input A,B,CarryIn,Binvert,Less,
    input [2:0] operation,
    output CarryOut,result
    );
    wire joB, mb,dhe,ose,teli_xor,mbledhesi;
    assign joB=~B;
    mux2ne1 mux0(B,joB,Binvert,mb);
    assign dhe=A&mb;
    assign ose=A|mb;
    assign teli_xor=A^mb;
    fulladder mbledh(A,mb,CarryIn,mbledhesi,CarryOut);  
    mux8ne1 zgjedhop(dhe,Less,ose,teli_xor,mbledhesi,0,0,0,operation,result);
endmodule