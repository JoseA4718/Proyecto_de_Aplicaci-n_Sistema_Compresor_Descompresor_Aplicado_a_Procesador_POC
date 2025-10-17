# Translate to hexadecimal from binary
with open("Input_files/binary.txt", "r") as file:
    with open('Input_files/new_binary_file.txt', 'w') as file2:
        for line in file:
            binary = line.strip()  # Remove the newline character
            hexadecimal = hex(int(binary, 2))[2:].zfill(8)  # Convert to hexadecimal and add leading zeros if necessary
            print(hexadecimal)  # Print the result
            file2.write(hexadecimal + '\n')  # Write the hexadecimal value to the new text file
