// (9) Write a program to store 3 student names in an array. Take another array to
// store score of these three students. Assume that total marks are 500 for each
// student, display the scores & percentages of students.
//for calculating total percentage
var Students = ['jaffar','ahmed','fahad'];
var Scores = [490,480,485];
int TotalMarksFrom = 500; 

//for percentage
num CalculatePercentage(num TotalObtainedNumbers){
  //double.parse(TotalObtainedNumbers).toStringAsFixed(2)) will return only 2 digits after the decimal
  //I implemented it by self study
  return double.parse((TotalObtainedNumbers / TotalMarksFrom * 100).toStringAsFixed(2));
}
void main() {
  print(
    "Student ${Students[0]} Socres : ${Scores[0]} / 500 With ${CalculatePercentage(Scores[0])} %\n"+
    "Student ${Students[1]} Socres : ${Scores[1]} / 500 With ${CalculatePercentage(Scores[1])} %\n"+
    "Student ${Students[2]} Socres : ${Scores[2]} / 500 With ${CalculatePercentage(Scores[2])} %"
  );
}