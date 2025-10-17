// Enhanced testbench with comprehensive performance monitoring
// Supports complex instruction analysis and detailed metrics collection
`timescale 1ns / 1ps

module enhanced_processor_tb;

    // Testbench signals
    logic clk, rst, switchStart;
    
    // Performance monitoring counters
    logic [31:0] cycle_count;
    logic [31:0] instruction_count;
    logic [31:0] memory_access_count;
    logic [31:0] memory_read_count;
    logic [31:0] memory_write_count;
    logic [31:0] register_write_count;
    logic [31:0] alu_operation_count;
    logic [31:0] branch_count;
    logic [31:0] nop_count;
    logic [31:0] consecutive_nop_count;   // Track consecutive NOPs for auto-stop
    logic program_ended;                  // Flag to indicate program completion
    
    // Performance metrics (real calculations)
    real cpi;
    real ipc;
    real memory_bandwidth;
    real instruction_throughput;
    real pipeline_utilization;
    real memory_access_rate;
    
    // Latency measurements
    logic [31:0] first_instruction_cycle;
    logic [31:0] last_instruction_cycle;
    logic [31:0] execution_latency;
    
    // Previous cycle values for edge detection
    logic prev_reg_write;
    logic prev_mem_write;
    logic prev_mem_read;
    
    // Instruction classification
    logic is_nop;
    logic is_memory_instr;
    logic is_branch_instr;
    logic is_alu_instr;
    logic is_immediate_instr;
    
    // Configurable parameters
    parameter MAX_SIMULATION_CYCLES = 10000;  // Safety limit
    parameter MIN_EXECUTION_CYCLES = 500;     // Minimum before auto-stop
    parameter REPORT_INTERVAL = 1000;
    parameter DETAIL_LOG_CYCLES = 50;
    parameter AUTO_STOP_NOP_COUNT = 20;       // Stop after 20 consecutive NOPs
    
    // Instantiate the processor
    pipeline_processor uut (
        .clk(clk),
        .rst(rst), 
        .switchStart(switchStart)
    );
    
    // Clock generation - 10ns period (100MHz)
    always #5 clk = ~clk;
    
    // Instruction classification logic
    always_comb begin
        is_nop = (uut.instruction == 32'h80000000);
        is_memory_instr = uut.MemRead_mem || uut.MemWrite_mem;
        is_branch_instr = uut.JumpI_ex || uut.JumpCI_ex || uut.JumpCD_ex;
        is_immediate_instr = (uut.instruction[31:30] == 2'b10 && uut.instruction[29] == 1'b1);
        is_alu_instr = (uut.ALUOp_ex != 3'b000) && !is_memory_instr && !is_branch_instr && !is_nop;
    end
    
    // Performance counter logic
    always_ff @(posedge clk) begin
        if (rst) begin
            cycle_count <= 0;
            instruction_count <= 0;
            memory_access_count <= 0;
            memory_read_count <= 0;
            memory_write_count <= 0;
            register_write_count <= 0;
            alu_operation_count <= 0;
            branch_count <= 0;
            nop_count <= 0;
            consecutive_nop_count <= 0;
            program_ended <= 0;
            first_instruction_cycle <= 0;
            last_instruction_cycle <= 0;
            prev_reg_write <= 0;
            prev_mem_write <= 0;
            prev_mem_read <= 0;
        end else if (switchStart && !program_ended) begin
            cycle_count <= cycle_count + 1;
            
            // Count instructions (skip initial pipeline fill cycles)
            if (cycle_count > 5) begin
                if (!is_nop && uut.instruction != 0) begin
                    instruction_count <= instruction_count + 1;
                    consecutive_nop_count <= 0;  // Reset consecutive NOP counter
                    if (first_instruction_cycle == 0) 
                        first_instruction_cycle <= cycle_count;
                    last_instruction_cycle <= cycle_count;
                end else if (is_nop) begin
                    nop_count <= nop_count + 1;
                    consecutive_nop_count <= consecutive_nop_count + 1;
                    
                    // Auto-stop detection: if we hit many consecutive NOPs and have executed some instructions
                    if (consecutive_nop_count >= AUTO_STOP_NOP_COUNT && 
                        instruction_count > 10 && 
                        cycle_count > MIN_EXECUTION_CYCLES) begin
                        program_ended <= 1;
                        $display("\n*** AUTO-STOP: Detected end of program at cycle %0d ***", cycle_count);
                        $display("*** %0d consecutive NOPs encountered ***", consecutive_nop_count);
                    end
                end
            end
            
            // Memory access counting (edge detection for accurate counting)
            if (uut.MemWrite_mem && !prev_mem_write) begin
                memory_access_count <= memory_access_count + 1;
                memory_write_count <= memory_write_count + 1;
            end
            if (uut.MemRead_mem && !prev_mem_read) begin
                memory_access_count <= memory_access_count + 1;
                memory_read_count <= memory_read_count + 1;
            end
            
            // Register write counting
            if (uut.RegWrite_wb && !prev_reg_write) begin
                register_write_count <= register_write_count + 1;
            end
            
            // ALU operation counting
            if (is_alu_instr) begin
                alu_operation_count <= alu_operation_count + 1;
            end
            
            // Branch counting
            if (is_branch_instr) begin
                branch_count <= branch_count + 1;
            end
            
            // Store previous values for edge detection
            prev_reg_write <= uut.RegWrite_wb;
            prev_mem_write <= uut.MemWrite_mem;
            prev_mem_read <= uut.MemRead_mem;
        end
    end
    
    // Calculate performance metrics
    always_comb begin
        if (instruction_count > 0) begin
            cpi = real'(cycle_count) / real'(instruction_count);
            ipc = real'(instruction_count) / real'(cycle_count);
            instruction_throughput = ipc * 100.0; // Instructions per 100 cycles
            pipeline_utilization = real'(instruction_count) / real'(cycle_count) * 100.0;
        end else begin
            cpi = 0.0;
            ipc = 0.0;
            instruction_throughput = 0.0;
            pipeline_utilization = 0.0;
        end
        
        if (cycle_count > 0) begin
            memory_bandwidth = real'(memory_access_count) / real'(cycle_count) * 1000.0; // Per 1000 cycles
            memory_access_rate = real'(memory_access_count) / real'(cycle_count) * 100.0;
        end else begin
            memory_bandwidth = 0.0;
            memory_access_rate = 0.0;
        end
        
        execution_latency = last_instruction_cycle - first_instruction_cycle;
    end
    
    // Function to get instruction type string for logging
    function string get_instruction_type(input [31:0] instr);
        if (instr == 32'h80000000) 
            return "NOP";
        else if (instr[31:30] == 2'b10 && instr[29] == 1'b1) 
            return "IMMED";
        else if (instr[31:30] == 2'b10 && instr[29] == 1'b0) 
            return "REG_OP";
        else if (instr[31:28] == 4'h6) 
            return "STORE";
        else if (instr[31:28] == 4'h4) 
            return "LOAD";
        else 
            return "OTHER";
    endfunction
    
    // Test stimulus - intelligent auto-stop for meaningful analysis
    initial begin
        $display("================================================================");
        $display("ENHANCED PROCESSOR PERFORMANCE ANALYSIS");
        $display("================================================================");
        $display("Configuration:");
        $display("  - Max Simulation: %0d cycles (safety limit)", MAX_SIMULATION_CYCLES);
        $display("  - Auto-stop after: %0d consecutive NOPs", AUTO_STOP_NOP_COUNT);
        $display("  - Progress Reports: Every %0d cycles", REPORT_INTERVAL);
        $display("  - Instruction Set: Dense program (no wasted NOPs)");
        $display("================================================================");
        
        // Initialize signals
        clk = 0;
        rst = 1;
        switchStart = 0;
        
        // Reset sequence
        #50;
        rst = 0;
        #20;
        switchStart = 1;
        
        $display("Processor started at time %0t", $time);
        $display("Loading dense instruction set for meaningful analysis...\n");
        
        // Simple wait for program completion or timeout
        wait(program_ended || cycle_count >= MAX_SIMULATION_CYCLES);
        
        if (cycle_count >= MAX_SIMULATION_CYCLES && !program_ended) begin
            $display("\n*** TIMEOUT: Reached maximum simulation cycles ***");
        end
        
        #100; // Allow a few more cycles for cleanup
        
        // Generate comprehensive performance report
        generate_comprehensive_report();
        
        $display("\nSimulation completed at time %0t", $time);
        $finish;
    end
    
    // Periodic progress monitoring
    always @(posedge clk) begin
        if (!rst && switchStart) begin
            // Display progress every REPORT_INTERVAL cycles
            if (cycle_count % REPORT_INTERVAL == 0 && cycle_count > 0) begin
                $display("\n--- Progress Report: Cycle %0d ---", cycle_count);
                $display("Instructions: %0d | CPI: %0.3f | Utilization: %0.1f%%", 
                        instruction_count, cpi, pipeline_utilization);
                $display("Memory: %0d accesses | Bandwidth: %0.2f/1000cyc | PC: %h", 
                        memory_access_count, memory_bandwidth, uut.pc_out);
            end
        end
    end
    
    // Detailed instruction monitoring for debugging (first cycles only)
    always @(posedge clk) begin
        if (!rst && switchStart && cycle_count <= DETAIL_LOG_CYCLES) begin
            if (!is_nop && uut.instruction != 0) begin
                $display("C%4d: PC=%2h Instr=%8h [%8s] RW=%b MW=%b MR=%b ALU=%b", 
                        cycle_count, uut.pc_out, uut.instruction,
                        get_instruction_type(uut.instruction),
                        uut.RegWrite_wb, uut.MemWrite_mem, uut.MemRead_mem, is_alu_instr);
            end
        end
    end
    
    // Monitor key execution milestones
    always @(posedge clk) begin
        if (!rst && switchStart) begin
            // Detect memory operation phases
            if (uut.MemWrite_mem && memory_write_count == 1) begin
                $display("*** First memory write detected at cycle %0d ***", cycle_count);
            end
            if (uut.MemRead_mem && memory_read_count == 1) begin
                $display("*** First memory read detected at cycle %0d ***", cycle_count);
            end
            
            // Detect high activity phases
            if (cycle_count % 1000 == 0 && instruction_count > 100) begin
                if (pipeline_utilization > 80.0) begin
                    $display("*** High utilization phase: %0.1f%% at cycle %0d ***", 
                            pipeline_utilization, cycle_count);
                end
            end
        end
    end
    
    // Comprehensive performance analysis report
    task generate_comprehensive_report();
        real avg_mem_per_instr, avg_alu_per_instr, avg_reg_per_instr;
        real mem_read_ratio, mem_write_ratio;
        string performance_class, utilization_class;
        
        // Calculate derived metrics
        if (instruction_count > 0) begin
            avg_mem_per_instr = real'(memory_access_count) / real'(instruction_count);
            avg_alu_per_instr = real'(alu_operation_count) / real'(instruction_count);
            avg_reg_per_instr = real'(register_write_count) / real'(instruction_count);
        end else begin
            avg_mem_per_instr = 0.0;
            avg_alu_per_instr = 0.0;
            avg_reg_per_instr = 0.0;
        end
        
        if (memory_access_count > 0) begin
            mem_read_ratio = real'(memory_read_count) / real'(memory_access_count) * 100.0;
            mem_write_ratio = real'(memory_write_count) / real'(memory_access_count) * 100.0;
        end else begin
            mem_read_ratio = 0.0;
            mem_write_ratio = 0.0;
        end
        
        // Performance classification
        if (cpi < 1.5) performance_class = "EXCELLENT";
        else if (cpi < 2.5) performance_class = "GOOD";
        else if (cpi < 4.0) performance_class = "MODERATE";
        else performance_class = "NEEDS_OPTIMIZATION";
        
        if (pipeline_utilization > 80.0) utilization_class = "EXCELLENT";
        else if (pipeline_utilization > 60.0) utilization_class = "GOOD";
        else if (pipeline_utilization > 40.0) utilization_class = "MODERATE";
        else utilization_class = "LOW";
        
        $display("\n================================================================");
        $display("COMPREHENSIVE PERFORMANCE ANALYSIS REPORT");
        $display("================================================================");
        
        $display("\n📊 EXECUTION SUMMARY:");
        $display("   Total Execution Cycles:    %10d", cycle_count);
        $display("   Instructions Executed:     %10d", instruction_count);
        $display("   NOPs Encountered:          %10d", nop_count);
        $display("   Execution Latency:         %10d cycles", execution_latency);
        $display("   First Instruction:         Cycle %d", first_instruction_cycle);
        $display("   Last Instruction:          Cycle %d", last_instruction_cycle);
        
        $display("\n⚡ CORE PERFORMANCE METRICS:");
        $display("   CPI (Cycles Per Instruction): %8.3f [%s]", cpi, performance_class);
        $display("   IPC (Instructions Per Cycle): %8.3f", ipc);
        $display("   Pipeline Utilization:         %8.2f%% [%s]", pipeline_utilization, utilization_class);
        $display("   Instruction Throughput:       %8.2f instr/100cyc", instruction_throughput);
        
        $display("\n💾 MEMORY SUBSYSTEM ANALYSIS:");
        $display("   Total Memory Accesses:        %10d", memory_access_count);
        $display("   Memory Reads:                 %10d (%0.1f%%)", memory_read_count, mem_read_ratio);
        $display("   Memory Writes:                %10d (%0.1f%%)", memory_write_count, mem_write_ratio);
        $display("   Memory Bandwidth:             %8.2f accesses/1000cyc", memory_bandwidth);
        $display("   Memory Access Rate:           %8.2f%% of total cycles", memory_access_rate);
        $display("   Avg Memory Accesses/Instr:   %8.3f", avg_mem_per_instr);
        
        $display("\n🔧 OPERATION BREAKDOWN:");
        $display("   Register File Writes:         %10d", register_write_count);
        $display("   ALU Operations:               %10d", alu_operation_count);
        $display("   Branch Operations:            %10d", branch_count);
        $display("   Avg Register Writes/Instr:   %8.3f", avg_reg_per_instr);
        $display("   Avg ALU Operations/Instr:    %8.3f", avg_alu_per_instr);
        
        $display("\n📈 EFFICIENCY ANALYSIS:");
        if (memory_access_count > 0) begin
            $display("   Cycles per Memory Access:     %8.3f", real'(cycle_count)/real'(memory_access_count));
        end
        $display("   Active vs Idle Cycle Ratio:   %8.2f%% active", pipeline_utilization);
        $display("   NOP Overhead:                 %8.2f%% of total cycles", real'(nop_count)/real'(cycle_count)*100.0);
        
        $display("\n🎯 PERFORMANCE ASSESSMENT:");
        $display("   Overall Rating: %s (CPI: %0.3f)", performance_class, cpi);
        $display("   Pipeline Efficiency: %s (%0.1f%% utilization)", utilization_class, pipeline_utilization);
        
        if (cpi > 3.0) begin
            $display("   💡 Recommendation: Consider optimizing for better CPI");
        end
        if (pipeline_utilization < 50.0) begin
            $display("   💡 Recommendation: Pipeline underutilized, check for stalls");
        end
        if (memory_access_rate > 30.0) begin
            $display("   💡 Note: High memory activity - %0.1f%% of cycles", memory_access_rate);
        end
        
        $display("\n📁 DATA EXPORT:");
        export_metrics_to_file();
        
        $display("================================================================");
    endtask
    
    // Export detailed metrics to file for external analysis
    task export_metrics_to_file();
        integer file;
        file = $fopen("performance_metrics.txt", "w");
        if (file) begin
            $fwrite(file, "# Enhanced Processor Performance Metrics\n");
            $fwrite(file, "# Generated at simulation time: %0t\n", $time);
            $fwrite(file, "\n# Raw Counters\n");
            $fwrite(file, "total_cycles=%d\n", cycle_count);
            $fwrite(file, "total_instructions=%d\n", instruction_count);
            $fwrite(file, "memory_accesses=%d\n", memory_access_count);
            $fwrite(file, "memory_reads=%d\n", memory_read_count);
            $fwrite(file, "memory_writes=%d\n", memory_write_count);
            $fwrite(file, "register_writes=%d\n", register_write_count);
            $fwrite(file, "alu_operations=%d\n", alu_operation_count);
            $fwrite(file, "branch_operations=%d\n", branch_count);
            $fwrite(file, "nops=%d\n", nop_count);
            $fwrite(file, "execution_latency=%d\n", execution_latency);
            $fwrite(file, "\n# Performance Metrics\n");
            $fwrite(file, "cpi=%f\n", cpi);
            $fwrite(file, "ipc=%f\n", ipc);
            $fwrite(file, "pipeline_utilization=%f\n", pipeline_utilization);
            $fwrite(file, "memory_bandwidth=%f\n", memory_bandwidth);
            $fwrite(file, "memory_access_rate=%f\n", memory_access_rate);
            $fwrite(file, "instruction_throughput=%f\n", instruction_throughput);
            $fclose(file);
            $display("   ✓ Metrics exported to performance_metrics.txt");
        end else begin
            $display("   ✗ Error: Could not create performance_metrics.txt");
        end
    endtask
    
    // Waveform generation for detailed analysis
    initial begin
        $dumpfile("enhanced_processor_test.vcd");
        $dumpvars(0, enhanced_processor_tb);
        
        // Performance monitoring signals
        $dumpvars(1, cycle_count, instruction_count, memory_access_count);
        $dumpvars(1, cpi, pipeline_utilization, memory_bandwidth);
        
        // Core processor signals
        $dumpvars(1, uut.pc_out, uut.instruction);
        $dumpvars(1, uut.RegWrite_wb, uut.MemWrite_mem, uut.MemRead_mem);
        $dumpvars(1, uut.ALUOp_ex, uut.alu_res_wb);
        
        // Pipeline stage signals for detailed analysis
        $dumpvars(1, uut.pc_id, uut.pc_ex);
        $dumpvars(1, uut.alu_res_ex, uut.mem_data_out_wb);
        
        // Instruction classification signals
        $dumpvars(1, is_nop, is_memory_instr, is_alu_instr, is_immediate_instr);
    end

endmodule