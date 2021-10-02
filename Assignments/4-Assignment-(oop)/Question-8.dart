// 8) Write a Code using inheritance
import 'dart:math';
import 'dart:io';

class AccountGenerate {
  List AccountCollections = [];
  //new account number
  String NewAccountNumber(){
    var random = new Random();
    var AccountNumber = '';
    for (var i = 0; i < 10; i++) {
      AccountNumber += random.nextInt(1000).toString();
    }
    return AccountNumber;
  } 
}

class UserInformation extends AccountGenerate{
  void NewUser(var name){
    super.AccountCollections.add([name,this.NewAccountNumber()]);
  }
}

void main() {
  //UserInformation object
  UserInformation newUser = new UserInformation();
  while(true){
    print('Want to enter user yes or not y/n\nprint list p');
    var operater = stdin.readLineSync()!;
    if(operater == 'n'){
      break;
    }else if(operater == 'y'){
     print("Enter new Name for account Creation: ");
     String name = stdin.readLineSync()!;
     newUser.NewUser(name);
    }else if(operater == 'p'){
      newUser.AccountCollections.forEach((element) {
        print("Account Holder Name : ${element[0]}\nAccount Number : ${element[1]}");
      });
    }else{
      print('Error');
    }
  }
}
