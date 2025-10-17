# ARM32 Compiler - Adapts the compression system for ARM32 ISA
# ARM32 instruction encoding and compilation

# ARM32 Registers (0-15)
arm32_registers = {
    "R0":  "0000",   # General purpose
    "R1":  "0001",   # General purpose
    "R2":  "0010",   # General purpose
    "R3":  "0011",   # General purpose
    "R4":  "0100",   # General purpose
    "R5":  "0101",   # General purpose
    "R6":  "0110",   # General purpose
    "R7":  "0111",   # General purpose
    "R8":  "1000",   # General purpose
    "R9":  "1001",   # General purpose
    "R10": "1010",   # General purpose
    "R11": "1011",   # Frame pointer
    "R12": "1100",   # Intra-procedure call
    "R13": "1101",   # Stack pointer (SP)
    "R14": "1110",   # Link register (LR)
    "R15": "1111"    # Program counter (PC)
}

# ARM32 Condition codes (bits 31-28)
arm32_conditions = {
    "EQ": "0000",    # Equal
    "NE": "0001",    # Not Equal
    "CS": "0010",    # Carry Set
    "CC": "0011",    # Carry Clear
    "MI": "0100",    # Minus/Negative
    "PL": "0101",    # Plus/Positive
    "VS": "0110",    # Overflow Set
    "VC": "0111",    # Overflow Clear
    "HI": "1000",    # Higher
    "LS": "1001",    # Lower or Same
    "GE": "1010",    # Greater or Equal
    "LT": "1011",    # Less Than
    "GT": "1100",    # Greater Than
    "LE": "1101",    # Less or Equal
    "AL": "1110",    # Always (default)
    "NV": "1111"     # Never
}

# ARM32 Instruction types and opcodes
arm32_data_processing = {
    # Data Processing Instructions (bits 27-26 = 00, bit 25 = I-bit)
    "AND": "0000",   # Logical AND
    "EOR": "0001",   # Exclusive OR
    "SUB": "0010",   # Subtract
    "RSB": "0011",   # Reverse Subtract
    "ADD": "0100",   # Add
    "ADC": "0101",   # Add with Carry
    "SBC": "0110",   # Subtract with Carry
    "RSC": "0111",   # Reverse Subtract with Carry
    "TST": "1000",   # Test (AND without result)
    "TEQ": "1001",   # Test Equivalence (EOR without result)
    "CMP": "1010",   # Compare (SUB without result)
    "CMN": "1011",   # Compare Negative (ADD without result)
    "ORR": "1100",   # Logical OR
    "MOV": "1101",   # Move
    "BIC": "1110",   # Bit Clear (AND NOT)
    "MVN": "1111"    # Move NOT
}

# ARM32 Memory instructions
arm32_memory = {
    # Single Data Transfer (bits 27-26 = 01)
    "LDR": "01",     # Load Word
    "LDRB": "01",    # Load Byte
    "STR": "01",     # Store Word
    "STRB": "01"     # Store Byte
}

# ARM32 Branch instructions
arm32_branch = {
    # Branch (bits 27-25 = 101)
    "B": "101",      # Branch
    "BL": "101"      # Branch with Link
}

def convert_to_arm32_syntax(original_instruction):
    """
    Convert custom ISA instruction to ARM32 equivalent
    This is a mapping function for common operations
    """
    
    instruction_mapping = {
        # Custom ISA -> ARM32 mapping
        "ADDI": "ADD",     # Add immediate -> ADD with immediate
        "SUBI": "SUB",     # Subtract immediate -> SUB with immediate  
        "ADDR": "ADD",     # Add register -> ADD
        "SUBR": "SUB",     # Subtract register -> SUB
        "MULR": "MUL",     # Multiply (needs special handling in ARM32)
        "DIVR": "DIV",     # Divide (needs software implementation in ARMv7)
        "LFM": "LDR",      # Load from memory -> Load Register
        "SOM": "STR",      # Store to memory -> Store Register
        "JU": "B",         # Unconditional jump -> Branch
        "JT": "BNE",       # Jump if true -> Branch if Not Equal (conditional)
        "JNT": "BEQ"       # Jump if not true -> Branch if Equal (conditional)
    }
    
    return instruction_mapping

def encode_arm32_data_processing(opcode, rd, rn, operand2, condition="AL", immediate=False, set_flags=False):
    """
    Encode ARM32 data processing instruction
    Format: COND|00|I|OPCD|S|RN|RD|OPERAND2
    """
    
    # Condition (4 bits)
    cond = arm32_conditions[condition]
    
    # Instruction type (2 bits) - 00 for data processing
    inst_type = "00"
    
    # Immediate bit (1 bit)
    i_bit = "1" if immediate else "0"
    
    # Opcode (4 bits)
    op = arm32_data_processing[opcode]
    
    # Set flags bit (1 bit)
    s_bit = "1" if set_flags else "0"
    
    # Source register (4 bits)
    rn_bits = arm32_registers[rn] if rn else "0000"
    
    # Destination register (4 bits)
    rd_bits = arm32_registers[rd]
    
    # Operand2 (12 bits) - this needs special encoding for immediate values
    if immediate:
        # For immediate values, need to encode as 8-bit value + 4-bit rotation
        # Simplified: just use lower 12 bits for now
        operand2_bits = format(int(operand2) & 0xFFF, '012b')
    else:
        # Register operand (simplified)
        operand2_bits = "00000000" + arm32_registers[operand2]
    
    # Combine all fields
    instruction = cond + inst_type + i_bit + op + s_bit + rn_bits + rd_bits + operand2_bits
    
    return instruction

