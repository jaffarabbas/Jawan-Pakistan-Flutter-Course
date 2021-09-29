// 4. Ask the user for a number and determine whether the number is
// prime or not.s
import 'dart:io';

void main() {
  bool flag = false;
  print('Enter a Number : ');
  int? number = int.parse(stdin.readLineSync()!);
  if(number > 1){
    for(int i = 2 ; i < (number / 2) ; i++){
      if(number % 2 == 0){
        flag = true;
        break;
      }
    }
    if(!flag){
      print("Prime Number : $number");
    }else{
      print("Not a Prime Number : $number");
    }
  }else{
    print("0 and 1 are not prime number");
  }
}