`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2025 10:39:03
// Design Name: 
// Module Name: carry_select_adder_tb
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

//Stimulus module for carry_select_adder module
module carry_select_adder_tb();
reg [31:0] A, B;
reg C_IN;
wire [31:0] SUM;
wire C_OUT;

carry_select_adder_and_sub_32_bit uut(A,B,C_IN,SUM,C_OUT);

initial
begin
A = 32'd9; B = 32'd5; C_IN = 1'b0;
#20 A = 32'd900; B = 32'd90; C_IN = 1'b1;
#20 A = 32'd14; B = 32'd13; C_IN = 1'b1;
#20 A = 32'd200; B = 32'd155; C_IN = 1'b1;
#20 A = 32'd265; B = 32'd225; C_IN = 1'b0;
#20 $finish;
end
endmodule
