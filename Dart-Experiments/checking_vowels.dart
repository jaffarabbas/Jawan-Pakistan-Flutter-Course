import 'dart:io';

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
  //from list generated for each loop
  vowel.forEach((element) {
    if(element == character[0]){
      isContainVowel = true;
    }
  });
  // from list generated function
  isContainVowel = vowel.contains(character[0]);
  if(isContainVowel){
    print('$isContainVowel it is a Vowel');
  }else{
    print('$isContainVowel it is not a Vowel');
  }
}