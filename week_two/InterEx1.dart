import 'dart:io';

void main() {
  print("Enter the basic salary of the employee:");
  double? s = double.parse(stdin.readLineSync()!);

  double hra = (s <= 10000)
      ? 0.2
      : (s <= 20000)
          ? 0.25
          : 0.3;

  double da = (s <= 10000)
      ? 0.8
      : (s <= 20000)
          ? 0.9
          : 0.95;

  double hraValue = s * hra;
  double daValue = s * da;

  double grossSalary = s + hraValue + daValue;

  print("Gross Salary: $grossSalary");
}
