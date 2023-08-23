import 'dart:io';

void main() {
  print("Enter your number: ");
  double? n = double.parse(stdin.readLineSync()!);
  String result = (n % 2 == 0) ? "even" : "odd";
  print("Your number is $result");
}
