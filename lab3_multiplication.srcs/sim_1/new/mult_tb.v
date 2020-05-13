`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2020 08:14:22 PM
// Design Name: 
// Module Name: mult_tb
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


module mult_tb();

reg [3:0] a;
reg [3:0] b;
wire [7:0] x; 

mult4 mtb(.a(a), .b(b), .x(x));

initial
begin
a=8'b0001;
b=8'b0001;
#10

a=8'b0010;
b=8'b0010;
#10

a=8'b0100;
b=8'b0100;
#10

a=8'b1000;
b=8'b1000;
#10

a=8'b1111;
b=8'b1111;
#10

$finish;
end

endmodule
