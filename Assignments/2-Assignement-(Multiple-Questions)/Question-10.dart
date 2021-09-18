// Declare 5 legal & 5 illegal variable names.

void main() {
  print('legal');
  var Var = 1;
  print("var Var = ${Var}");
  var vars = 1;
  print("var vars = ${vars}");
  var _var = 1;
  print("var _var = ${_var}");
  var Var1 = 1;
  print("var Var1 = ${Var1}");
  var var_ = 1;
  print("var var_ = ${var_}");
  print('ilegal');  
  var 1var = 1;
  print("var 1var = ${1var}");
  var #var = 1;
  print("var #var = ${#var}");
  var var = 1;
  print("var var = ${var}");
  var class = 1;
  print("var class = ${class}");
  var blank space = 1;
  print("var blank space = ${blank space}");
}