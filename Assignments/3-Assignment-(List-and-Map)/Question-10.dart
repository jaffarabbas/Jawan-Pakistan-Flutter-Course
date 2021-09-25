// 10. Write a program that takes a character (I. e. string of length 1)
// and returns true if it is a vowel, false otherwise.
import 'dart:io';

/*
Note : we can solve this question with list own functions below are 2 more ways to solve this question
from list generated for each loop
vowel.forEach((element) {
  if(element == character[0]){
    isContainVowel = true;
  }
}); 
from list generated function (it will check the character in the list)
isContainVowel = vowel.contains(character[0]);
*/

void main() {
  bool isContainVowel = false;
  var vowel = ['a','e','i','o','u'];
  print("Enter Character");
  String? character = stdin.readLineSync()!;
  //from for loop itration
  for(int i=0; i < vowel.length; i++){
    if(character[0] == vowel[i]){
      isContainVowel = true;
      break;
    }
  }
  if(isContainVowel){
    print('$isContainVowel it is a Vowel');
  }else{
    print('$isContainVowel it is not a Vowel');
  }
}