// (12) Write a program to generate your K-Electric bill 7. All the amounts should
// be rounded off to 2 decimal places. Display the following fields:
// a. Customer Name
// b. Current Month
// c. Number of units
// d. Charges per unit
// e. Net Amount Payable (within Due Date)
// f. Late Payment Surcharge
// g. Gross Amount Payable (after Due Date)

// Where, Net Amount Payable (within Due Date) = Number of units * Charges per unit
// & Gross Amount Payable (after Due Date) = Net Amount + Late Payment Surcharge
String CustumerName = "Jaffar Abbas";
String CurrentMonth = "September";
num PricesPerUnit = 120.22;
num NumberOfUnits = 300.32;
String Date = "19-9-2021";
String DueDate = "1-10-2021";
num LateCharges = 70;
void main() {
  //upto 2 decimal places
  num NetAmountPayableWithInDueDate = double.parse((NumberOfUnits * PricesPerUnit).toStringAsFixed(2));;
  num NetAmountPayableAfterDueDate = double.parse((NetAmountPayableWithInDueDate + LateCharges).toStringAsFixed(2));

  print("Customer Name : $CustumerName\n"+
  "Current Month : $CurrentMonth\n"+
  "Number Of Units Consume : $NumberOfUnits\n"+
  "Current Month : $CurrentMonth\n"+
  "Due Date : $DueDate\n"+
  "Unit price: $PricesPerUnit\n"+
  "Price WithIn DueDate : $NetAmountPayableWithInDueDate\n"+
  "Price After DueDate : $NetAmountPayableAfterDueDate\n"+
  "Late Charges : $LateCharges"
  );
}