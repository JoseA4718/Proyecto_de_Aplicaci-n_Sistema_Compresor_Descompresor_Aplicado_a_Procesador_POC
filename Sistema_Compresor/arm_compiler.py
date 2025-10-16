import requests
import os

# Output File Path
output_file_path = './Benchmarks/Compiled benchmarks/ARM32/'

# Compiler API URL
api_url = "https://godbolt.org/api/compiler/{}/compile"

# Compiler options
compiler_options = {
  "produceGccDump": {}, 
  "produceCfg": False, 
  "produceDevice": False 
}

# filter for the compilation option
filters = {
  "binary": False,
  "execute": False,
  "intel": True,
  "demangle": True,
  "labels": True,
  "libraryCode": True,
  "directives": True,
  "commentOnly": True,
  "trim": False
}

# general options OBJ
options = {
  "userArguments": "",
  "compilerOptions": compiler_options,
  "filters": filters,
  "tools": [],
  "libraries": []
}

# BODY to be send
body = {
  "options": options,
  "files": [],
  "allowStoreCodeDebug": True
}


# Function to compile the code file
def compile(source, compiler, lang, file_path, debug=False):
  # Config URL
  global api_url
  api_url = api_url.format(compiler)

  # Set extra BODY parameters
  body["source"] = source
  body["compiler"] = compiler
  body["lang"] = lang

  if(debug):
    print("\n**********************************************************")
    print(" API URL ")
    print(api_url)
    print(" BODY OBJECT ")
    print(body)
    print("**********************************************************\n")

  # Send request to compile the code online
  response = requests.post(api_url, json=body)

  if(debug):
    print("\n**********************************************************")
    print(" RESPONSE STATUS CODE ")
    print(response.status_code)
    print("\n**********************************************************\n")
    print(" RESPONSE TEXT ")
    print(response.text)
    print("**********************************************************\n")

  # build output file path
  output_file = output_file_path + file_path.split('/')[-2] + '/' + (file_path.split('/')[-1]).split('.')[0] + '.s'
  # make output dir if not exist
  os.makedirs(os.path.dirname(output_file), exist_ok=True)
  file = open(output_file, "w")
  file.writelines(response.text) # write the compile code to the output file
  file.close()

  return output_file