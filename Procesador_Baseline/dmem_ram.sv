// Simple data memory module for baseline processor
module dmem_ram (
    input logic switchStart,
    input logic clk,
    input logic we,           // Write enable
    input logic [31:0] addr,  // Address
    input logic [31:0] wd,    // Write data
    output logic [31:0] rd    // Read data
);

    // Simple 1024-word data memory
    logic [31:0] memory [1023:0];
    
    // Memory read/write operations
    always_ff @(posedge clk) begin
        if (switchStart) begin
            if (we && addr < 1024) begin
                memory[addr] <= wd;
            end
        end
    end
    
    // Continuous read
    assign rd = (addr < 1024) ? memory[addr] : 32'h0;

endmodule