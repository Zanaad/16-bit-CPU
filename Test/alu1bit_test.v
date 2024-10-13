`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2024 03:38:44 PM
// Design Name: 
// Module Name: alu1bit_test
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


module alu1bit_test;
        reg a,b,cin,binvert,less;
        reg [2:0] op;
        wire rez,cout;
        initial
        $monitor("A=%b","B=%b","CarryIn=%b","Binvert=%b","Less=%b","operation=%b","CarryOut=%b","result=%b",a,b,cin,binvert,less,op,cout,rez);
        initial
        begin
        //and
        #0 a=1'b0; b=1'b0; cin=1'b0; binvert=1'b0; less=1'b0; op=3'b000;
        #10 a=1'b0; b=1'b1; cin=1'b0; binvert=1'b0;less=1'b0; op=3'b000;
        #10 a=1'b1; b=1'b0; cin=1'b0; binvert=1'b0; less=1'b0;op=3'b000;
        #10 a=1'b1; b=1'b1; cin=1'b0; binvert=1'b0; less=1'b0;op=3'b000;
        //or
        #10 a=1'b0; b=1'b0; cin=1'b0; binvert=1'b0; less=1'b0; op=3'b010;
        #10 a=1'b0; b=1'b1; cin=1'b0; binvert=1'b0; less=1'b0; op=3'b010;
        #10 a=1'b1; b=1'b0; cin=1'b0; binvert=1'b0; less=1'b0; op=3'b010;
        #10 a=1'b1; b=1'b1; cin=1'b0; binvert=1'b0; less=1'b0; op=3'b010;
        //xor
        #10 a=1'b0; b=1'b0; cin=1'b0; binvert=1'b0; less=1'b0; op=3'b011;
        #10 a=1'b0; b=1'b1; cin=1'b0; binvert=1'b0; less=1'b0; op=3'b011;
        #10 a=1'b1; b=1'b0; cin=1'b0; binvert=1'b0; less=1'b0; op=3'b011;
        #10 a=1'b1; b=1'b1; cin=1'b0; binvert=1'b0; less=1'b0; op=3'b011;
        //add
        #10 a=1'b0; b=1'b0; cin=1'b0; binvert=1'b0;less=1'b0; op=3'b100;
        #10 a=1'b0; b=1'b1; cin=1'b0; binvert=1'b0; less=1'b0;op=3'b100;
        #10 a=1'b1; b=1'b0; cin=1'b0; binvert=1'b0; less=1'b0;op=3'b100;
        #10 a=1'b1; b=1'b1; cin=1'b0; binvert=1'b0; less=1'b0;op=3'b100;
        //sub
        #10 a=1'b0; b=1'b0; cin=1'b1; binvert=1'b1; less=1'b0;op=3'b100;
        #10 a=1'b0; b=1'b1; cin=1'b1; binvert=1'b1; less=1'b0;op=3'b100;
        #10 a=1'b1; b=1'b0; cin=1'b1; binvert=1'b1; less=1'b0;op=3'b100;
        #10 a=1'b1; b=1'b1; cin=1'b1; binvert=1'b1; less=1'b0;op=3'b100;
        #10 $stop;
        end
        Alu1bit alu_test(a,b,cin,binvert,less,op,cout,rez);
endmodule

