// ignore_for_file: unused_local_variable

void main() {
  // Map map = {
  //   "friendsList": {
  //     0: {
  //       "firendId": 1,
  //       "image": "",
  //       "username": "gfg",
  //     },
  //     1: {
  //       "firendId": 2,
  //       "image": "",
  //       "username": "Ahmed",
  //     }
  //   },
  //   "chatList": {
  //     1: {
  //       "mainUser": {
  //         "firendId": 1,
  //         "image": "",
  //         "username": "gfg",
  //       },
  //       "chatUser": {
  //         "firendId": 2,
  //         "image": "",
  //         "username": "",
  //       },
  //       "messsges": {
  //         "mainUser+messageid": {
  //           "message": "",
  //           "timestamps": "",
  //         },
  //         "chatUser+messageid": {
  //           "message": "",
  //           "timestamps": "",
  //         }
  //       }
  //     }
  //   }
  // };
  // print(map["friendsList"].length);
  // map.forEach((key, value) {
  //   print(value);
  // });
 // print(map["friendsList"][1]["username"]);

 Map map ={
   "friendsList":{

   }
 };
 for (int i = 0; i < 10 ; i++){
   map["friendsList"][map["friendsList"].length] = {
   'name':'asdasd'
 };
 }
 print(map["friendsList"]);
  // for(int i = 0; i < map["friendsList"].length;i++){
  //    print(map["friendsList"][i]);
  // }
}
