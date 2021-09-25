// 6. Write a program to print items of the following array using for loop:
// fruits = [“apple”, “banana”, “mango”, “orange” , “strawberry”].

void main() {
  var fruits = ["apple", "banana", "mango", "orange" , "strawberry"];
  for (int i = 0; i < fruits.length; i++) {
    print("$i : ${fruits[i]}");
  }
}