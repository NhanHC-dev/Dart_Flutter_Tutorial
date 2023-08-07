import 'dart:io';

void main() {
  double n1, n2;
  print("Enter first number: ");
  n1 = double.parse(stdin.readLineSync()!);
  print("Enter second number: ");
  n2 = double.parse(stdin.readLineSync()!);
  print("The average is: " + calcAverage(n1, n2).toStringAsFixed(2));
}

double calcAverage(double n1, double n2) => (n1 + n2) / 2;
