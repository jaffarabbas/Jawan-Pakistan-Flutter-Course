// 8) Write a Code using inheritance
import 'dart:math';
import 'dart:io';

class AccountGenerate {
  Map AccountCollections = {};
  //new account number
  String NewAccountNumber(){
    var random = new Random();
    var AccountNumber;
    for (var i = 0; i < 10; i++) {
      AccountNumber = random.nextInt(1000);
    }
    return AccountNumber;
  }
}

class UserInformation extends AccountGenerate{
  void NewUser(var name,var AccountNumber){
    super.AccountCollections.add({'name':name,'AccountNumber':AccountNumber});
  }
}