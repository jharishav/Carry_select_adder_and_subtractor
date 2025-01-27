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
reg [31:0] CH_SUM;
reg DIFF;
integer i;

carry_select_adder_and_sub_32_bit uut(A,B,C_IN,SUM);

initial
begin

for (i=0;i<=50;i=i+1)
begin
    A = $random;
    B = $random;
    C_IN = $random;
    if (C_IN) CH_SUM = A + (~B) + C_IN;
    else CH_SUM = A + B; 
    assign DIFF = CH_SUM - SUM;  #10;
    end 
    
    #510 $finish;
   end
endmodule
