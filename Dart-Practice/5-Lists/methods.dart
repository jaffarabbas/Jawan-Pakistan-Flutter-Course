//list methods
var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ];
var list2 = ['1', '2', '3', '4', '5', '6'];

//List constructor
void ListConstructor(){
 List<Null> growableList = []..length = 500;
 print(growableList);
}
//add
void Add(){
  // Adds value to the end of this list, extending the length by one.
  // The list must be growable.
  list.add(800);
  print(list);
}
//addAll
void AddAll(){
  // Appends all objects of iterable to the end of this list.
  // Extends the length of the list by the number of objects in iterable. The list must be growable
  List<int> ls = [3,5,6,7,9,10];
  print("Before : $list");
  //... is a spread operater that will apend all the objects with it is used
  //e.g ...ls : ls=[1,2,3] => ...1,2,3
  list.addAll([...ls]);
  print("After : $list");
}
//any
void Any(){
  // Checks whether any element of this iterable satisfies test.
  // Checks every element in iteration order, and returns true if any of them make test return true,
  // otherwise returns false
  //implementation in backend
  // bool any(bool test(E element)) {
  //   for (E element in this) {
  //     if (test(element)) return true;
  //   }
  //   return false;
  // }
  print(list.any((element) => element < 12));
}
//asMap
void AsMap() {
  //Map<int, E> asMap()
  //An unmodifiable Map view of this list.
  //The map uses the indices of this list as keys and the corresponding objects as values.
  //The Map.keys Iterable iterates the indices of this list in numerical order.
  print(list.asMap());
  list.asMap().forEach((key, value) { 
    print("keys : $key - values : $value");
  });
}
//cast
void Cast(){
  //Returns a view of this list as a list of R instances. 
  print(list2.cast<int>());
}
//clear
void Clear() {
  list.clear();
  print(list);
}
//sublist
void SubList(){
  //This method returns a new list containing elements from index between start and end.
  //Note that end element is exclusive while start is inclusive.
  print(list.sublist(5,6));
  //If end parameter is not provided, it returns all elements starting from start till 
  //length of the list.
  print(list.sublist(5));
} 
//Suffle
void Suffle(){
  // This method re-arranges order of the elements in the given list randomly.
  list.shuffle();
  print(list);
}
void main() {
  Clear();
}