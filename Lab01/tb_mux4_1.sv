module tb_mux4_1;

    logic [1:0] sel;          
    logic [3:0][31:0] entrada;
    logic [31:0] saida;      
   
    mux4_1 uut (
        .sel(sel),        
        .entrada(entrada),
        .saida(saida)      
    );

    initial begin

        // teste 1
        entrada = '{32'd100001, 32'd200002, 32'd300003, 32'd400004};
        for (int s = 0; s < 4; s++) begin
            sel = s;
            #10;
            $display("Entradas: [%d, %d, %d, %d] | sel=%0d | saida=%0d",
                     entrada[0], entrada[1], entrada[2], entrada[3], sel, saida);
        end

        // teste 2
        entrada = '{32'd50001, 32'd60002, 32'd70003, 32'd80004};
        for (int s = 0; s < 4; s++) begin
            sel = s;
            #10;
            $display("Entradas: [%d, %d, %d, %d] | sel=%0d | saida=%0d",
                     entrada[0], entrada[1], entrada[2], entrada[3], sel, saida);
        end

        // teste 3
        entrada = '{32'd65378, 32'd523645, 32'd62534, 32'd9873};
        for (int s = 0; s < 4; s++) begin
            sel = s;
            #10;
            $display("Entradas: [%d, %d, %d, %d] | sel=%0d | saida=%0d",
                     entrada[0], entrada[1], entrada[2], entrada[3], sel, saida);
        end

        // teste 4
        entrada = '{32'd123456, 32'd987654, 32'd112233, 32'd445566};
        for (int s = 0; s < 4; s++) begin
            sel = s;
            #10;
            $display("Entradas: [%d, %d, %d, %d] | sel=%0d | saida=%0d",
                     entrada[0], entrada[1], entrada[2], entrada[3], sel, saida);
        end

        $finish;
    end

endmodule