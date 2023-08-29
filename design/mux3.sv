`timescale 1ns / 1ps

module mux3 #(
    parameter WIDTH = 32
) (
    input logic [WIDTH-1:0] aluR,
    MemRead, Pc_four,
    input logic MemtoReg, JalSel,
    output logic [WIDTH-1:0] y
);

  assign y = JalSel ? Pc_four : MemtoReg ? MemRead : aluR;

endmodule