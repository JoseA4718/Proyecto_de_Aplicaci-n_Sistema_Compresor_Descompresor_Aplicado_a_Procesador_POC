# ARM32 Compression System - Main controller
# Complete pipeline for ARM32 instruction compression and decompression

import sys
import os
from datetime import datetime

def print_header():
    """Print system header"""
    print("=" * 60)
    print("    ARM32 INSTRUCTION COMPRESSION SYSTEM")
    print("    Compressor/Decompressor for ARM32 Processor")
    print("=" * 60)
    print(f"Execution started: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    print()

def print_stage(stage_name, stage_num, total_stages):
    """Print stage information"""
    print(f"\n[Stage {stage_num}/{total_stages}] {stage_name}")
    print("-" * 50)

def run_stage(script_name, description):
    """Run a pipeline stage and handle errors"""
    try:
        print(f"Executing: {script_name}")
        result = os.system(f"python {script_name}")
        if result == 0:
            print(f"✅ {description} completed successfully")
            return True
        else:
            print(f"❌ {description} failed with error code {result}")
            return False
    except Exception as e:
        print(f"❌ Error running {script_name}: {e}")
        return False

def check_input_file():
    """Check if input file exists"""
    input_files = [
        "Input_files/test.txt",
        "Input_files/arm32_test.txt"
    ]
    
    for file_path in input_files:
        if os.path.exists(file_path):
            print(f"✅ Found input file: {file_path}")
            return file_path
    
    print("❌ No input file found. Available options:")
    print("  - Input_files/test.txt (custom ISA)")
    print("  - Input_files/arm32_test.txt (ARM32 assembly)")
    return None

def display_results():
    """Display compression results and statistics"""
    print(f"\n[RESULTS] ARM32 Compression System Results")
    print("=" * 50)
    
    files_to_check = [
        ("ARM32 Assembly", "Output_files/arm32_assembly.txt"),
        ("ARM32 Binary", "Output_files/arm32_binary.txt"),
        ("Tokenized Code", "Output_files/arm32_tokens.txt"),
        ("Translation Table", "Output_files/arm32_translation_table.txt"),
        ("Final Decompressed", "Output_files/arm32_final_code.txt")
    ]
    
    print("\nGenerated Files:")
    for name, path in files_to_check:
        if os.path.exists(path):
            size = os.path.getsize(path)
            print(f"✅ {name:<20}: {path} ({size} bytes)")
        else:
            print(f"❌ {name:<20}: {path} (not found)")
    
    # Calculate and display compression statistics
    try:
        original_size = os.path.getsize("Output_files/arm32_binary.txt")
        compressed_size = os.path.getsize("Output_files/arm32_tokens.txt")
        compression_ratio = ((original_size - compressed_size) / original_size) * 100
        
        print(f"\nCompression Summary:")
        print(f"Original ARM32 binary size:  {original_size:,} bytes")
        print(f"Compressed (tokenized) size: {compressed_size:,} bytes")
        print(f"Space saved:                 {original_size - compressed_size:,} bytes")
        print(f"Compression ratio:           {compression_ratio:.2f}%")
        
        if compression_ratio > 50:
            print("🎉 Excellent compression achieved!")
        elif compression_ratio > 30:
            print("👍 Good compression achieved!")
        else:
            print("⚠️  Moderate compression achieved.")
            
    except Exception as e:
        print(f"Could not calculate compression statistics: {e}")

def main():
    """Main system controller"""
    print_header()
    
    # Check if input file exists
    input_file = check_input_file()
    if not input_file:
        print("\n❌ System cannot proceed without input file.")
        sys.exit(1)
    
    # Pipeline stages
    stages = [
        ("arm32_compiler.py", "ARM32 Compilation", "Convert assembly to ARM32 binary"),
        ("arm32_tokens.py", "ARM32 Tokenization", "Analyze patterns and create tokens"),
        ("arm32_transform.py", "ARM32 Decompression", "Verify compression integrity")
    ]
    
    total_stages = len(stages)
    failed_stages = []
    
    # Execute pipeline
    for i, (script, stage_name, description) in enumerate(stages, 1):
        print_stage(stage_name, i, total_stages)
        
        success = run_stage(script, description)
        if not success:
            failed_stages.append(stage_name)
            print(f"\n❌ Pipeline failed at stage {i}: {stage_name}")
            break
    
    # Display results
    if not failed_stages:
        print(f"\n🎉 ARM32 Compression Pipeline completed successfully!")
        display_results()
        
        print(f"\n[NEXT STEPS]")
        print("You can now:")
        print("• Examine the tokenized file: Output_files/arm32_tokens.txt")
        print("• Check the translation table: Output_files/arm32_translation_table.txt")
        print("• Verify the decompressed output: Output_files/arm32_final_code.txt")
        print("• Modify the input file and run the system again")
        
    else:
        print(f"\n❌ Pipeline failed. Failed stages: {', '.join(failed_stages)}")
        print("Please check the error messages above and fix any issues.")
    
    print(f"\nExecution finished: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    print("=" * 60)

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print(f"\n\n⚠️  System interrupted by user.")
        print("Partial results may be available in Output_files/")
    except Exception as e:
        print(f"\n❌ Unexpected error: {e}")
        sys.exit(1)