// Let’s say you are given a list saved in a variable:
// Consider a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
// Write a code that takes this list and makes a new list that has only the
// even elements of this list in it.

void main(){
  var temp = [];
  var a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  for(int i = 0; i < a.length; i++){
    if(a[i]%2==0){
      temp.add(a[i]);
    }
  }
  print('Even List : $temp');
}