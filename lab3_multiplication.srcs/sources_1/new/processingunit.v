`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2020 11:31:01 PM
// Design Name: 
// Module Name: processingunit
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


module processingunit(
    input wire prev ,
    input wire a ,
    input wire b ,
    input wire cin ,
    output wire s ,
    output wire cout
    );
    
    wire [0:0] x;
    
    assign x = a & b;
    adder ad(
        .a(prev),
        .b(x),
        .cin(cin),
        .s(s),
        .cout(cout)
    );
endmodule
