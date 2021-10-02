// 6) Print your name in a sentence using classes.

class NameInSentence{
  late String sentence;
  String PrintName(){
    return sentence;
  }
}

void main() {
  NameInSentence obj = new NameInSentence();
  obj.sentence = 'Jaffar';
  print(obj.PrintName());
}