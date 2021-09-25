// 1. How to duplicate repeating items inside a Dart list?
// Problem
// Consider the code:
// final List<Ball> _ballList = [Ball (), Ball (), Ball (), Ball (), Ball (),]
// What can to be done in order to not repeat Ball () multiple times?

void main() {
  List<String> checkDublication = [];
  List<String> ballList = ["bilal","ali","owais","bilal","owais"];
  for(int i = 0 ; i < ballList.length ; i++) {
    checkDublication.add(ballList.removeAt(i));
    if(checkDublication[i] == ballList[i]){
      ballList.removeAt(i);
    }
  }
  print(ballList);
}