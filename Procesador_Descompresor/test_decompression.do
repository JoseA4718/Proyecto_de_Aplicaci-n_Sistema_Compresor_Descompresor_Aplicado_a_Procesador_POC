# Simple decompression test script
vlog -sv decompression_module.sv simple_decompression_test.sv
vsim work.simple_decompression_test
run -all
quit