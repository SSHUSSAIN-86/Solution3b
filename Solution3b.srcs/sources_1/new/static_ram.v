`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2021 22:46:22
// Design Name: 
// Module Name: static_ram
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


module static_ram(
    input select,
    input readWrite,
    input input_1,
    output reg output_1
    );
    reg memory = 1'b0;
        always @(select or readWrite or input_1)begin
        if(select) begin
            if(readWrite==1)begin                        
                output_1 <= memory; 
            end
            else if(readWrite==0) begin
                memory <= input_1;
                output_1 <= memory;        
            end
        end
        end
endmodule
