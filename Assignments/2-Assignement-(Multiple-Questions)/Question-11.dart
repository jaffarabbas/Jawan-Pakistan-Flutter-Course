// Write a program to replace the “Hyder” to “Islam” in the word
// “Hyderabad” and display the result.

void main() {
  String Name = "Hyderabad";
  //concept is about substring
  String ChangedString = Name.replaceAll('Hyder', 'Islam');
  print('Previous String : ${Name}\nReplaced String : ${ChangedString}');
}