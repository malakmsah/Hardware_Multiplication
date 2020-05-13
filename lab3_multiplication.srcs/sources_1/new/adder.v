`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2020 11:28:34 PM
// Design Name: 
// Module Name: adder
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


module adder(
    input wire a ,
    input wire b ,
    input wire cin ,
    output reg s ,
    output reg cout
);
reg [1:0] temp;

always @(*)
    begin
        temp = {1'b0,a} + {1'b0,b} + {1'b0,cin};
        s = temp[0];
 	    cout = temp[1];
    end  
endmodule
