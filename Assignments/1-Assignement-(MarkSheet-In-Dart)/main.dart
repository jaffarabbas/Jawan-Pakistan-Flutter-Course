
//Subject Names
String Subject1 = "Math";
String Subject2 = "Chemistry";
String Subject3 = "Programming";
String Subject4 = "WebDevelopment";
String Subject5 = "Physics";
//Subjects Marks 
num Math = 80.45;
num Chemistry = 90.35;
num Programming = 90.45;
num WebDevelopment = 80.77;
num Physics = 75.43;
num TotalNumbers = 500;

int IndexCount = 0;

//Student Information
String StudentInformation(var StudentRollNumber,var StudentName,var StudentFatherName,var StudentSemister){
  return "| Student Rollnumber    | ${StudentRollNumber}\t |\n| Student Name \t\t| ${StudentName}\t |\n"+
  "| Student Father Name\t| ${StudentFatherName}\t |\n| Student Semister\t| ${StudentSemister}\t\t |";
}

//Calculate Total Obtained Numbers
num TotalObtainedNumbers(){
  return Math + Chemistry + Programming + WebDevelopment + Physics;
}


//for calculating total percentage
num CalculatePercentage(num TotalObtainedNumbers){
  return (TotalObtainedNumbers / TotalNumbers * 100);
}

//logic for grade distribution
String CalculateGradePerSubject(num SubjectMarks){
  if(SubjectMarks >= 90.00 && SubjectMarks <= 100.00){
    return 'A+';
  }
  else if(SubjectMarks >= 80.00 && SubjectMarks <= 89.00){
    return 'A';
  }
  else if(SubjectMarks >= 70.00 && SubjectMarks <= 79.00){
    return 'B';
  }
  else if(SubjectMarks >= 60.00 && SubjectMarks <= 69.00){
    return 'C';
  }
  else if(SubjectMarks >= 50.00 && SubjectMarks <= 59.00){
    return 'D';
  }
  else if(SubjectMarks <= 49.99){
    return 'F';
  }
  else{
    return 'Error';
  }
}

//genrating marksheet display
String ShowMarkSheet(){
  return(
  "==========================================\n"+
  "${StudentInformation("Student1", "Jaffar Abbas", "Abbas Ahmed", "CS1") }\n"+ 
  "==========================================\n"+
  "| s.no | Subject Name   | Marks |  Grade |\n"+   
  "==========================================\n"+
  "|  ${++IndexCount}   | ${Subject1} \t\t| ${Math} |   ${CalculateGradePerSubject(Math)}\t |\n"+
  "|  ${++IndexCount}   | ${Subject2} \t| ${Chemistry} |   ${CalculateGradePerSubject(Chemistry)}\t |\n"+
  "|  ${++IndexCount}   | ${Subject3} \t| ${Programming} |   ${CalculateGradePerSubject(Programming)}\t |\n"+
  "|  ${++IndexCount}   | ${Subject4} | ${WebDevelopment} |   ${CalculateGradePerSubject(WebDevelopment)}\t |\n"+
  "|  ${++IndexCount}   | ${Subject5} \t| ${Physics} |   ${CalculateGradePerSubject(Physics)}\t |\n"+
  "==========================================\n"+
  "|  Total / 500 |\t|     ${TotalObtainedNumbers()}     |\n"+
  "==========================================\n"+
  "|  Percentage  |\t|     ${CalculatePercentage(TotalObtainedNumbers())}%     |\n"+
  "==========================================\n"
  );
}

void main() {
  // print(CalculatePercentage(TotalObtainedNumbers()));
  print(ShowMarkSheet());
}