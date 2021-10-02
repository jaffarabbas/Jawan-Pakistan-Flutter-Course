// 5) Make a function in class and then call it outside class.

class Test{
  void FuncTest(){
    print('function is called Outside');
  }
}

void main() {
  Test obj = new Test();
  obj.FuncTest();
}