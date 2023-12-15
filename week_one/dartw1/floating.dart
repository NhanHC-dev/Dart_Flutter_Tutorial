import 'dart:io';

void main() {
  print("Enter the first number: ");
  String num1Input = stdin.readLineSync()!;
  double num1 = double.parse(num1Input);

  print("Enter the second number: ");
  String num2Input = stdin.readLineSync()!;
  double num2 = double.parse(num2Input);

  double average = (num1 + num2) / 2;
  print("Average of $num1 and $num2: ${average.toStringAsFixed(2)}");
}
