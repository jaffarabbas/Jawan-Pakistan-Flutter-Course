//list methods
var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ];
var list2 = [1,2, 3, 4, 5, 6, 7, 8, 9, 10];
var list3 = ['1dsf', '2sdf', '3sdfs', '4sdfdsf', '5sdfds','1dsf'];
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
  // Removes all objects from this list; the length of the list becomes zero. 
  list.clear();
  print(list);
}
//contains
void Contains() {
  //Whether the collection contains an element equal to element
  print(list.contains(1));
}
//elementAt
void ElementAt() {
  // Returns the indexth element. 
  print(list.elementAt(0));
}
//every
void Every() {
  // Checks whether every element of this iterable satisfies test
  // Checks every element in iteration order, and returns false if any of them make test return false, 
  // otherwise returns true.
  print(list.every((element) => element > 3));
}
//Expand
void Expand(){
  // Expands each element of this Iterable into zero or more elements.
  print(list.expand((element) => [element * 10]));
}
//fillRange
void FillRange(){
  // Overwrites a range of elements with fillValue
  list.fillRange(5, 10 , 10*3);
  print(list);
}
//firstWhere
void FirstWhere(){
  // Returns the first element that satisfies the given predicate test.
  // Iterates through elements and returns the first to satisfy
  print(list.firstWhere((element) => element == 10));
}
//fold
void Fold(){
  // Reduces a collection to a single value by iteratively combining each element of the 
  // collection with an existing value
  int l = list.fold(0, (prev, element) =>  prev + (element));
  print(l);
}
//followedBy 
void FollowedBy(){
  // Returns the lazy concatenation of this iterable and other.
  // The returned iterable will provide the same elements as this iterable, and, after that,
  // the elements of other,in the same order as in the original iterables.
  print(list.followedBy(list2.cast<int>()));
}
//forEach
void ForEach() {
  // Invokes action on each element of this iterable in iteration order.
  list.forEach((element) {
    print(element);
  });
}
//getRange
void GetRange(){
  // Creates an Iterable that iterates over a range of elements.
  print(list.getRange(1, 2));
}
// indexOf(E element, [int start = 0]) → int
void IndexOf(){
  // The first index of element in this list. [...]
  print(list.indexOf(11));
}
// indexWhere(bool test(E element), [int start = 0]) → int
void IndexWhere() {
  // The first index in the list that satisfies the provided test. [...]
  var l = list.indexWhere((element) => element == 11);
  print(l);
}
// insert(int index, E element) → void
void Insert() {
// Inserts element at position index in this list. [...]
  list.insert(1, 6606);
  print(list);
}
// insertAll(int index, Iterable<E> iterable) → void
// Inserts all objects of iterable at position index in this list. [...]
void InsertAll() {
  list.insertAll(11, list2);
  print(list);
}
// join([String separator = ""]) → String
void Join(){
// Converts each element to a String and concatenates the strings. [...]
  print(list.join("\t"));
}
// lastIndexOf(E element, [int? start]) → int
void LastIndexOf(){
// The last index of element in this list. [...]
  print(list3.lastIndexOf('1dsf',0));
  //If start is not provided, this method searches from the end of the list.
  print(list3.lastIndexOf('1dsf'));
}
// lastIndexWhere(bool test(E element), [int? start]) → int
void LastIndexWhere() {
// The last index in the list that satisfies the provided test. [...]
  var l = list.lastIndexWhere((element) => element > 1);
  print(l);
}
// lastWhere(bool test(E element), {E orElse()?}) → E
void LastWhere() {
// Returns the last element that satisfies the given predicate test. [...]
  var l = list.lastWhere((element) => element - 3 == 1);
  print(l);
}
// map<T>(T toElement(E e)) → Iterable<T>
// The current elements of this iterable modified by toElement. [...]
// inherited
// noSuchMethod(Invocation invocation) → dynamic
// Invoked when a non-existent method or property is accessed. [...]
// inherited
// reduce(E combine(E value, E element)) → E
// Reduces a collection to a single value by iteratively combining elements of the collection using the provided function. [...]
// inherited
// remove(Object? value) → bool
// Removes the first occurrence of value from this list. [...]
// removeAt(int index) → E
// Removes the object at position index from this list. [...]
// removeLast() → E
// Removes and returns the last object in this list. [...]
// removeRange(int start, int end) → void
// Removes a range of elements from the list. [...]
// removeWhere(bool test(E element)) → void
// Removes all objects from this list that satisfy test. [...]
// replaceRange(int start, int end, Iterable<E> replacements) → void
// Replaces a range of elements with the elements of replacements. [...]
// retainWhere(bool test(E element)) → void
// Removes all objects from this list that fail to satisfy test. [...]
// setAll(int index, Iterable<E> iterable) → void
// Overwrites elements with the objects of iterable. [...]
// setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) → void
// Writes some elements of iterable into a range of this list. [...]
// shuffle([Random? random]) → void
// Shuffles the elements of this list randomly.
// singleWhere(bool test(E element), {E orElse()?}) → E
// Returns the single element that satisfies test. [...]
// inherited
// skip(int count) → Iterable<E>
// Returns an Iterable that provides all but the first count elements. [...]
// inherited
// skipWhile(bool test(E value)) → Iterable<E>
// Returns an Iterable that skips leading elements while test is satisfied. [...]
// inherited
// sort([int compare(E a, E b)?]) → void
// Sorts this list according to the order specified by the compare function. [...]
// sublist(int start, [int? end]) → List<E>
// Returns a new list containing the elements between start and end. [...]
// take(int count) → Iterable<E>
// Returns a lazy iterable of the count first elements of this iterable. [...]
// inherited
// takeWhile(bool test(E value)) → Iterable<E>
// Returns a lazy iterable of the leading elements satisfying test. [...]
// inherited
// toList({bool growable = true}) → List<E>
// Creates a List containing the elements of this Iterable. [...]
// inherited
// toSet() → Set<E>
// Creates a Set containing the same elements as this iterable. [...]
// inherited
// toString() → String
// A string representation of this object. [...]
// inherited
// where(bool test(E element)) → Iterable<E>
// Returns a new lazy Iterable with all elements that satisfy the predicate test. [...]
// inherited
// whereType<T>() → Iterable<T>
// Returns a new lazy Iterable with all elements that have type T. [...]
// inherited
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
  LastWhere();    
}