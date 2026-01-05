`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2025 10:45:42
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;

reg clk;
reg rst;
reg [7:0] a, b;
reg [2:0] sel;
wire [8:0] result;

alu8 uut (
    .clk(clk),
    .rst(rst),
    .a(a),
    .b(b),
    .sel(sel),
    .result(result)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    a   = 0;
    b   = 0;
    sel = 0;

    $dumpfile("alu_tb.vcd");
    $dumpvars(0, alu_tb);

    #12 rst = 0;

    #10 a = 8'd3; b = 8'd4; sel = 3'd0;
    #10 a = 8'd3; b = 8'd4; sel = 3'd6;
    #10 a = 8'd3; b = 8'd4; sel = 3'd7;

    #100 $finish;
end

endmodule

