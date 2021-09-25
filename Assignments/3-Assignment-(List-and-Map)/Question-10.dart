// 10. Write a program that takes a character (I. e. string of length 1)
// and returns true if it is a vowel, false otherwise.
import 'dart:io';

void main() {
  var vowel = ['a','e','i','o','u'];
  String? character = stdin.readLineSync()!;
  bool isContainVowel = vowel.contains(character[0]);
  if(isContainVowel){
    print('$isContainVowel it is a Vowel');
  }else{
    print('$isContainVowel it is not a Vowel');
  }
}