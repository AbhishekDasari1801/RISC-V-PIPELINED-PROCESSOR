`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2024 13:23:15
// Design Name: 
// Module Name: mux2_1
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


module mux2_1(O,A,B,sel);
// sel = 0 : O = A
// sel = 1 : O =B
output O;
input A,B,sel;
not #(50) not1(nsel,sel);
and #(50) and1(O1,A,nsel); 
and #(50) and2(O2,B,sel);
or #(50) or2(O,O1,O2);
endmodule
