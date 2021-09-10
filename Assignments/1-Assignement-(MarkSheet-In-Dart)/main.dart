/*
Marksheet in Dart
Assignment 1 Jawan Pakistan Flutter Course
Name : Jaffar abbas
GitHub: https://github.com/jaffarabbas/Jawan-Pakistan-Flutter-Course/blob/main/Assignments/1-Assignement-(MarkSheet-In-Dart)/main.dart
*/


/*
Variables
*/
//Student Information
String StudentRollNumber = "Student1";
String StudentName = "Jaffar Abbas";
String StudentFatherName = "Abbas Ahmed";
String Semister = "CS1";
//Subject Names
String Subject1 = "Math";
String Subject2 = "Chemistry";
String Subject3 = "Programming";
String Subject4 = "WebDevelopment";
String Subject5 = "Physics";
//Subjects Marks 
num Math = 86.45;
num Chemistry = 40.35;
num Programming = 90.45;
num WebDevelopment = 90.77;
num Physics = 94.43;
num TotalNumbers = 500;
//addendence criteria.
num StudentAttendense = 75;
//Student Exam Attendence
bool Subject1Precence = true;
bool Subject2Precence = true;
bool Subject3Precence = true;
bool Subject4Precence = true;
bool Subject5Precence = true;
//it will use as a s.no in marksheet it will dynamically change the numebr by rpe incremment
int IndexCount = 0;
//set the defualt Fail value to false
bool IsFail = false;

/*
Functions
*/

//Student Information
String StudentInformation(var StudentRollNumber,var StudentName,var StudentFatherName,var StudentSemister){
  return "| Student Rollnumbert\t\t| ${StudentRollNumber}\t   |\n\t\t| Student Name \t\t\t| ${StudentName}\t   |\n"+
  "\t\t| Student Father Name\t\t| ${StudentFatherName}\t   |\n\t\t| Student Semister\t\t| ${StudentSemister}\t\t   |\n"+
  "\t\t| Attendense \t\t\t| ${StudentAttendense}%\t\t   |";
}

//Calculate Total Obtained Numbers
num TotalObtainedNumbers(){
  return Math + Chemistry + Programming + WebDevelopment + Physics;
}

//for calculating total percentage
num CalculatePercentage(num TotalObtainedNumbers){
  //double.parse(TotalObtainedNumbers).toStringAsFixed(2)) will return only 2 digits after the decimal
  //I implemented it by self study
  return double.parse((TotalObtainedNumbers / TotalNumbers * 100).toStringAsFixed(2));
}

//logic for grade distribution
String CalculateGradePerSubject(num SubjectMarks){
  if(SubjectMarks >= 90.00 && SubjectMarks <= 100.00 && StudentAttendense >= 75 && Subject1Precence == true){
    return 'A+';
  }
  else if(SubjectMarks >= 80.00 && SubjectMarks <= 89.00 && StudentAttendense >= 75 && Subject2Precence == true){
    return 'A';
  }
  else if(SubjectMarks >= 70.00 && SubjectMarks <= 79.00 && StudentAttendense >= 75 && Subject3Precence == true){
    return 'B';
  }
  else if(SubjectMarks >= 60.00 && SubjectMarks <= 69.00 && StudentAttendense >= 75 && Subject4Precence == true){
    return 'C';
  }
  else if(SubjectMarks >= 50.00 && SubjectMarks <= 59.00 && StudentAttendense >= 75 && Subject5Precence == true){
    return 'D';
  }
  else if(SubjectMarks <= 49.99 || StudentAttendense < 75 
  || Subject1Precence == false || Subject2Precence == false
  || Subject3Precence == false || Subject4Precence == false
  || Subject5Precence == false){
    IsFail = !(IsFail);
    return 'F';
  }
  else{
    return 'Error';
  }
}

//Average Grade marks
num CalculateAverage(){
  return TotalObtainedNumbers() ~/ 5;
}

//Check Fail Subject for total grading 
bool CheckFailSubjectForTotalGrade(){
   if(CalculateGradePerSubject(Math) == 'F' || CalculateGradePerSubject(Chemistry) == 'F'|| 
    CalculateGradePerSubject(Programming) == 'F' || CalculateGradePerSubject(WebDevelopment) == 'F' ||
    CalculateGradePerSubject(Physics) == 'F'){
      return true;
    }
    return false;
}
//Average Grade distribution
String CalculateTotalGrade(){
  if(CheckFailSubjectForTotalGrade() == true){
    return "F";
  }
  else if(CalculateAverage() >= 90 && CalculateAverage() <= 100  && StudentAttendense >= 75){
    return "A+";
  }
  else if(CalculateAverage() >= 80 && CalculateAverage() <= 89 && StudentAttendense >= 75){
    return 'A';
  }
  else if(CalculateAverage() >= 70 && CalculateAverage() <= 79 && StudentAttendense >= 75){
    return 'B';
  }
  else if(CalculateAverage() >= 60 && CalculateAverage() <= 69 && StudentAttendense >= 75){
    return 'C';
  }
  else if(CalculateAverage() >= 50 && CalculateAverage() <= 59 && StudentAttendense >= 75){
    return 'D';
  }
  else if(CalculateAverage() <= 49 || StudentAttendense < 75){
    IsFail = true;
    return 'F';
  }
  else{
    return 'Error';
  }
}

