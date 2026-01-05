`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2025 10:31:38
// Design Name: 
// Module Name: alu8
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


module alu8(
input clk,rst,
input [7:0]a,b,
input [2:0]sel,
output reg [8:0]result
    );
  always@(posedge clk)
  if(rst)
  begin
    result<=0;
    end
  else
  case(sel)
  3'd0:result=a&b;
  3'd1:result=~(a&b);
  3'd2:result=a|b;
  3'd3:result=~(a|b);
  3'd4:result=a^b;
  3'd5:result=~(a^b);
  3'd6:result=a+b;
  3'd7:result=a-b;
  endcase
endmodule
