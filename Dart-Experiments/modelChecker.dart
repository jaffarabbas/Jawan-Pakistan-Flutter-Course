import 'dart:math';

class Users {
  late String name;
  Users({required this.name});
  //checing method
  String getNamePrace() {
    return "Name is in function : $name";
  }
  //make instances of a class
  Users.setData(String name) {
    this.name = name;
  }
}

void main() {
  String generateRandomString(int len) {
  var r = Random();
  const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  return List.generate(len, (index) => _chars[r.nextInt(_chars.length)]).join();
}
  //method 1 for making a list of instances 
  List<Users> lst = [];
  List<Users> lst2 = [];
  
  print("List of function instances");
  for (int i = 0; i < 10 ; i++){
    lst.add(Users.setData(generateRandomString(5)));
  }
  lst.forEach((element) {
    print(element.getNamePrace());
  });
  //method 2 
  print("List of direct object");
  for (int i = 0; i < 10 ; i++){
    Users u = new Users(name: generateRandomString(5));
    lst2.add(u);
  }
  lst2.forEach((element) {
    print(element.getNamePrace());
  });
}
