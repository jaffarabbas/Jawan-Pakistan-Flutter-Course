import requests,json

URL = "http://127.0.0.1:8000/getstudent/"

def get_data(id=None):
    data = {}
    if id is not None:
        data = {'id':id}
    json_data = json.dumps(data)
    req = requests.get(URL, data=json_data)
    print(req.json())

get_data()