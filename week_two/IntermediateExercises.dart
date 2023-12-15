//[ ] Write a program to input basic salary of an employee and calculate its Gross salary according to following:
//- Basic Salary <= 10000 : HRA = 20%, DA = 80%
//- Basic Salary <= 20000 : HRA = 25%, DA = 90%
//- Basic Salary > 20000 : HRA = 30%, DA = 95%
import 'dart:io';
void one(){
  double money;
  print("Enter money: ");
  money = double.parse(stdin.readLineSync()!);
  if(money < 0){
    print("Money Error.");
  }else if(money>= 0 && money <= 10000){
    print("HRA = 20% and DA = 80%");
  }else if(money> 10000 && money <= 20000){
    print("HRA = 25% and DA = 90%");
  }else{
    print("HRA = 30% and DA = 95%");
  }
}
//[ ] Write a program to input electricity unit charges and calculate total electricity bill according to the given condition:
//  - For first 50 units Rs. 0.50/unit
//  - For next 100 units Rs. 0.75/unit
//  - For next 100 units Rs. 1.20/unit
//  - For unit above 250 Rs. 1.50/unit
//  - An additional surcharge of 20% is added to the bill 
void main(){
  print("Enter electricity unit: ");
  int unit = int.parse(stdin.readLineSync()!);
  double money = 0;
  if(unit>=0 && unit<=50){
    money = unit*0.5;
  }else if(unit>50 && unit<=150){
    money = (unit-50)*0.75 + 0.5*50;
  }else if(unit>150 && unit<=250){
    money = (unit-150)*1.2 + 0.5*50 + 0.75*100;
  }else if(unit > 250){
    money = (unit-250)*1.5 + 0.5*50 + 0.75*100 + 1.2*100;
  }else{
    print("Error");
  }
  print("Money: $money");
}