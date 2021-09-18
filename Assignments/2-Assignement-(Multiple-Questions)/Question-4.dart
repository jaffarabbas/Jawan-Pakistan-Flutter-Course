// How to get difference of lists in Dart?
// Problem: Consider you have two lists [1,2,3,4,5,6,7] and [3,5,6,7,9,10]. How
// would you get the difference as output? E.g. [1, 2, 4].
void main() {
  var list1 =  [1,2,3,4,5,6,7];
  var list2 = [3,5,6,7,9,10];
  //removeWhere will iterate the list1 and reomve those elemts that are present in list2
  list1.removeWhere((values) => list2.contains(values));
  print(list1);
}