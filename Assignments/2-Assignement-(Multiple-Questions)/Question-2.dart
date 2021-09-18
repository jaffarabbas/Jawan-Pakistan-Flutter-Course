// (2)What will be the output in variables a, b & result after execution of the
// following script:
// a. var a = 2, b = 1;
// b. var result = --a - --b + ++b + b--;
// Explain the output at each stage:
// c. --a;
// d. --a - --b;
// e. --a - --b + ++b;
// f. --a - --b + ++b + b--;

void main() {
  var a = 2, b = 1;
  print('--a : --2 it is a pre increment e.g 2-1 : 1');
  print('--a  - --b : --2 - --1 it is a pre increment e.g 2-1 - 1-1 => 1-0: 1');
  print('--a  - --b + ++b : --2 - --1 - ++1 it is a pre increment e.g 2-1 - 1-1 + 1+1=> 1-0+1: 2');
  print('--a  - --b + ++b + b--: --2 - --1 - ++1 + 1-- it is a pre increment and post increment so post increment will not work on first time but will work after one itration so it will work on loop'+ 
  'e.g 2-1 - 1-1 + 1+1 + (1-1)<- it will work after one itration => 1 -0 + 1 + 1 : 3');
  var result = --a - --b + ++b + b--;
  print('--a - --b + ++b + b-- : ${result}');
}