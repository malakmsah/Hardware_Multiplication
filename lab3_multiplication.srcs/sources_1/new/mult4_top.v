`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2020 05:33:18 PM
// Design Name: 
// Module Name: mult4_top
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

module mult4_top (  
input wire CLK ,
input wire BTNC ,
input wire [7:0] SW ,
output wire [6:0] SEG ,
output wire [3:0] AN ,
output wire DP  
);
wire [15:0] x;
wire [7:0] p;

mult4 mm (
    .a(SW[7:4]),
	.b(SW[3:0]),
	.x(p)
);

assign x[15:12] = SW[7:4];		
assign x[11:8] = SW[3:0];		
assign x[7:0] = p;		

x7seg X1 (
    .x(x),
	.clk(CLK),
	.clr(BTNC),
	.a_to_g(SEG),
	.an(AN),
	.dp(DP)
);

endmodule