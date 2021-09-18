// Write a program that
// a. Store correct password in a JS variable.
// b. Asks user to enter his/her password
// c. Validate the two passwords:
// d. Check if user has entered password. If not, then give message “Please
// enter your password”
// e. Check if both passwords are same. If they are same, show message
// “Correct! The password you
// f. entered matches the original password”. Show “Incorrect password”
// otherwise.
import 'dart:io';
void main() {
  var JS = "123456";
  print("Enter your Passowrd: ");
  // Reading name of the Geek
  String? Password = stdin.readLineSync();
  if(Password == ''){
    print('Please enter your Password');
  }else if(JS == Password){
    print('Correct!!');
  }else{
    print('Incorrect password');
  }
}