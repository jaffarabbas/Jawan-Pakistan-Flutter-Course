// (7)Solve:
// a. First declare an array and assign the numbers of the table of 7.
// b. Second declare another array and assign the numbers 1-10
// c. Now write down the table of 7 using map.fromiterables method.

void main() {
  List NumberOfEvenTable = [7,14,21,28,35,42,49,56,63,70];
  List OneToTen = [1,2,3,4,5,6,7,8,9,10];
  //make two list as a map
  var Result = Map.fromIterables(OneToTen,NumberOfEvenTable);
  //for each is use to print the map values
  //i implmented it by self study
  Result.forEach((key, value) {
    print('7 * $key = $value ');
  });
}