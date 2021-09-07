
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
  return "Student Roll Number: ${StudentRollNumber}\nStudent Name : ${StudentName}\n"+
  "Student Father Name: ${StudentFatherName}\nStudent Semister: ${StudentSemister}";
}

//Calculate Total Obtained Numbers
num TotalObtainedNumbers(){
  return Math + Chemistry + Programming + WebDevelopment + Physics;
}

//for calculating total percentage
num CalculatePercentage(num TotalObtainedNumbers){
  return (TotalObtainedNumbers / TotalNumbers * 100);
}

String ShowMarkSheet(){
  return(
  "_________________________________\n"+   
  "| ${++IndexCount} | ${Subject1} \t\t| ${Math} |\n"+
  "| ${++IndexCount} | ${Subject2} \t| ${Chemistry} |\n"+
  "| ${++IndexCount} | ${Subject3} \t| ${Programming} |\n"+
  "| ${++IndexCount} | ${Subject4} \t| ${WebDevelopment} |\n"+
  "| ${++IndexCount} | ${Subject5} \t\t| ${Physics} |\n"+
  "----------------------------------\n"
  );
}

void main() {
  // print(StudentInformation("sdfsdfsdf", "StudentName", "StudentFatherName", "StudentSemister"));
  // print(CalculatePercentage(TotalObtainedNumbers()));
  print(ShowMarkSheet());
}