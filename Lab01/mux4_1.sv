module mux4_1(
    input logic [1:0] sel,           // Seleciona um dos 4 valores
    input logic [3:0] [31:0] entrada, // Vetor de 4 elementos de 32 bits
    output logic [31:0] saida        // Saída de 32 bits
);

    always_comb begin
        saida = entrada[sel];  // Seleciona o valor de entrada baseado no índice de sel
    end

endmodule