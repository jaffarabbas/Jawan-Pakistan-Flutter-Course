// 1. How to duplicate repeating items inside a Dart list?
// Problem
// Consider the code:
// final List<Ball> _ballList = [Ball (), Ball (), Ball (), Ball (), Ball (),]
// What can to be done in order to not repeat Ball () multiple times?


/*
Note : from the internet i get this solution: 
var ids = [1, 4, 4, 4, 5, 6, 6];
var distinctIds = ids.toSet().toList();
but since i had learned the concepts pf data structures and algorithms
so i implemented this solution
 */
void main() {
  //temporary list
  List<String> checkDublication = [];
  //main list
  List<String> ballList = ["bilal","ali","owais","bilal","owais"];
  //loop will run till main list size will be 1 or till list is not empty
  while(ballList.length > 0) {
    //each itration will take first element from the main list
    String checkElement = ballList.removeAt(0);
    //check main list if it contain the checkElement 
    if(ballList.contains(checkElement)){
      //main list remove all emelent thats are equal to checkELements
      ballList.removeWhere((element) => element == checkElement);
    }
    //now adding the checkElement to temporary list 
    checkDublication.add(checkElement);
  }
  //filling back the items to the main list
  ballList.addAll(checkDublication);
  //clear the temporary list
  checkDublication.clear();
  //print the list
  print(ballList);
}