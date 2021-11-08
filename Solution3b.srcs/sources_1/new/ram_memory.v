`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2021 22:56:01
// Design Name: 
// Module Name: ram_memory
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


module ram_memory(
    
    input [1:0]address,
    input enable,
    input readwrite,
    input input_1,
    input input_2,
    input input_3,
    input input_4,
    output reg output_1,
    output reg output_2,   
    output reg output_3,
    output reg output_4    
    );
    
    wire t_output_1;
    wire t_output_2;
    wire t_output_3;
    wire t_output_4;
    
    wire t_output_5;
    wire t_output_6;
    wire t_output_7;
    wire t_output_8;
    
    wire t_output_9;
    wire t_output_10;
    wire t_output_11;
    wire t_output_12;
    
    wire t_output_13;
    wire t_output_14;
    wire t_output_15;
    wire t_output_16;
    
    wire Word0;
    wire Word1;
    wire Word2;
    wire Word3; 
    
    decode_sram d1(address[0],address[1],Word0,Word1,Word2,Word3);
    
    static_ram s1(Word0, readwrite, input_1, t_output_1);
    static_ram s2(Word1, readwrite, input_2, t_output_2);
    static_ram s3(Word2, readwrite, input_3, t_output_3);
    static_ram s4(Word3, readwrite, input_4, t_output_4);
    
    static_ram s5(Word0, readwrite, input_1, t_output_5);
    static_ram s6(Word1, readwrite, input_2, t_output_6);
    static_ram s7(Word2, readwrite, input_3, t_output_7);
    static_ram s8(Word3, readwrite, input_4, t_output_8);   
    
    static_ram s9(Word0, readwrite, input_1, t_output_9);
    static_ram s10(Word0, readwrite, input_1, t_output_10);
    static_ram s11(Word0, readwrite, input_1, t_output_11);
    static_ram s12(Word0, readwrite, input_1, t_output_12);
    
    static_ram s13(Word0, readwrite, input_1, t_output_13);
    static_ram s14(Word1, readwrite, input_1, t_output_14);
    static_ram s15(Word2, readwrite, input_1, t_output_15);
    static_ram s16(Word3, readwrite, input_1, t_output_16); 
  
      
    always @(address,enable,readwrite,input_1,input_2,input_3,input_4,Word0,Word1,Word2,Word3)
    begin
    output_1 <= t_output_1 | t_output_5 | t_output_9 | t_output_13;
    output_2 <= t_output_2 | t_output_6 | t_output_10 | t_output_14;
    output_3 <= t_output_3 | t_output_7 | t_output_11 | t_output_15;
    output_4 <= t_output_4 | t_output_8 | t_output_12 | t_output_16;   
    
    end 
   
endmodule
