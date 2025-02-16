`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2024 13:19:08
// Design Name: 
// Module Name: mux3x32to32
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

module mux3x32to32(DataOut,A,B,C,Select);
output [31:0] DataOut;
input [1:0] Select;
input [31:0] A,B,C;
wire [31:0] DataOut1,DataOut2;

mux2x32to32 muxAB(DataOut1,A,B, Select[1]);
mux2x32to32 muxCA(DataOut2,C,A, Select[1]);
mux2x32to32 muxABC(DataOut,DataOut1,DataOut2, Select[0]);

endmodule
