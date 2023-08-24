import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
//Write a program to input basic salary of an employee and calculate its Gross salary according to following:
// - Basic Salary <= 10000 : HRA = 20%, DA = 80%
// - Basic Salary <= 20000 : HRA = 25%, DA = 90%
// - Basic Salary > 20000 : HRA = 30%, DA = 95%
  double hra, da;
  print("Enter the basic salary of the employee: ");
  double salary = double.parse(stdin.readLineSync()!);
  if (salary <= 10000) {
    hra = 0.2 * salary;
    da = 0.8 * salary;
  } else if (salary <= 20000) {
    hra = 0.25 * salary;
    da = 0.9 * salary;
  } else {
    hra = 0.3 * salary;
    da = 0.95 * salary;
  }
  double grossSalary = salary + hra + da;
  print("basic salary = $salary");
  print("gross salary = $grossSalary");

//==========================================================================================================================
  // Write a program to input electricity unit charges and calculate total electricity bill according to the given condition:
  // - For first 50 units Rs. 0.50/unit
  // - For next 100 units Rs. 0.75/unit
  // - For next 100 units Rs. 1.20/unit
  // - For unit above 250 Rs. 1.50/unit
  // - An additional surcharge of 20% is added to the bill
  
  double total = 0;
  print("Enter electricity unit charges: ");
  double electricityCharges = double.parse(stdin.readLineSync()!);
  if(electricityCharges <= 50){
    total = electricityCharges * 0.5;
  }else if(electricityCharges > 50 && electricityCharges <= 150){
    total = (50*0.5) + ((electricityCharges-50)*0.75);
  }else if(electricityCharges > 50 && electricityCharges <= 250){
    total = (50*0.5) + (100*0.75) + ((electricityCharges-150)*1.20);
  }else{
    total = (50*0.5) + (100*0.75) + (100*1.2) + ((electricityCharges-250)*1.5);
  }

  double surcharge = 0.2*total;
  total += surcharge;
  print("Total bill: $total");



}
