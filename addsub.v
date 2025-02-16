`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2024 12:38:49
// Design Name: 
// Module Name: addsub
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

module addsub(Out,cout,a,b,cin,select);
input a,b,cin,select;
output Out,cout; // the result and carry out
not #(50) not1(notb,b);
mux21 mux1(b1,b,notb,select);

adder adder1(Out,cout,a,b1,cin);
endmodule
