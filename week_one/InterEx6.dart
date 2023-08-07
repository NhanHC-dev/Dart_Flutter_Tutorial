import 'dart:io';
import 'dart:math';

void main() {
  int num;
  print("Enter a number: ");
  num = int.parse(stdin.readLineSync()!);
  String result =
      (isPrime(num)) ? " is a prime number" : " is not a prime number";
  print(num.toString() + result);
}

bool isPrime(int num) {
  if (num == 2) return true;
  for (int i = 2; i < sqrt(num); i++) {
    if (num % i == 0) return false;
  }
  return true;
}
