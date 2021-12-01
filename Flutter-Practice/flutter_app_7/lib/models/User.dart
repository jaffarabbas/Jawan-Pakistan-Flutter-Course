// ignore_for_file: avoid_function_literals_in_foreach_calls

class Users{
  late String name;
  late String email;
  //assiging constructor parameter
  Users({required this.name,required this.email});
  //
  Users.fromJson(Map<String,dynamic> json){
    name = json['name'];
    email = json['email'];
  }
  //
  static List<Users> fromJsonList(List<dynamic> jsonList){
    List<Users> users = [];
    jsonList.forEach((element) {
      users.add(Users.fromJson(element));
    });
    return users;
  }
}