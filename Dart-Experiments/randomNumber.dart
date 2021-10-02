import 'dart:math';

String NewAccountNumber(){
    var random = new Random();
    var AccountNumber = '';
    for (var i = 0; i < 10; i++) {
      AccountNumber += random.nextInt(1000).toString();
    }
    return AccountNumber;
}
void main() {
  print(NewAccountNumber());
}
