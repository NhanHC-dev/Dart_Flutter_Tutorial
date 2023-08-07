import 'dart:io';
import 'dart:math';

void main() {
  print("Enter the base:");
  double base = double.parse(stdin.readLineSync()!);
  print("Enter the exponent:");
  int exponent = int.parse(stdin.readLineSync()!);

  num result = pow(base, exponent);
  print("$base^$exponent = $result");
}
