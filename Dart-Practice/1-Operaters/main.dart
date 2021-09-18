var a = 10 , b = 2;

void BitwiseOperators() {
  print('Bit Wise Operaters');
  //and
  var BitwiseAnd = a & b;
  print(BitwiseAnd);
  //or
  var BitwiseOr = a | b;
  print(BitwiseOr);
  //XOR
  var BitwiseXOR = a ^ b;
  print(BitwiseXOR);
  //not 
  var BitwiseNot = ~b;
  print(BitwiseNot);
  //left shift
  var BitwiseLeftShift = a << b;
  print(BitwiseLeftShift);
  //right shift
  var BitwiseRightShift = a >> b;
  print(BitwiseRightShift);
}

void AssignmentOperator (){
  print('Assignment Operaters');
  var res = a + b;
  print('= : ${res}');
  var temp;
  temp ??= a + b;
  print('??= when temp is null : ${temp}');
  temp ??= a - b;
  print('??= when temp is populated : ${temp} it is not change because condition work only when temp is null');
}

void ConditionalOperators(){
  var temp = a > b ? 'A is Big' : 'A is Not Big';
  print('Ternery Operaters : ${temp}'); 
  var temp2;
  var temp3 = temp2 ?? 'Now Assigning to NUll temp';
  print('?? when temp2 is null : ${temp3}');
  temp2 = 4;
  temp3 = temp2 ?? 'Now Assigning to NUll temp';
  print('?? when temp is populated : ${temp3} it is not change to String because condition work only when temp is null');
}
void main() {
  BitwiseOperators();
  AssignmentOperator();
  ConditionalOperators();
}