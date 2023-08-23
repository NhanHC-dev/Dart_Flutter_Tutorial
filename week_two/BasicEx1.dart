import 'dart:io';

void main() {
  print("Enter your number: ");
  double? n = double.parse(stdin.readLineSync()!);

  if (n > 0) {
    print("$n is positive");
  } else if (n < 0) {
    print("$n is negative");
  } else {
    print("$n is zero");
  }
}
