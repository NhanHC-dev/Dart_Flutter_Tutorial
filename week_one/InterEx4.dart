import 'dart:io';
import 'dart:math';

void main() {
  double base, exponent;
  print("Enter base: ");
  base = double.parse(stdin.readLineSync()!);
  print("Enter exponent: ");
  exponent = double.parse(stdin.readLineSync()!);
  print("The result is: " + pow(base, exponent).toStringAsFixed(2));
}
