// Write a program that shows the message “First fifteen days of the month”
// if the date is less than 16th of the month else shows “Last days of the
// month”.
void main() {
  String Date = "14-Sep-2021";
  int Day = int.parse(Date.substring(0,2));
  print("Date : $Date");
  if(Day < 16){
    print("First fifteen days of the month");
  }else{
    print("Last days of the month");
  }
}