//return if student is pass or fail
String QualifiedFor(){
  //!IsFail : IsFail == false
  if(!IsFail){
    return "Pass";
  }else{
    return "Fail";
  }
}

//Checking Exam Presense of a Student
String CheckingPresenseInExam(bool Precence){
  if(Precence == false){
      return "Abcent ";
  }else if(StudentAttendense < 75){
    return "Reject ";
  }
  else{
    return "Precent";
  } 
}

//and assiging him default marks
void AssiginingDefaultMarksOnAbcense(){
  if(Subject1Precence == false){
    Math = 00.00;
  }
  else if(Subject2Precence == false){
    Chemistry = 00.00;
  }
  else if(Subject2Precence == false){
    Programming = 00.00;
  }
  else if(Subject3Precence == false){
    WebDevelopment = 00.00;
  }
  else if(Subject4Precence == false){
    Physics = 00.00;
  }
  else if(Subject5Precence == false){
    TotalNumbers = 00.00;
  }
}

//Return a string that will show the reson of faliure by checking Over all attendence
String ReasonForFailer(){
  if(StudentAttendense < 75){
    return "| Reason For Failer |\t\t|  Short Atendence |\n"+
    "\t\t====================================================\n";
  }else{
    return "";
  }
}

//Header Quote 'for better UI in concole'
void HeaderQuote(){
  print("||\\\\//||    //\\\\     ||||||    || //   ||||||||    ||  ||    //====    //====   ||||||||");
  print("|| \\/ ||   //<>\\\\    ||__//    ||//    ||          ||||||    ||====    ||====      ||    ");
  print("||    ||  //    \\\\   ||  \\\\    || \\\\   ||||||||    ||  ||    \\\\====    \\\\====      || ");
  print("                                             ||");
  print("                                       ||||||||");
}

//genrating marksheet display
String ShowMarkSheet(){
  //show header with Quote "MarkSheet"
  //Note: if in Dart.pad it take time to compile so commecnt the HeaderQuote() function below.
  HeaderQuote();
  //Checking First Exam Presnese
  AssiginingDefaultMarksOnAbcense();
  return(
  "\t\t====================================================\n"+
  "\t\t${StudentInformation(StudentRollNumber, StudentName, StudentFatherName, Semister) }\n"+ 
  "\t\t====================================================\n"+
  "\t\t| s.no | Subject Name   | Marks | Grade | Precence |\n"+   
  "\t\t====================================================\n"+
  "\t\t|  ${++IndexCount}  | ${Subject1} \t\t| ${Math} |   ${CalculateGradePerSubject(Math)}\t| ${CheckingPresenseInExam(Subject1Precence)}  |\n"+
  "\t\t|  ${++IndexCount}  | ${Subject2} \t| ${Chemistry} |   ${CalculateGradePerSubject(Chemistry)}\t| ${CheckingPresenseInExam(Subject2Precence)}  |\n"+
  "\t\t|  ${++IndexCount}  | ${Subject3} \t| ${Programming} |   ${CalculateGradePerSubject(Programming)}\t| ${CheckingPresenseInExam(Subject3Precence)}  |\n"+
  "\t\t|  ${++IndexCount}  | ${Subject4}  | ${WebDevelopment} |   ${CalculateGradePerSubject(WebDevelopment)}\t| ${CheckingPresenseInExam(Subject4Precence)}  |\n"+
  "\t\t|  ${++IndexCount}  | ${Subject5} \t| ${Physics} |   ${CalculateGradePerSubject(Physics)}\t| ${CheckingPresenseInExam(Subject5Precence)}  |\n"+
  "\t\t====================================================\n"+
  "\t\t|  Total / 500  |\t\t  |     ${TotalObtainedNumbers()}     |\n"+
  "\t\t====================================================\n"+
  "\t\t|  Percentage   |\t\t  |     ${CalculatePercentage(TotalObtainedNumbers())}%     |\n"+
  "\t\t====================================================\n"+
  "\t\t|   Position    |\t\t  |     ${QualifiedFor()}\t   |\n"+
  "\t\t====================================================\n"+
  "\t\t|   Grade       |\t\t  |        ${CalculateTotalGrade()}\t   |\n"+
  "\t\t====================================================\n"+
  "\t\t${ReasonForFailer()}"
  );
}

/*
Test Function
*/

void Test() {
  //test fucntion that run the marksheet function
  print(ShowMarkSheet());
}

/*
Main Function
*/

void main() {
  //calling Test function in main function
  //reason : clearing the main function with long code
  Test();
}