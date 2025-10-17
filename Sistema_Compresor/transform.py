# Read and tranform the code with traduction table
def read_and_transform(output_file, code_file, table_file):
    code_with_tokens = []
    translation_table = {}
    reading_code = None

    with open(output_file, 'r') as file:
        for line in file:
            if line.startswith("Code with tokens:"):
                reading_code = True
            elif line.startswith("Translation table:"):
                reading_code = False
            elif reading_code:
                code_with_tokens.append(line.strip())
            else:
                token, instruction = line.strip().split(": ")
                translation_table[token] = instruction

    # Write the translation table to a separate file
    with open(table_file, 'w') as file:
        for token, instruction in translation_table.items():
            file.write(f"{token}{instruction}\n")

    # Perform transformations in the code
    final_code = []
    i = 0
    while i < len(code_with_tokens):
        if i+1 < len(code_with_tokens) and code_with_tokens[i] == code_with_tokens[i+1]:
            final_code.append(code_with_tokens[i])
            i += 1
        else:
            final_code.append(translation_table.get(code_with_tokens[i], code_with_tokens[i]))
        i += 1
    
    # Write the final code to a separate file
    with open(code_file, 'w') as file:
        for instruction in final_code:
            file.write(instruction + "\n")

# Output file name
output_file = "Input_files/code_tokens.txt"
code_file = "Output_files/final_code.txt"
table_file = "Output_files/translation_table.txt"

# Read the output file and perform transformations
read_and_transform(output_file, code_file, table_file)

print("The files with the final code and the translation table have been updated.")