def encode_arm32_memory(opcode, rt, rn, offset, condition="AL", pre_indexed=True, write_back=False, load=True):
    """
    Encode ARM32 memory instruction
    Format: COND|01|I|P|U|B|W|L|RN|RT|OFFSET
    """
    
    # Condition (4 bits)
    cond = arm32_conditions[condition]
    
    # Instruction type (2 bits) - 01 for single data transfer
    inst_type = "01"
    
    # Immediate offset (1 bit) - 0 for immediate offset
    i_bit = "0"
    
    # Pre/Post indexing (1 bit)
    p_bit = "1" if pre_indexed else "0"
    
    # Up/Down (1 bit) - 1 for add offset, 0 for subtract
    u_bit = "1"
    
    # Byte/Word (1 bit) - 0 for word, 1 for byte
    b_bit = "1" if "B" in opcode else "0"
    
    # Write-back (1 bit)
    w_bit = "1" if write_back else "0"
    
    # Load/Store (1 bit)
    l_bit = "1" if load else "0"
    
    # Base register (4 bits)
    rn_bits = arm32_registers[rn]
    
    # Target register (4 bits)
    rt_bits = arm32_registers[rt]
    
    # Offset (12 bits)
    offset_bits = format(int(offset) & 0xFFF, '012b')
    
    # Combine all fields
    instruction = cond + inst_type + i_bit + p_bit + u_bit + b_bit + w_bit + l_bit + rn_bits + rt_bits + offset_bits
    
    return instruction

def encode_arm32_branch(opcode, target, condition="AL"):
    """
    Encode ARM32 branch instruction
    Format: COND|101|L|OFFSET
    """
    
    # Condition (4 bits)
    cond = arm32_conditions[condition]
    
    # Instruction type (3 bits) - 101 for branch
    inst_type = "101"
    
    # Link bit (1 bit)
    l_bit = "1" if opcode == "BL" else "0"
    
    # 24-bit signed offset (simplified to 24 bits of target address)
    offset_bits = format(int(target) & 0xFFFFFF, '024b')
    
    # Combine all fields
    instruction = cond + inst_type + l_bit + offset_bits
    
    return instruction

def parse_arm32_instruction(instruction_line):
    """
    Parse an instruction line and convert to ARM32 encoding
    """
    
    # Clean and split the instruction
    line = instruction_line.strip()
    
    # Handle different separators and brackets
    parts = []
    current_part = ""
    in_brackets = False
    
    for char in line:
        if char == '[':
            in_brackets = True
            current_part += char
        elif char == ']':
            in_brackets = False
            current_part += char
        elif char in [',', ' ', '\t'] and not in_brackets:
            if current_part.strip():
                parts.append(current_part.strip())
                current_part = ""
        else:
            current_part += char
    
    if current_part.strip():
        parts.append(current_part.strip())
    
    if not parts:
        return None
        
    opcode = parts[0].upper()
    
    # Handle different instruction types
    if opcode in ["ADD", "SUB", "MOV", "AND", "ORR", "EOR"]:
        # Data processing instruction
        if len(parts) >= 3:
            rd = parts[1]
            rn = parts[2] if len(parts) > 3 else parts[1]
            operand2 = parts[3] if len(parts) > 3 else parts[2]
            
            # Check if operand2 is immediate (starts with #)
            immediate = operand2.startswith('#')
            if immediate:
                operand2 = operand2[1:]  # Remove # symbol
            
            return encode_arm32_data_processing(opcode, rd, rn, operand2, immediate=immediate)
    
    elif opcode in ["LDR", "LDRB", "STR", "STRB"]:
        # Memory instruction
        if len(parts) >= 3:
            rt = parts[1].rstrip(',')  # Remove trailing comma
            # Parse [Rn, #offset] format
            address_part = ' '.join(parts[2:])
            if '[' in address_part and ']' in address_part:
                # Extract base register and offset
                inner = address_part.replace('[', '').replace(']', '').strip()
                addr_parts = [p.strip() for p in inner.split(',')]
                rn = addr_parts[0]
                offset = "0"
                if len(addr_parts) > 1:
                    offset = addr_parts[1]
                    if offset.startswith('#'):
                        offset = offset[1:]
                
                load = opcode.startswith('LDR')
                return encode_arm32_memory(opcode, rt, rn, offset, load=load)
    
    elif opcode in ["B", "BL"]:
        # Branch instruction
        if len(parts) >= 2:
            target = parts[1]
            # For labels, we'll use a placeholder address
            if not target.isdigit():
                target = "0"  # Placeholder for label resolution
            
            return encode_arm32_branch(opcode, target)
    
    return None

