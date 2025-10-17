# ARM32 Transform - Decompression system for ARM32 tokenized instructions

def read_and_transform_arm32(input_file, code_file, table_file):
    """
    Read ARM32 tokenized file and transform it back to original binary
    """
    code_with_tokens = []
    translation_table = {}
    reading_code = None

    # Read the tokenized file
    with open(input_file, 'r') as archivo:
        for linea in archivo:
            linea_stripped = linea.strip()
            if linea_stripped.startswith("ARM32 Code with tokens:"):
                reading_code = True
                continue
            elif linea_stripped.startswith("ARM32 Translation table:"):
                reading_code = False
                continue
            elif reading_code and linea_stripped:
                code_with_tokens.append(linea_stripped)
            elif not reading_code and linea_stripped and ": " in linea_stripped:
                token, instruccion = linea_stripped.split(": ", 1)
                translation_table[token] = instruccion

    print("ARM32 Decompression Process")
    print("=" * 30)
    print(f"Loaded {len(code_with_tokens)} tokenized instructions")
    print(f"Translation table has {len(translation_table)} entries")

    # Write the translation table to a separate file (ARM32 format)
    with open(table_file, 'w') as file:
        for token, instruccion in translation_table.items():
            # Format: tokenhexinstruction (no separator)
            file.write(f"{token}{instruccion}\n")

    # Perform decompression: replace tokens with original ARM32 instructions
    final_code = []
    expansion_stats = {"tokens_expanded": 0, "instructions_kept": 0}
    
    for instruction in code_with_tokens:
        if instruction in translation_table:
            # Replace token with original ARM32 instruction
            expanded_instruction = translation_table[instruction]
            final_code.append(expanded_instruction)
            expansion_stats["tokens_expanded"] += 1
        else:
            # Keep original instruction (not tokenized)
            final_code.append(instruction)
            expansion_stats["instructions_kept"] += 1

    # Write the decompressed code to a separate file
    with open(code_file, 'w') as file:
        for instruccion in final_code:
            file.write(instruccion + "\n")

    # Print decompression statistics
    print(f"\nDecompression Statistics:")
    print(f"Tokens expanded: {expansion_stats['tokens_expanded']}")
    print(f"Original instructions kept: {expansion_stats['instructions_kept']}")
    print(f"Total output instructions: {len(final_code)}")
    
    return final_code, translation_table

def verify_arm32_integrity(original_file, decompressed_file):
    """
    Verify that the decompressed ARM32 code matches the original
    """
    try:
        with open(original_file, 'r') as orig, open(decompressed_file, 'r') as decomp:
            original_lines = [line.strip() for line in orig if line.strip()]
            decompressed_lines = [line.strip() for line in decomp if line.strip()]
        
        print(f"\nIntegrity Verification:")
        print(f"Original instructions: {len(original_lines)}")
        print(f"Decompressed instructions: {len(decompressed_lines)}")
        
        if len(original_lines) != len(decompressed_lines):
            print("FAILED: Different number of instructions")
            return False
        
        mismatches = 0
        for i, (orig, decomp) in enumerate(zip(original_lines, decompressed_lines)):
            if orig != decomp:
                mismatches += 1
                if mismatches <= 5:  # Show first 5 mismatches only
                    print(f"Mismatch at line {i+1}: {orig} != {decomp}")
        
        if mismatches == 0:
            print("SUCCESS: All instructions match perfectly!")
            return True
        else:
            print(f"FAILED: {mismatches} mismatches found")
            return False
            
    except FileNotFoundError as e:
        print(f"FAILED: Could not find file for verification: {e}")
        return False

def analyze_arm32_compression_efficiency(original_file, tokenized_file, translation_table):
    """
    Analyze the compression efficiency for ARM32 instructions
    """
    print(f"\nARM32 Compression Analysis:")
    print("=" * 35)
    
    # Calculate file sizes
    try:
        import os
        original_size = os.path.getsize(original_file)
        tokenized_size = os.path.getsize(tokenized_file)
        
        print(f"Original binary file size: {original_size} bytes")
        print(f"Tokenized file size: {tokenized_size} bytes")
        
        if original_size > 0:
            compression_ratio = ((original_size - tokenized_size) / original_size) * 100
            print(f"File size reduction: {compression_ratio:.2f}%")
    except:
        print("Could not calculate file sizes")
    
    # Analyze token usage
    if translation_table:
        print(f"\nToken Analysis:")
        for token, instruction in translation_table.items():
            print(f"Token '{token}' represents: {instruction}")
            # Decode ARM32 instruction type
            if len(instruction) == 8:
                print(f"  -> ARM32 hex: {instruction}")
                cond_code = instruction[0]
                print(f"  -> Condition: {cond_code} ({'Always' if cond_code.upper() == 'E' else 'Conditional'})")

if __name__ == "__main__":
    # File paths for ARM32 system
    input_file = "Output_files/arm32_tokens.txt"
    code_file = "Output_files/arm32_final_code.txt"
    table_file = "Output_files/arm32_translation_table.txt"
    original_file = "Output_files/arm32_binary.txt"

    try:
        # Read and transform the ARM32 tokenized file
        final_code, translation_table = read_and_transform_arm32(input_file, code_file, table_file)

        print(f"\nARM32 decompression completed successfully!")
        print(f"Decompressed code: {code_file}")
        print(f"Translation table: {table_file}")

        # Verify integrity
        integrity_ok = verify_arm32_integrity(original_file, code_file)
        
        # Analyze compression efficiency
        analyze_arm32_compression_efficiency(original_file, input_file, translation_table)
        
        if integrity_ok:
            print(f"\nARM32 compression/decompression system working.")
        else:
            print(f"\nARM32 system has integrity issues that need to be resolved.")
            
    except FileNotFoundError:
        print(f"Error: Could not find input file {input_file}")
        print("Please run arm32_tokens.py first to generate the tokenized file.")
    except Exception as e:
        print(f"Error during ARM32 transformation: {e}")
        raise