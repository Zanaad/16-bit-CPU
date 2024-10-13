`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2024 07:28:08 PM
// Design Name: 
// Module Name: Reg_test
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


module Reg_test();
    reg [1:0] rs,rt,rd;
    reg RegWrite, Clock;
    reg [15:0] WriteData;
    wire [15:0] ReadRs,ReadRt;
    initial
    $monitor("Rs=%b","Rt=%b","Rd=%b","WriteData=%d","RegWrite=%b","Clock=%b","ReadRs=%d","ReadRt=%d",rs,rt,rd,WriteData,RegWrite, Clock,ReadRs,ReadRt);
    
    initial
    begin
    #0 Clock=1'b0;
    #5 rd=2'b01; RegWrite=1'b1; WriteData=16'd15;
    #5 Clock=1'b1;
    #5 Clock=1'b0; RegWrite=1'b0;
    #5 rd=2'b10; RegWrite=1'b1; WriteData=16'd9;
    #5 Clock=1'b1;
    #5 Clock=1'b0; RegWrite=1'b0;
    #5 rs=2'b01; rt=2'b10;
    #5 $stop;
    end
    
    Register_File RF(rs,rt,rd,WriteData,RegWrite, Clock,ReadRs,ReadRt);
endmodule
