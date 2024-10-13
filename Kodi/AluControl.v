`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2024 10:32:32 PM
// Design Name: 
// Module Name: AluControl
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


module AluControl(
    input [1:0] ALUOp,
    input [1:0] FUNCT,
    input [3:0] opcode,
    output reg [3:0] AluCtrl
    );
    
    always @ (ALUOp)
    begin
    case(ALUOp)
    2'b00:
    AluCtrl=4'b0100;        //mbledhje per lw apo sw
    2'b01:
    AluCtrl=4'b1100;        //zbritje per krahasime
    2'b10:                  //i shikojme sipas funksionit
    case(FUNCT)
    2'b00:
    AluCtrl=(opcode==0000)? 4'b0000 : ((opcode==0001)? 4'b0100:4'b0110);   //AND,ADD dhe SLL kane te njejtin funksion. SHikojme nese opcode eshte si i AND, nese po ja dergojme 0000, nese jo ja dergojme 0100
    2'b01:
    AluCtrl=(opcode==0000)? 4'b0010 : ((opcode==0001)? 4'b1100:4'b0111);   //OR, SUB dhe SRA
    2'b10:
    AluCtrl=4'b0011;             //XOR    
    endcase
     
    2'b11:                      //shikojme sipas opcode
    case(opcode)
    4'b1001:
    AluCtrl=4'b0100 ;                //addi
    4'b1010:
    AluCtrl=4'b1100;                  //subi
    4'b1011:
    AluCtrl=4'b0001;                  //slti  
    endcase  
    endcase     
    end
endmodule