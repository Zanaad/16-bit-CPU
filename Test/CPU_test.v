`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2024 12:22:05 PM
// Design Name: 
// Module Name: CPU_test
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


module CPU_test();
   reg Clock;
integer i;
initial
begin
  for(i=0; i < 30; i=i+1) //30x nderro nga Clock 0 - 1, 30 tehe pozitive
begin
#10 Clock = 0;
#10 Clock = 1;
end

#10 $finish;
end
CPU cpu16(Clock);
endmodule

