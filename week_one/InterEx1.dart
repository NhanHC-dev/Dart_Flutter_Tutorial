import 'dart:io';

void main() {
  print("Enter the base of the triagle: ");
  double? b = double.parse(stdin.readLineSync()!);
  print("Enter the height of the triagle: ");
  double? h = double.parse(stdin.readLineSync()!);
  double A = (b * h) / 2;
  print("The area is $A");
}
