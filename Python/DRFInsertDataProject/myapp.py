import re
import requests
import json

URL = "http://127.0.0.1:8000/stucreate/"
data={
    'name':'jaffar',
    'roll':3,
    'city':'adasdasdas'
}
json_data=json.dumps(data)
req = requests.post(URL, data=json_data)
if(req != ''):
    print(req.json())