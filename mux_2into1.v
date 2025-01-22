`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2025 08:42:18
// Design Name: 
// Module Name: mux_2into1
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


module mux_2into1(a,b,select_line,out);
input a,b,select_line;
output out;

//Implementing behaviour of 2*1 Multiplexer 

assign out = ((a & select_line) | (b & (~select_line)));

endmodule
