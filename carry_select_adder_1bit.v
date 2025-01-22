`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2025 08:54:44
// Design Name: 
// Module Name: carry_select_adder_1bit
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

//Implementing 1 bit of carry select adder
module carry_select_adder_1bit(a,b,c_input,sum,c_out);

input a,b,c_input;
output sum,c_out;

wire sum0,cout0,sum1,cout1;


parameter zero = 1'b0;
parameter one = 1'b1;

//Instaniating full adder module twice. Once for Cin =0 and once for Cin =1;
full_adder add0(a,b,zero,sum0,cout0);
full_adder add1(a,b,one,sum1,cout1);

mux_2into1 mux0(sum1,sum0,c_input,sum);// Output as the sum of carry select adder
mux_2into1 mux1(cout1,cout0,c_input,c_out);// Output as the carry that will propagate to next bit


endmodule
