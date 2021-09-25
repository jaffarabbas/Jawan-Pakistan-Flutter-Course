// 9. Write a program to create a calculator for +, -, *, / & % using if
// statements. Take the following input:
// a. First number Second number
// b. Operation (+, -, *, /, %)
// Compute & show the calculated result to user.
import 'dart:io';

void main() {
  print("First Number : ");
  num? firstNumber = double.parse(stdin.readLineSync()!);
  print("Second Number : ");
  num? secondNumber = double.parse(stdin.readLineSync()!);
  print("Operater + , - , * , / , % : ");
  String? operater = stdin.readLineSync()!;

  if(operater == "+"){
    print("Result : $firstNumber + $secondNumber = ${firstNumber + secondNumber}");
  }else if(operater == "-"){
    print("Result : $firstNumber - $secondNumber = ${firstNumber - secondNumber}");
  }else if(operater == "*"){
    print("Result : $firstNumber * $secondNumber = ${firstNumber * secondNumber}");
  }else if(operater == "/"){
    print("Result : $firstNumber / $secondNumber = ${firstNumber / secondNumber}");
  }else if(operater == "%"){
    print("Result : $firstNumber % $secondNumber = ${firstNumber % secondNumber}");
  }
}