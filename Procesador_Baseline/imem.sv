// Simple instruction memory decompressor replacement
module imem (
    input logic [31:0] pc,
    output logic [31:0] instruction
);

    // Simple instruction memory
    logic [31:0] imem_ROM[399:0];
    
    initial begin
        // Read instructions from file
        $readmemh("instructions.txt", imem_ROM);
    end
    
    // Output instruction based on PC
    assign instruction = (pc < 400) ? imem_ROM[pc] : 32'h80000000; // NOP for out of bounds

endmodule