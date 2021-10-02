// 3) List lst = [2,4,6,8,9];
// Make a function that takes a number as parameter and divide that parameter to every element
// in the list
import 'dart:io';

void DivideElements(num numbers){
  List<num> lst = [2,4,6,8,9];
  for (int i = 0; i < lst.length ; i++){
    print('${lst[i]} / $numbers = ${lst[i] / numbers}');
  }
}

void main(){
  print('Enter Number for Division : ');
  int? number = int.parse(stdin.readLineSync()!);
  DivideElements(number);
}