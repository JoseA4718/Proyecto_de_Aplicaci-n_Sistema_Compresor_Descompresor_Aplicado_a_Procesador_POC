import os

# function to read code files
def getSourceCode(file_path):
    file = open(file_path, "r")
    result = ''.join(file.readlines())
    file.close()
    return result

# Function to format the compiled code to bring it the correct form to be compressed
# also asign the correct jump dir on branches and tokens
def getSourceCodeForConversion(code_file_path):
    file = open(code_file_path, "r")
    lines = file.readlines()
    file.close()
    labels = {}
    pos_dict = {}
    pc = 0
    result_lines = []
    for line in lines:
        if(line.startswith('#')):
            continue
        elif(line.endswith(':\n')):
            temp = line
            labels[temp.replace(':\n', '')] = '0x%08X' % pc
        else:
            try:
                line = int(line)
            except:
                line = line
            if(isinstance(line, int)):
                pos_dict[pc] = line
            else:
                line = " ".join(line.split())
                if(line.startswith('b')):
                    temp = line.split(' ')[-1].replace('\n', '')
                    if temp in labels:
                        offset = '#' + labels[temp]
                        line = line.replace(temp, offset)
            result_lines.append(str(line) + '\n')
            pc += 4
    result = ''.join(result_lines)
    for key, value in labels.items():
        result = result.replace(key, value)
    return result, pos_dict

# function to insert tokens on the converted file - replace the invalid tokens on the converted file
def insertTokens(code, tokens_dict):
    pc = 0
    result = []
    code = code[0].split('\n')
    for line in code:
        if(line.startswith('#') and pc in tokens_dict):
            result.append('F%07X\n' % (tokens_dict[pc] * 4))
            pc +=4
        else:
            result.append(line + '\n')
            pc += 4
    return result

# function to create files and write data on it
def createFile(path, lines):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    file = open(path, "w")
    file.writelines(lines)
    file.close()