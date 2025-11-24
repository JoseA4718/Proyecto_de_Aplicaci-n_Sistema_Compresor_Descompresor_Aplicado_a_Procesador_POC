// Simple decompression module test
`timescale 1ns / 1ps

module simple_decompression_test;

    logic [31:0] pc;
    logic [31:0] instruction;
    
    // Instantiate the decompression module
    decompression_module uut (
        .pc(pc),
        .instruction(instruction)
    );
    
    initial begin
        $display("================================================================");
        $display("DECOMPRESSION MODULE TEST");
        $display("================================================================");
        
        // Test a few PC values to see the decompression working
        for (int i = 0; i < 30; i++) begin
            pc = i;
            #1; // Small delay for combinational logic
            
            $display("PC: %2d | Raw: %8h | Decompressed: %8h | %s", 
                     pc, 
                     uut.final_code[pc], 
                     instruction,
                     (uut.final_code[pc] < 32'h10) ? "TOKEN" : "REGULAR");
            
            // Check if it's a token (< 0x10) and show translation
            if (uut.final_code[pc] < 32'h10) begin
                $display("         -> Token %0d detected, translated to: %h", 
                         uut.final_code[pc], instruction);
            end
        end
        
        $display("\n================================================================");
        $display("TRANSLATION TABLE CONTENT:");
        $display("================================================================");
        for (int i = 0; i < 5; i++) begin
            $display("Token %0d -> %h", i, uut.translator_table[i]);
        end
        
        $display("\nTest completed");
        $finish;
    end

endmodule