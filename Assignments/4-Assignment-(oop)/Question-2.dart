// 2) To make a function that take a number as parameter, and print the table of that number.
import 'dart:io';

GenerateTable(int number){
  for(int i = 1; i <= 10; i++){
    print('$number x $i = ${number * i}');
  }
}
void main() {
  print('Enter Number for Generating Table : ');
  int? number = int.parse(stdin.readLineSync()!);
  GenerateTable(number);
}