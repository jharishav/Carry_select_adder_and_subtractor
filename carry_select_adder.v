`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2025 08:36:09
// Design Name: 
// Module Name: carry_select_adder
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

//Implementing 8-bit carry select adder using hierarchial bottom up approach
module carry_select_adder(a,b,cin,sum_out,carry_out);

input [7:0] a,b;
input cin;
output [7:0] sum_out;
output carry_out;
wire [7:0] w1;
assign w1 = b ^ {8{cin}};

wire [6:0]carry_propagate;
//Instaniating carry_select_adder_1bit module eight times to implement 8-bit carry select adder

carry_select_adder_1bit adder0(a[0],w1[0],cin,sum_out[0],carry_propagate[0]);
carry_select_adder_1bit adder1(a[1],w1[1],carry_propagate[0],sum_out[1],carry_propagate[1]);
carry_select_adder_1bit adder2(a[2],w1[2],carry_propagate[1],sum_out[2],carry_propagate[2]);
carry_select_adder_1bit adder3(a[3],w1[3],carry_propagate[2],sum_out[3],carry_propagate[3]);
carry_select_adder_1bit adder4(a[4],w1[4],carry_propagate[3],sum_out[4],carry_propagate[4]);
carry_select_adder_1bit adder5(a[5],w1[5],carry_propagate[4],sum_out[5],carry_propagate[5]);
carry_select_adder_1bit adder6(a[6],w1[6],carry_propagate[5],sum_out[6],carry_propagate[6]);
carry_select_adder_1bit adder7(a[7],w1[7],carry_propagate[6],sum_out[7],carry_out);

/*assign carry_propagate[0] = cin;
genvar j;
generate for(j=0;j<=7;j=j+1) begin: add

carry_select_adder_1bit add1(a[j],w1[j],carry_propagate[j],sum_out[j],carry_propagate[j+1]);
end
endgenerate

assign carry_propagate[8] = carry_out;*/

endmodule
