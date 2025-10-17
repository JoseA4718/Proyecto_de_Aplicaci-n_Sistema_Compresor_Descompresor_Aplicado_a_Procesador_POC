# ARM32 Tokens - Tokenization system adapted for ARM32 binary instructions
from collections import defaultdict
import re

def detect_patterns(input_file):
    """
    Read ARM32 binary file and detect repeated instruction patterns
    """
    patrones = defaultdict(int)
    instructions = []

    with open(input_file, 'r') as archivo:
        for linea in archivo:
            linea = linea.strip()
            if linea:
                patrones[linea] += 1
                instructions.append(linea)
    
    # Create tokens for instructions repeated at least twice
    tokens = {}
    # Use more readable tokens for ARM32
    token_chars = "0123456789ABCDEF"
    token_count = 0
    
    print("ARM32 Pattern Analysis:")
    print("=" * 50)
    
    for linea, repeticiones in patrones.items():
        if repeticiones >= 2:
            if token_count < len(token_chars):
                token_id = token_chars[token_count]
                tokens[token_id] = linea
                print(f"Token {token_id}: {linea} (appears {repeticiones} times)")
                token_count += 1
            else:
                # If we run out of single characters, use combinations
                token_id = f"T{token_count - len(token_chars)}"
                tokens[token_id] = linea
                print(f"Token {token_id}: {linea} (appears {repeticiones} times)")
                token_count += 1

    print(f"\nTotal unique instructions: {len(patrones)}")
    print(f"Repeated patterns found: {len(tokens)}")
    print(f"Total instructions: {len(instructions)}")
    
    return instructions, tokens

def replace_tokens(instructions, tokens):
    """
    Replace ARM32 instructions with tokens
    """
    final_code = []
    compression_stats = {"original_size": 0, "compressed_size": 0, "replacements": 0}
    
    for instruccion in instructions:
        original_instruction = instruccion
        replaced = False
        
        for token_id, patron in tokens.items():
            if instruccion == patron:
                instruccion = token_id
                replaced = True
                compression_stats["replacements"] += 1
                break
        
        # Calculate compression statistics
        compression_stats["original_size"] += len(original_instruction)
        compression_stats["compressed_size"] += len(instruccion)
        
        final_code.append(instruccion)
    
    # Print compression statistics
    original_bytes = compression_stats["original_size"]
    compressed_bytes = compression_stats["compressed_size"]
    compression_ratio = ((original_bytes - compressed_bytes) / original_bytes) * 100 if original_bytes > 0 else 0
    
    print(f"\nCompression Statistics:")
    print(f"Original size: {original_bytes} characters")
    print(f"Compressed size: {compressed_bytes} characters") 
    print(f"Space saved: {original_bytes - compressed_bytes} characters")
    print(f"Compression ratio: {compression_ratio:.2f}%")
    print(f"Instructions replaced: {compression_stats['replacements']}")
    
    return final_code

def write_output_file(instructions, tokens, output_file):
    """
    Write ARM32 tokenized instructions and translation table
    """
    with open(output_file, 'w') as archivo:
        archivo.write("ARM32 Code with tokens:\n")
        for instruccion in instructions:
            archivo.write(instruccion + "\n")
        archivo.write("\nARM32 Translation table:\n")
        for token_id, patron in tokens.items():
            archivo.write(f"{token_id}: {patron}\n")

def analyze_arm32_instruction_types(input_file):
    """
    Analyze the types of ARM32 instructions in the binary
    """
    instruction_types = defaultdict(int)
    
    with open(input_file, 'r') as archivo:
        for linea in archivo:
            linea = linea.strip()
            if linea and len(linea) == 8:  # ARM32 hex instruction
                # Analyze instruction type based on condition and instruction bits
                cond = linea[0]
                inst_bits = linea[1:3]
                
                # Determine instruction type
                if inst_bits.startswith('0'):
                    if linea[2] in ['0', '1', '2', '3']:
                        instruction_types["Data Processing"] += 1
                    else:
                        instruction_types["Other Data"] += 1
                elif inst_bits.startswith('4') or inst_bits.startswith('5'):
                    instruction_types["Single Data Transfer"] += 1
                elif inst_bits.startswith('6') or inst_bits.startswith('7'):
                    instruction_types["Single Data Transfer"] += 1
                elif inst_bits.upper().startswith('A') or inst_bits.upper().startswith('B'):
                    instruction_types["Branch"] += 1
                else:
                    instruction_types["Other"] += 1
    
    print(f"\nARM32 Instruction Type Analysis:")
    print("=" * 40)
    for inst_type, count in instruction_types.items():
        print(f"{inst_type}: {count} instructions")
    
    return instruction_types

if __name__ == "__main__":
    # Input and output file names for ARM32
    input_file = "Output_files/arm32_binary.txt"
    output_file = "Output_files/arm32_tokens.txt"

    print("ARM32 Tokenization System")
    print("=" * 30)
    
    try:
        # Analyze instruction types first
        analyze_arm32_instruction_types(input_file)
        
        # Detect patterns and replace tokens in ARM32 code
        instructions, tokens = detect_patterns(input_file)
        final_code = replace_tokens(instructions, tokens)

        # Write to output file
        write_output_file(final_code, tokens, output_file)

        print(f"\nARM32 tokenized file generated: {output_file}")
        
    except FileNotFoundError:
        print(f"Error: Could not find input file {input_file}")
        print("Please run arm32_compiler.py first to generate the ARM32 binary file.")
    except Exception as e:
        print(f"Error during tokenization: {e}")