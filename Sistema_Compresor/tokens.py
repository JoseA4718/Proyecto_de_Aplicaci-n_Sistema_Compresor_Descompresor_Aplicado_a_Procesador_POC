from collections import defaultdict
import re

# Function to read the file line by line and detect repeated patterns
def detect_patterns(input_file):
    patterns = defaultdict(int)
    instructions = []

    with open(input_file, 'r') as file:
        for line in file:
            line = line.strip()
            if line:
                patterns[line] += 1
                instructions.append(line)

    # Create tokens with lines repeated at least twice
    tokens = {}
    letters = "0123456789abcdef"
    token_count = 0
    for line, repetitions in patterns.items():
        if repetitions >= 2:
            token_id = letters[token_count]
            tokens[token_id] = line
            token_count += 1

    return instructions, tokens

# Function to replace tokens in code
def replace_tokens(instructions, tokens):
    final_code = []
    for instruction in instructions:
        for token_id, pattern in tokens.items():
            instruction = re.sub(pattern, token_id, instruction)
        final_code.append(instruction)
    return final_code

# Function to write the instructions and tokens to the output file
def write_output_file(instructions, tokens, output_file):
    with open(output_file, 'w') as file:
        file.write("Code with tokens:\n")
        for instruction in instructions:
            file.write(instruction + "\n")
        file.write("\nTranslation table:\n")
        for token_id, pattern in tokens.items():
            file.write(f"{token_id}: {pattern}\n")

# Input and output file name
input_file = "Input_files/new_binary_file.txt"
output_file = "Input_files/code_tokens.txt"

# Detect patterns and replace tokens in code
instructions, tokens = detect_patterns(input_file)
final_code = replace_tokens(instructions, tokens)

# Write to output file
write_output_file(final_code, tokens, output_file)

print("The output file has been generated successfully.")
