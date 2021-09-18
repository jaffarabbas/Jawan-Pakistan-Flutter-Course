//list methods
void main() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  //first element
  print(list.first);
  //last element
  print(list.last);
  //element at
  print(list.elementAt(3));
  //size of list
  print(list.length);
  //add in list
  list.add(2);
  //remove
  list.remove(2);
  print(list);
  //remove at index
  list.removeAt(3);
  print(list);
  list.asMap().forEach((key, value) {
    print('$key - $value');
  });
}
