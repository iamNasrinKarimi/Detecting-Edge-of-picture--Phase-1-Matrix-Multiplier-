`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:23:38 12/04/2020
// Design Name:   multiplier1
// Module Name:   C:/.Xilinx/matrix_multiplier1/test_multiplier1.v
// Project Name:  matrix_multiplier1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_multiplier1;

// Inputs
reg data_in;
reg mem_sel;
reg reset;
reg clk;
reg [7:0] data;
reg [1:0] row_in;
reg [2:0] col_in;
reg [1:0] row_out;
reg [2:0] col_out;
// Outputs
wire [15:0] out;
// Instantiate the Unit Under Test (UUT)
matrix_multiplier1 uut (
.data_in(data_in),
.mem_sel(mem_sel),
.reset(reset),
.clk(clk),
.data(data), 
.row_in(row_in),
.col_in(col_in),
.row_out(row_out),
.col_out(col_out),
.out(out)
);
initial begin
#20;
clk=1;
forever begin
#10 clk =!clk;
end
end
initial begin
#20;
data_in = 1;
mem_sel = 0;
reset = 0;
data = $random;
row_in = 0;
col_in = 0;
#20;
data_in = 1;
mem_sel = 0;
reset = 0;
data = $random;
row_in = 1;
col_in = 0;
#20;
data_in = 1;
mem_sel = 1;
reset = 0;
data = $random;
row_in = 0;
col_in = 0;
#20;
data_in = 1;
mem_sel = 1;
reset = 0;
data = $random;
row_in = 0;
col_in =1;
#20;
data_in = 1;
mem_sel = 1;
reset = 0;
data = $random;
row_in = 0;
col_in = 2;
#20;
row_out=0;
col_out=0;
#20;
row_out=0;
col_out=1;
#20;
row_out=0;
col_out=2;
#20;
row_out=1;
col_out=0;
#20;
row_out=1;
col_out=1;
#20;
row_out=1;
col_out=2;
end

endmodule