# Function to convert custom ISA file to ARM32 assembly
def convert_to_arm32_assembly(input_file, output_file):
    """
    Convert custom ISA assembly to ARM32 assembly syntax
    """
    
    def convert_lfm_som(parts, is_load=True):
        """Handle LFM/SOM instructions with bracket notation like LFM R11,0[R2]"""
        if len(parts) >= 3:
            reg = parts[1]
            # Parse the address format: 0[R2] -> offset=0, base=R2
            addr_part = parts[2]
            if '[' in addr_part and ']' in addr_part:
                offset = addr_part.split('[')[0]
                base_reg = addr_part.split('[')[1].replace(']', '')
                if is_load:
                    return f"LDR {reg}, [{base_reg}, #{offset}]"
                else:
                    return f"STR {reg}, [{base_reg}, #{offset}]"
            else:
                # Fallback if format is different
                return f"{'LDR' if is_load else 'STR'} {reg}, [R0, #{addr_part}]"
        return f"@ Error converting {'LFM' if is_load else 'SOM'}: {' '.join(parts)}"
    
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            line = line.strip()
            if not line or line.startswith('_') or line.endswith(':'):
                # Keep labels and empty lines
                outfile.write(line + '\n')
                continue
            
            # Parse instruction - handle commas properly
            parts = []
            current_part = ""
            for char in line:
                if char in [',', ' ', '\t']:
                    if current_part:
                        parts.append(current_part)
                        current_part = ""
                else:
                    current_part += char
            if current_part:
                parts.append(current_part)
            
            # Filter empty parts
            parts = [p for p in parts if p.strip()]
            
            if not parts:
                continue
                
            opcode = parts[0].upper()
            
            # Convert based on instruction type
            if opcode == "ADDI" and len(parts) >= 4:
                arm32_instruction = f"ADD {parts[1]}, {parts[2]}, #{parts[3]}"
            elif opcode == "SUBI" and len(parts) >= 4:
                arm32_instruction = f"SUB {parts[1]}, {parts[2]}, #{parts[3]}"
            elif opcode == "ADDR" and len(parts) >= 4:
                arm32_instruction = f"ADD {parts[1]}, {parts[2]}, {parts[3]}"
            elif opcode == "SUBR" and len(parts) >= 4:
                arm32_instruction = f"SUB {parts[1]}, {parts[2]}, {parts[3]}"
            elif opcode == "LFM":
                arm32_instruction = convert_lfm_som(parts, is_load=True)
            elif opcode == "SOM":
                arm32_instruction = convert_lfm_som(parts, is_load=False)
            elif opcode == "JU":
                arm32_instruction = f"B {parts[1] if len(parts) > 1 else 'label'}"
            elif opcode == "JT":
                arm32_instruction = f"BNE {parts[1] if len(parts) > 1 else 'label'}"
            elif opcode == "JNT":
                arm32_instruction = f"BEQ {parts[1] if len(parts) > 1 else 'label'}"
            else:
                # Keep unknown instructions as comments
                arm32_instruction = f"@ {line}"
            
            outfile.write(arm32_instruction + '\n')

# Function to compile ARM32 assembly to binary
def compile_arm32_to_binary(input_file, output_file):
    """
    Compile ARM32 assembly instructions to binary
    """
    
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line_num, line in enumerate(infile, 1):
            line = line.strip()
            if not line or line.startswith('@') or line.startswith('_') or line.endswith(':'):
                continue
            
            try:
                # Parse and encode instruction
                binary_instruction = parse_arm32_instruction(line)
                if binary_instruction:
                    # Convert to hexadecimal for more compact representation
                    hex_instruction = hex(int(binary_instruction, 2))[2:].upper().zfill(8)
                    outfile.write(hex_instruction + '\n')
                else:
                    print(f"Warning: Could not parse line {line_num}: {line}")
            except Exception as e:
                print(f"Error on line {line_num}: {line}")
                print(f"Error details: {e}")
                raise

if __name__ == "__main__":
    # Example usage
    print("ARM32 Compiler for Compression System")
    
    # Convert custom ISA to ARM32 assembly
    convert_to_arm32_assembly("Input_files/test.txt", "Output_files/arm32_assembly.txt")
    print("Converted to ARM32 assembly: Output_files/arm32_assembly.txt")
    
    # Compile ARM32 assembly to binary
    compile_arm32_to_binary("Output_files/arm32_assembly.txt", "Output_files/arm32_binary.txt")
    print("Compiled to ARM32 binary: Output_files/arm32_binary.txt")