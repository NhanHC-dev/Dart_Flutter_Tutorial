import 'dart:io';

void main() {
  print("Enter your year: ");
  int? year = int.parse(stdin.readLineSync()!);
  String result = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
      ? "a leap"
      : "not a leap";
  print("$year is $result year");
}
