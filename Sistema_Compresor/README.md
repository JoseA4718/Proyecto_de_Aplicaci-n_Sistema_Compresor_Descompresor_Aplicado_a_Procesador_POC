# Code compilation, compression & conversion

The code in this project presents a CLI tool that takes high/low level code and compiled it to the target architecture, them compress it based on the Sequitur algorithm and convert ARM assembly code to HEX to be used on the decompression hardware also located in this project.

## Dependecies 

> pip3 install requests

## Simple way to run it

To run the main script just run the next commands and put the path of the source code to be compiled, compressed and converted. By thefault the code should be written on C, and will be compiled for ARM32 and converted to HEX.

> cd compressor_sys
>
> python3 .\main.py -codeFile '< sourceCodeFilePath >'

# Use cases

## CLI options

| Option | Type | Description | Default | Posible Options |
| ----------- | ----------- | ----------- | ----------- | ----------- |
| -codeFile | string | Relative Path of the code to be processed | - | - |
| -compileCode | bool | Flag to compile the code given on the codeFile opt | True | True, False |
| -compiler | string | Compiler to be used - other can be found on https://godbolt.org/ | carm1100 | 'arm1100', 'carm1100' |
| -codeLang | string | Languaje of the input codeFile | c | 'c++', 'c' |
| -compressCode | bool | Flag to compress the code given on the codeFile opt | True | True, False |
| -showOutput | bool | Flag to enable prints for show Output compressed files on console | False | True, False |
| -convertCode | bool | Flag to convert the code given on the codeFile opt to HEX | True | True, False |
| -arch | string | Architecture to comvert the assembly code to HEX | arm | "arm64", "arm" |
| -debug | bool | Flag to enable prints for debug porpouses | False | True, False |




