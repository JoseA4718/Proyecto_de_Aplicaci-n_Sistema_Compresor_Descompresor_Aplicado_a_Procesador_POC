# Enhanced ModelSim simulation script for performance analysis
# Run this with: vsim -do run_test.do

# Create work library
if {![file exists work]} {
    vlib work
}

# Compile all SystemVerilog files
echo "Compiling all SystemVerilog modules..."
vlog -sv *.sv

# Check compilation success
if {[string match "*Error*" [vmap]]} {
    echo "Compilation errors detected!"
    quit -f
}

# Start simulation with enhanced testbench
echo "Starting enhanced performance simulation..."
vsim -voptargs=+acc work.enhanced_processor_tb

# Add key performance signals to waveform
echo "Adding performance monitoring signals..."
add wave -divider "Control"
add wave -position insertpoint sim:/enhanced_processor_tb/clk
add wave -position insertpoint sim:/enhanced_processor_tb/rst
add wave -position insertpoint sim:/enhanced_processor_tb/switchStart

add wave -divider "Performance Counters"
add wave -position insertpoint sim:/enhanced_processor_tb/cycle_count
add wave -position insertpoint sim:/enhanced_processor_tb/instruction_count
add wave -position insertpoint sim:/enhanced_processor_tb/memory_access_count
add wave -position insertpoint sim:/enhanced_processor_tb/alu_operation_count

add wave -divider "Performance Metrics"
add wave -position insertpoint sim:/enhanced_processor_tb/cpi
add wave -position insertpoint sim:/enhanced_processor_tb/pipeline_utilization
add wave -position insertpoint sim:/enhanced_processor_tb/memory_bandwidth

add wave -divider "Processor Core"
add wave -position insertpoint sim:/enhanced_processor_tb/uut/pc_out
add wave -position insertpoint sim:/enhanced_processor_tb/uut/instruction
add wave -position insertpoint sim:/enhanced_processor_tb/uut/RegWrite_wb
add wave -position insertpoint sim:/enhanced_processor_tb/uut/MemWrite_mem
add wave -position insertpoint sim:/enhanced_processor_tb/uut/MemRead_mem

add wave -divider "Pipeline Stages"
add wave -position insertpoint sim:/enhanced_processor_tb/uut/pc_id
add wave -position insertpoint sim:/enhanced_processor_tb/uut/pc_ex
add wave -position insertpoint sim:/enhanced_processor_tb/uut/alu_res_ex
add wave -position insertpoint sim:/enhanced_processor_tb/uut/ALUOp_ex

add wave -divider "Instruction Classification"
add wave -position insertpoint sim:/enhanced_processor_tb/is_nop
add wave -position insertpoint sim:/enhanced_processor_tb/is_memory_instr
add wave -position insertpoint sim:/enhanced_processor_tb/is_alu_instr
add wave -position insertpoint sim:/enhanced_processor_tb/is_immediate_instr

# Configure wave window
configure wave -signalnamewidth 200
configure wave -valuecolwidth 80
wave zoom full

# Run simulation
echo "Running performance analysis..."
run -all

# Save results
write transcript simulation_log.txt

echo ""
echo "================================================================"
echo "Simulation Complete!"
echo "================================================================"
echo "Check the following outputs:"
echo "  - Console: Comprehensive performance report"
echo "  - performance_metrics.txt: Exported metrics data"
echo "  - enhanced_processor_test.vcd: Waveform file"
echo "  - simulation_log.txt: Complete simulation log"
echo "================================================================"