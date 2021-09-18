// (5)What is a difference between these operators “?? And?”

//difference
//? is use when there is a condition which is true 
// ?? is used when the condition run only when the assigned varibale is null  

// e.g

// void ConditionalOperators(){
//   var temp = a > b ? 'A is Big';
//   print('Ternery Operaters : ${temp}'); 
//   var temp2;
//   var temp3 = temp2 ?? 'Now Assigning to NUll temp';
//   print('?? when temp2 is null : ${temp3}');
//   temp2 = 4;
//   temp3 = temp2 ?? 'Now Assigning to NUll temp';
//   print('?? when temp is populated : ${temp3} it is not change to String because condition work only when temp is null');
// }

//ans:
// var a = 10 , b = 2;
// Ternery Operaters : A is Big
// ?? when temp2 is null : Now Assigning to NUll temp
// ?? when temp is populated : 4 it is not change to String because condition work only when temp is null