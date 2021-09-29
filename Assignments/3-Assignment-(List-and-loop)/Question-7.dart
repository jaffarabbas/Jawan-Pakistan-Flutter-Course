// 7. Write a program to print multiples of 5 ranging 1 to 100.

void main() {
  // The multiples of 5 are the numbers that are generated when 5 
  // is multiplied by any natural number. That means any number that
  // can be expressed in the form of 5n where n is an integer is a multiple
  // of 5... Some of the multiples of 5 include the following. 5, 10, 15, 20, 25,..
  int number = 5 , range = 100;
  for(int i = 1; i <= range ; i++) {
    print("$number * $i = ${number*i}");
  }
}