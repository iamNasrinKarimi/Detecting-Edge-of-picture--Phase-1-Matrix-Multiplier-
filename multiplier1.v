`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:21:42 12/04/2020 
// Design Name: 
// Module Name:    multiplier1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module multiplier1 #(parameter W_IN=8 , W_OUT=16 , ROWS_A=2 , COLS_A=1 ,
ROWS_B=1 , COLS_B=3 )
(input data_in, input mem_sel, input reset, input clk,
input signed[W_IN-1 : 0]data ,input [1 : 0]row_in, input [2 : 0]col_in, input [1 :
0]row_out, input [2 : 0]col_out,
output reg signed [W_OUT-1 : 0]out
 );
reg signed[7:0]A[1:0];
reg signed[7:0]B[2:0];
reg signed[15:0]result[1:0][2:0];
integer i,j;
always @ (posedge clk)
if(reset==0 && data_in==1)begin
if(mem_sel==0)begin
A[row_in] <=data;
end
if(mem_sel==1)begin
B[col_in]<=data;
end
for(i=0;i<2;i=i+1)begin
for(j=0;j<3;j=j+1)begin
result[i][j] =A[i]*B[j];
end
end
end
always @ (posedge clk)
if(reset==0 && data_in==1)begin
out=result[row_out][col_out];
end else begin
out=0;
end
endmodule
