#!/usr/bin/env python3
"""
Automatic execution script for the Instruction Compressor System
Runs all modules in the correct order
"""

import subprocess
import sys
import os
import time

def run_command(script_name):
    """Runs a Python script and checks if it was successful"""
    print(f"\n{'='*60}")
    print(f"Running: {script_name}")
    print(f"{'='*60}")
    
    try:
        # Run the script and capture real-time output
        process = subprocess.Popen(
            [sys.executable, script_name],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            bufsize=1,
            universal_newlines=True
        )
        
        # Read output in real time
        while True:
            output = process.stdout.readline()
            if output == '' and process.poll() is not None:
                break
            if output:
                print(output.strip())
        
        # Wait for the process to finish
        return_code = process.wait()
        
        if return_code == 0:
            print(f"✓ {script_name} executed successfully")
            return True
        else:
            stderr = process.stderr.read()
            print(f"✗ Error running {script_name}:")
            print(f"Error code: {return_code}")
            if stderr:
                print(f"Error output: {stderr}")
            return False
            
    except FileNotFoundError:
        print(f"✗ File not found: {script_name}")
        return False
    except Exception as e:
        print(f"✗ Unexpected error running {script_name}: {e}")
        return False

def check_file_exists(file_path):
    """Checks if a file exists"""
    if os.path.exists(file_path):
        print(f"✓ {file_path} found")
        return True
    else:
        print(f"✗ {file_path} NOT found")
        return False

def main():
    """Main function that runs the entire pipeline"""
    scripts = [
        "compiler.py",
        "bin_hex.py", 
        "tokens.py",
        "transform.py"
    ]
    
    # Expected files between each step
    expected_files = [
        ("Input_files/test.txt", "Initial input file"),
        ("Input_files/binary.txt", "Compiler output"),
        ("Input_files/new_binary_file.txt", "Bin-hex converter output"),
        ("Input_files/code_tokens.txt", "Token compressor output"),
        ("Output_files/final_code.txt", "Final processed code"),
        ("Output_files/traduction_table.txt", "Translation table")
    ]
    
    print("--> Starting Instruction Compressor System")
    print("This script will sequentially run:")
    for i, script in enumerate(scripts, 1):
        print(f"  {i}. {script}")
    
    # Check that all scripts exist
    print(f"\n{'='*60}")
    print("Checking files...")
    print(f"{'='*60}")
    
    all_scripts_exist = True
    for script in scripts:
        if not os.path.exists(script):
            print(f"✗ Not found: {script}")
            all_scripts_exist = False
        else:
            print(f"✓ Found: {script}")
    
    if not all_scripts_exist:
        print(f"\n✗ Error: Some scripts are missing. Stopping the system.")
        sys.exit(1)
    
    # Check initial input file
    if not check_file_exists("Input_files/test.txt"):
        print(f"\n✗ Error: Input file Input_files/test.txt not found")
        print("Please make sure it exists before running the system.")
        sys.exit(1)
    
    # Run each script in order
    print(f"\n{'='*60}")
    print("Starting pipeline execution...")
    print(f"{'='*60}")
    
    start_time = time.time()
    
    for i, script in enumerate(scripts, 1):
        print(f"\n[{i}/{len(scripts)}] ", end="")
        if not run_command(script):
            print(f"\n✗ Error running {script}. Stopping the system.")
            sys.exit(1)
        
        # Small pause between scripts
        time.sleep(1)
    
    end_time = time.time()
    execution_time = end_time - start_time
    
    # Check generated files
    print(f"\n{'='*60}")
    print("Checking generated files...")
    print(f"{'='*60}")
    
    all_files_created = True
    for file_path, description in expected_files:
        if check_file_exists(file_path):
            # Show file size
            file_size = os.path.getsize(file_path)
            print(f"   Size: {file_size} bytes")
        else:
            all_files_created = False
    
    print(f"\n{'='*60}")
    if all_files_created:
        print("--> System executed completely!")
        print(f"-->  Total execution time: {execution_time:.2f} seconds")
        print("\n--> Files generated in the 'Output_files/' folder:")
        for file_path, description in expected_files[1:]:  # Exclude input file
            print(f"   • {os.path.basename(file_path)} - {description}")
    else:
        print("--> System executed with warnings")
        print("Some files were not generated correctly")
    
    print(f"{'='*60}")

if __name__ == "__main__":
    main()