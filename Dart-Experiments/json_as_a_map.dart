// ignore_for_file: unused_local_variable

void main() {
  Map map = {
    "friendsList":{
      1:{
        "firendId":1,
        "image":"",
        "username":"",
      },
      2:{
        "firendId":2,
        "image":"",
        "username":"",
      }
    },
    "chatList":{
      1:{
          "mainUser":"",
          "chatUser":"",
          "messsges":{
             "mainUserMessages1":{
               "message":"",
               "timestamps":"",
             },
             "chatUserMessages1":{
               "message":"",
               "timestamps":"",
             }
          }
      }
    }
  };

  map.forEach((key, value) {
    print(value);
  });
}