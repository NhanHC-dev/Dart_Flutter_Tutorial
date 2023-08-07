import 'dart:io';

void main() {
  double base, height;
  print("Enter base: ");
  base = double.parse(stdin.readLineSync()!);
  print("Enter height: ");
  height = double.parse(stdin.readLineSync()!);
  print("Area of triangle is: " + calcArea(base, height).toString());
}

double calcArea(double base, double height) => (base * height) / 2;
