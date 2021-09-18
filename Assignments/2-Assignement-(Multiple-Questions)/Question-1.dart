/*Operators:

Arithmetic Operators:

+ : for addition e.g: (1+2 = 3)
- :  for deletion e.g: (1-2 = -2)
* : for multiplication e.g: (1*2 = 2)
/ : for division e.g: (10/2 = 0)
~/ : division without decimals will show you the number before the decimal . e.g:(2.2= 2)
% : it will give output of the solution e.g: (12 % 5 = 2-> 12 / 5 = 12 - 10 = 2) 
++var : pre increment it will add before iteration
var++: it will execute after iteration normally used in loops


Equality & Relational Operators:

> : greater e.g: (5>2 = true)
<:  lesser e.g: (1<2 = true)
=:  assigning e.g: (variable=2 => variable : 2)
==:  equals to e.g: (2==2 = true)
>=:  greater equal to: (2>=2 = true)
<=:  less than equal to e.g: (1<=2 = true)
!=:  no equal to e.g: (1!=2 = true)

Type Test Operators:
they are use to comp are there operands 

is : equal e.g : (1 is int : true)
is! : not equal : (1 is !String : true)  

Bitwise Operators:
&: Bitwise and 
|: Bitwise or 
^: Bitwise XOR 
~: Bitwise not 
<<: left shift 
>>: right shift 
E.g
void BitwiseOperators() {
  var a = 10 , b = 2;
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

Assignment Operators:
=: assign a vlaue e.g(int a  = 5 : 5)
?=: assigne a value if varibale is initaly null 
Logical Operators:

Conditional Operators:
?: it acts as a if
:: it acts as else
??: it is a condition which show is null
e.g
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

|| :  or e.g: ((1<2 || 2>1) = true)
&&:  and e.g: ((1<2 && 1==1) = false)
!: (XOR) reverse a condition e.g: (!(1<2) = true)
*/