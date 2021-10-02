// 7) Make a constructor that requires your name, age, education and then print that.
import 'dart:io';

class Information{
  late String name, education;
  late int age;
  Information(String name,int age,String education){
    //this will populate instaces of Information class on the time of object intialization
    this.name = name;
    this.age = age;
    this.education = education;
    //print instances values
    print('Name : ${this.name}\nAge : ${this.age}\nEducation : ${this.education}');
  }
}

void main() {
  print('Enter Your Name : ');
  String? name = stdin.readLineSync()!;
  print('Enter Your age : ');
  int? age = int.parse(stdin.readLineSync()!);
  print('Enter Your Education : ');
  String? education = stdin.readLineSync()!;
  Information obj = new Information(name,age,education);
}