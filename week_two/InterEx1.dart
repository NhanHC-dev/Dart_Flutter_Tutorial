import 'dart:io';

void main() {
  print('Enter the basic salary of the employee:');
  double basicSalary = double.parse(stdin.readLineSync()!);
  print("The gross salary: " + calcGrossSalary(basicSalary).toString());
}

double calcGrossSalary(double basicSalary) {
  double hra, da;
  if (basicSalary <= 10000 && basicSalary > 0) {
    hra = basicSalary * 0.2;
    da = basicSalary * 0.8;
  } else if (basicSalary <= 20000) {
    hra = basicSalary * 0.25;
    da = basicSalary * 0.9;
  } else if (basicSalary > 20000) {
    hra = basicSalary * 0.3;
    da = basicSalary * 0.95;
  } else
    return 0;
  return basicSalary + hra + da;
}
