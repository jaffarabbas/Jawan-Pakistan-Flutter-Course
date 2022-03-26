class UserModel {
  int? id;
  String? fName;
  String? lName;
  String? contact;
  String? address;
  String? uName;
  String? password;
  String? email;

  UserModel(
      {this.id,
      this.fName,
      this.lName,
      this.contact,
      this.address,
      this.uName,
      this.password,
      this.email});

  UserModel.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    fName = json['f_name'];
    lName = json['l_name'];
    contact = json['contact'];
    address = json['address'];
    uName = json['u_name'];
    password = json['password'];
    email = json['email'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['contact'] = this.contact;
    data['address'] = this.address;
    data['u_name'] = this.uName;
    data['password'] = this.password;
    data['email'] = this.email;
    return data;
  }




    static List<UserModel> fromJsonList(List<dynamic> jsonLst) {
    List<UserModel> users = [];
    jsonLst.forEach((user) {
      users.add(UserModel.fromJson(user));
    });
    return users;
  }
}