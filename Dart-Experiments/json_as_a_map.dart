// ignore_for_file: unused_local_variable

void main() {
  Map map = {
    "friendsList":{
      1:{
        "firendId":1,
        "image":"",
        "username":"gfg",
      },
      2:{
        "firendId":2,
        "image":"",
        "username":"",
      }
    },
    "chatList":{
      1:{
          "mainUser":"'username'+'id'",
          "chatUser":"'username'+'id'",
          "messsges":{
             "mainUser+messageid":{
               "message":"",
               "timestamps":"",
             },
             "chatUser+messageid":{
               "message":"",
               "timestamps":"",
             }
          }
      }
    }
  };

  // map.forEach((key, value) {
  //   print(value);
  // });
  print(map["friendsList"][1]["username"]);
}