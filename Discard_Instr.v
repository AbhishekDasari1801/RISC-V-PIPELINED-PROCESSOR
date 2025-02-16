`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2024 13:28:44
// Design Name: 
// Module Name: Discard_Instr
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


module Discard_Instr(ID_flush,IF_flush,jump,bne,jr);
output ID_flush,IF_flush;
input jump,bne,jr;
or #50 OR1(IF_flush,jump,bne,jr);
or #50 OR2(ID_flush,bne,jr);
endmodule
