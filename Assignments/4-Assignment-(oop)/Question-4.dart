// 4) Make a function for printing mark sheet then Make a list of at-least 5 names and another list of
// their marks, and print the mark sheet of all of them.
int index = 0;
int TotalNumbers = 500;
//for calculating total percentage
num CalculatePercentage(num TotalObtainedNumbers){
  //double.parse(TotalObtainedNumbers).toStringAsFixed(2)) will return only 2 digits after the decimal
  //I implemented it by self study
  return double.parse((TotalObtainedNumbers / TotalNumbers * 100).toStringAsFixed(2));
}
//print marksheet for indivisual student
void PrintMarkSheet(var StudentName , num StudentNumbers){
  print('|${++index}| $StudentName     $StudentNumbers\t${CalculatePercentage(StudentNumbers)}%|');
}
void main() {
  List<String> StudentName = ['Jaffar','Ahmed','Fahad','Ahsan','Faraz'];
  List<int> StudentNumbers = [490,460,340,430,499];
  print('==============================');
  print('|Student   Marks   Percentage|');
  print('==============================');
  for (int i = 0; i < StudentName.length; i++){
    PrintMarkSheet(StudentName[i],StudentNumbers[i]);
  }
  print('==============================');
}