`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2021 22:48:04
// Design Name: 
// Module Name: decode_sram
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


module decode_sram(
    input address1,
    input address2,
    output reg Word0,
    output reg Word1,
    output reg Word2,
    output reg Word3,
    output reg Word4
    );
    always @(address1,address2)begin
        
    case({address1,address2})    
    2'b00   : Word0 <= 1'b1;
    2'b01   : Word1 <= 1'b1;
    2'b10   : Word2 <= 1'b1;
    2'b11   : Word3 <= 1'b1;
    endcase  
    end       
endmodule
