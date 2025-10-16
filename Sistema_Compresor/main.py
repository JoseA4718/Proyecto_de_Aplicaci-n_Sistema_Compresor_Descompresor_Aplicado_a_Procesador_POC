import argparse
from utils import *
from arm_compiler import *
from decoder import *
from arm_to_hex_converter import *

# GLOABL VARAIBLES
output_compiled_file = None
output_compressed_file = None
output_table_token_file = None
converted_code_folder = './ConvertedFiles/'

# Init CLI arguments definition - Catch execution args
parser = argparse.ArgumentParser(description='Python CLI Tool to Compile/Compress/Convert Code')
# Arg for code File Path
parser.add_argument('-codeFile', '--codeFile', type=str, required=True, help='Relative Path of the code to be processed')
# Args for compilation process
parser.add_argument('-compileCode', '--compileCode', type=bool, choices=[True, False], default=True, required=False, help='Flag to compile the code given on the codeFile opt')
parser.add_argument('-compiler', '--compiler', type=str, choices=['arm1100', 'carm1100'], default='carm1100', required=False, help='Compiler to be used - other can be found on https://godbolt.org/')
parser.add_argument('-codeLang', '--codeLang', type=str, choices=['c++', 'c'], default='c', required=False, help='Languaje of the input codeFile')
# Args for compression process
parser.add_argument('-compressCode', '--compressCode', type=bool, choices=[True, False], default=True, required=False, help='Flag to compress the code given on the codeFile opt')
parser.add_argument('-showOutput', '--showOutput', type=bool, choices=[True, False], default=False, required=False, help='Flag to enable prints for show Output compressed files on console')

# Args for conversion process 
parser.add_argument('-convertCode', '--convertCode', type=bool, choices=[True, False], default=True, required=False, help='Flag to convert the code given on the codeFile opt to HEX')
parser.add_argument('-arch', '--arch', type=str, choices=["arm64", "arm"], default='arm', required=False, help='Architecture to comvert the assembly code to HEX')

# Debug options
parser.add_argument('-debug', '--debug', type=bool, choices=[True, False], default=False, required=False, help='Flag to enable prints for debug porpouses')

# Final args object
args = parser.parse_args()

# Init prcoess 
def compileCode():
    global output_compiled_file
    source_code = getSourceCode(args.codeFile)
    output_compiled_file = compile(source_code, args.compiler, args.codeLang, args.codeFile, args.debug)

def compressCode():
    global output_compiled_file, output_compressed_file, output_table_token_file
    file_path = args.codeFile
    if(args.compileCode):
        file_path = output_compiled_file
    output_compressed_file, output_table_token_file = run_compressor(file_path, args.debug, args.showOutput)

def convertCode():
    global output_compiled_file, output_compressed_file, output_table_token_file, converted_code_folder
    if(output_compiled_file and args.compileCode):
        code, _ = getSourceCodeForConversion(output_compiled_file)
        file_name = output_compiled_file.split('/')[-1].replace('.s', '.dat')
        result = convertToHex(code, [args.arch])
        createFile(converted_code_folder + file_name, result)
    if(output_compressed_file and output_table_token_file and args.compressCode):
        input_files = [output_table_token_file, output_compressed_file]
        token_code, _ = getSourceCodeForConversion(output_table_token_file)
        compressed_code, pos_dic = getSourceCodeForConversion(output_compressed_file)
        code = [token_code, compressed_code]
        for i, item in enumerate(code):
            file_name = input_files[i].split('/')[-1].replace('.s', '.dat')
            result = convertToHex(item, [args.arch])
            if(i == 1):
                result = insertTokens(result, pos_dic)
            createFile(converted_code_folder + 'compress_' + file_name, result)
    if(not args.compileCode and not args.compressCode and args.convertCode):
        code, _ = getSourceCodeForConversion(args.codeFile)
        file_name = output_compiled_file.split('/')[-1].replace('.s', '.dat')
        result = convertToHex(code, [args.arch])
        createFile(converted_code_folder + file_name, result)


# execute process based on args
# Compile code
if(args.compileCode):
    compileCode()

# Compress code
if(args.compressCode):
    compressCode()

# Convert code to HEX
if(args.convertCode):
    convertCode()


# Run command > python3 .\main.py 