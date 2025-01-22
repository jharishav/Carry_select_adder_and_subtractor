`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2025 12:11:07
// Design Name: 
// Module Name: carry_select_adder_23_bit
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

//Implementing 23-bit carry select adder from carry_select_adder_1bit module by instantaniating it 23 times
module carry_select_adder_23_bit(a,b_xor,cin,sum_out,carry_out);

input [22:0] a, b_xor;
input cin;
output[22:0] sum_out;
output carry_out;

wire [23:0] carry_propagate;
wire [22:0] b;



/*carry_select_adder_1bit add0(a[0],b[0],cin,sum_out[0],carry_propagate[0]);
carry_select_adder_1bit add1(a[1],b[1],carry_propagate[0],sum_out[1],carry_propagate[1]);
carry_select_adder_1bit add2(a[2],b[2],carry_propagate[1],sum_out[2],carry_propagate[2]);
carry_select_adder_1bit add3(a[3],b[3],carry_propagate[2],sum_out[3],carry_propagate[3]);
carry_select_adder_1bit add4(a[4],b[4],carry_propagate[3],sum_out[4],carry_propagate[4]);
carry_select_adder_1bit add5(a[5],b[5],carry_propagate[4],sum_out[5],carry_propagate[5]);
carry_select_adder_1bit add6(a[6],b[6],carry_propagate[5],sum_out[6],carry_propagate[6]);
carry_select_adder_1bit add7(a[7],b[7],carry_propagate[6],sum_out[7],carry_propagate[7]);
carry_select_adder_1bit add8(a[8],b[8],carry_propagate[7],sum_out[8],carry_propagate[8]);
carry_select_adder_1bit add9(a[9],b[9],carry_propagate[8],sum_out[9],carry_propagate[9]);
carry_select_adder_1bit add10(a[10],b[10],carry_propagate[9],sum_out[10],carry_propagate[10]);
carry_select_adder_1bit add11(a[11],b[11],carry_propagate[10],sum_out[11],carry_propagate[11]);
carry_select_adder_1bit add12(a[12],b[12],carry_propagate[11],sum_out[12],carry_propagate[12]);
carry_select_adder_1bit add13(a[13],b[13],carry_propagate[12],sum_out[13],carry_propagate[13]);
carry_select_adder_1bit add14(a[14],b[14],carry_propagate[13],sum_out[14],carry_propagate[14]);
carry_select_adder_1bit add15(a[15],b[15],carry_propagate[14],sum_out[15],carry_propagate[15]);
carry_select_adder_1bit add16(a[16],b[16],carry_propagate[15],sum_out[16],carry_propagate[16]);
carry_select_adder_1bit add17(a[17],b[17],carry_propagate[16],sum_out[17],carry_propagate[17]);
carry_select_adder_1bit add18(a[18],b[18],carry_propagate[17],sum_out[18],carry_propagate[18]);
carry_select_adder_1bit add19(a[19],b[19],carry_propagate[18],sum_out[19],carry_propagate[19]);
carry_select_adder_1bit add20(a[20],b[20],carry_propagate[19],sum_out[20],carry_propagate[20]);
carry_select_adder_1bit add21(a[21],b[21],carry_propagate[20],sum_out[21],carry_propagate[21]);
carry_select_adder_1bit add22(a[22],b[22],carry_propagate[21],sum_out[22],carry_out);*/

//Implementing 23 bit carry select adder using generate variable;

assign carry_propagate[0] = cin;
assign b = b_xor ^ {23{cin}};

genvar j;

generate for(j=0;j<=22;j=j+1) begin: add

carry_select_adder_1bit a1(a[j],b[j],carry_propagate[j],sum_out[j],carry_propagate[j+1]);
end
endgenerate

assign carry_propagate[23] = carry_out;

endmodule
