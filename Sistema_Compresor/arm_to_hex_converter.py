import requests

# Converter API URL
api_url = "https://armconverter.com/api/convert"

# BODY to be send
body = {
  "offset": "0"
}


def convertToHex(code, arch):
  # set body custom params
  body["asm"] = code # code to be converted
  body["arch"] = arch # target architecture
  response = requests.post(api_url, json=body) # make api call
  if(response.status_code == 200):
    result = response.json()['hex']['arm']
    result.pop(0)
    return result # return response - HEX converted code
  else:
    print('ERROR')
    return None
