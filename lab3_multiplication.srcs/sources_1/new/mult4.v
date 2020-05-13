`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2020 05:24:12 PM
// Design Name: 
// Module Name: mult4
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


module mult4(
input wire [3:0] a ,
input wire [3:0] b ,
output wire [7:0] x 
);

wire [11:0] c;
wire [11:0] s;

wire [3:0] a0b;
wire [3:0] a1b;
wire [3:0] a2b;
wire [3:0] a3b;

assign a0b = {a[0], a[0], a[0], a[0]} & b;
assign a1b = {a[1], a[1], a[1], a[1]} & b;
assign a2b = {a[2], a[2], a[2], a[2]} & b;
assign a3b = {a[3], a[3], a[3], a[3]} & b;

// x[1]
processingunit pu0(.prev(a1b[0]), .a(a[0]), .b(b[1]), .cin(0), .s(s[0]), .cout(c[0]));

// x[2]
processingunit pu1(.prev(a2b[0]), .a(a[1]), .b(b[1]), .cin(c[0]), .s(s[1]), .cout(c[1]));
processingunit pu2(.prev(s[1]), .a(a[0]), .b(b[2]), .cin(0), .s(s[2]), .cout(c[2]));

// x[3]
processingunit pu3(.prev(a3b[0]), .a(a[2]), .b(b[1]), .cin(c[1]), .s(s[3]), .cout(c[3]));
processingunit pu4(.prev(s[3]), .a(a[1]), .b(b[2]), .cin(c[2]), .s(s[4]), .cout(c[4]));
processingunit pu5(.prev(s[4]), .a(a[0]), .b(b[3]), .cin(0), .s(s[5]), .cout(c[5]));

// x[4]
processingunit pu6(.prev(0), .a(a[3]), .b(b[1]), .cin(c[3]), .s(s[6]), .cout(c[6]));
processingunit pu7(.prev(s[6]), .a(a[2]), .b(b[2]), .cin(c[4]), .s(s[7]), .cout(c[7]));
processingunit pu8(.prev(s[7]), .a(a[1]), .b(b[3]), .cin(c[5]), .s(s[8]), .cout(c[8]));

// x[5]
processingunit pu9(.prev(c[6]), .a(a[3]), .b(b[2]), .cin(c[7]), .s(s[9]), .cout(c[9]));
processingunit pu10(.prev(s[9]), .a(a[2]), .b(b[3]), .cin(c[8]), .s(s[10]), .cout(c[10]));

// x[6] & x[7]
processingunit pu11(.prev(c[9]), .a(a[3]), .b(b[3]), .cin(c[9]), .s(s[11]), .cout(c[11]));

// final result
assign x[0] = a0b[0];
assign x[1] = s[0];	
assign x[2] = s[2];	
assign x[3] = s[5];	
assign x[4] = s[8];	
assign x[5] = s[10];
assign x[6] = s[11];	
assign x[7] = c[11];
	
endmodule