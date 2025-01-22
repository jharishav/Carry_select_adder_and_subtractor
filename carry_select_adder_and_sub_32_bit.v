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


module carry_select_adder_and_sub_32_bit(a,b_xor,cin,sum_out,carry_out);
input [31:0] a, b_xor;
input cin;
output[31:0] sum_out;
output carry_out;

wire [32:0] carry_propagate;
wire [31:0] b;

assign carry_propagate[0] = cin;
assign b = b_xor ^ {32{cin}};

genvar j;

generate for(j=0;j<=31;j=j+1) begin: add

carry_select_adder_1bit a1(a[j],b[j],carry_propagate[j],sum_out[j],carry_propagate[j+1]);
end
endgenerate

assign carry_propagate[32] = carry_out;
endmodule
