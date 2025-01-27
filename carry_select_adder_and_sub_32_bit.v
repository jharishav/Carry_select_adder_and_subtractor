`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2025 01:12:43
// Design Name: 
// Module Name: carry_select_adder_and_sub_32_bit
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


module carry_select_adder_and_sub_32_bit(a,b,cin,sum_out);
input [31:0] a, b;
input cin;
output[31:0] sum_out;


wire [32:0] carry_propagate;
wire [31:0] b_xor;

assign carry_propagate[0] = cin;

genvar j;

generate for(j=0;j<=31;j=j+1) begin: add

assign b_xor[j] = b[j] ^ cin; 
carry_select_adder_1bit a1(a[j],b_xor[j],carry_propagate[j],sum_out[j],carry_propagate[j+1]);
end
endgenerate


endmodule
