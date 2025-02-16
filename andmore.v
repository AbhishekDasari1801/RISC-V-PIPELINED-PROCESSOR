`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2024 12:24:28
// Design Name: 
// Module Name: andmore
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


module andmore(g,a,b,c,d,e);
  output g;
  input a,b,c,d,e;
  and #(50) and1(f1,a,b,c,d),
            and2(g,f1,e);
endmodule
