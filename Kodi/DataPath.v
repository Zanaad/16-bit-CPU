`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2024 04:18:43 PM
// Design Name: 
// Module Name: DataPath
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


module DataPath(
    input Clock,RegDst,AluSrc,MemToReg,RegWrite,MemRead,MemWrite,Branch,
    input [1:0] AluOp,
    output [3:0] opcode 
    );
    reg [15:0] PC_initial;
    wire [15:0] PC_next,PC2;
    wire [15:0] instruction, ReadData1,ReadData2,WriteData;
    wire [1:0] percaktoDestinacionin;
    wire [3:0] AluCtrl;
    wire [15:0] immediate16,immediateShifted;
    wire [15:0] percaktoHyrjenAlu,AluOut,DMOut, beqAddress;
    wire andBranch,Zero,overflow,CarryOut, PCout;
    
    initial
    begin
    PC_initial=16'd10;
    end
    always @ (posedge Clock)
    begin
    PC_initial<=PC_next;
    end
   //PCadder PC(PC_initial,16'd2,PC2,PCout);
   assign PC2=PC_initial+16'd2;
    
    InstructionMemory IM(PC_initial,instruction);
    assign percaktoDestinacionin=(RegDst==1'b1) ? instruction[7:6] : instruction [9:8];
    Register_File RF(instruction[11:10],instruction[9:8],percaktoDestinacionin,WriteData,RegWrite,Clock,ReadData1,ReadData2);
        
  
    AluControl AC(AluOp,instruction[1:0],instruction[15:12],AluCtrl);
    
    assign immediate16={{8{instruction[7]}}, instruction[7:0]}; 
    //mux2ne1per16bit hyrjaAlu(readData2,immediate16,AluSrc,percaktoHyrjenAlu);
    assign percaktoHyrjenAlu=(AluSrc==1'b1)?immediate16:ReadData2;
    Alu16bit Alu(ReadData1,percaktoHyrjenAlu,AluCtrl[3],AluCtrl[2:0],Zero,overflow,CarryOut,AluOut);   
    
    DataMemory DM(AluOut,ReadData2,MemWrite,MemRead,Clock,DMOut);
    assign WriteData=(MemToReg==1'b1)?DMOut:AluOut;
    
    assign immediateShifted={immediate16[14:0],1'b0};
    assign andBranch=Zero&Branch;
    //PCadder PC1(PC2,immediateShifted,beqaddress,PCout)
    assign beqAddress=PC2+immediateShifted;
    
    assign PC_next=(andBranch==1'b1) ? beqAddress : PC2;
    
    assign opcode=instruction[15:12];
endmodule