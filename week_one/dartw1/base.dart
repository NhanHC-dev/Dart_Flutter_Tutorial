import 'dart:io';

void main() {

  stdout.write("Enter the base: ");
  String baseInput = stdin.readLineSync()!;
  int base = int.tryParse(baseInput)?? 0;

  stdout.write("Enter the exponent: ");
  String exponentInput = stdin.readLineSync()!;
  int exponent = int.tryParse(exponentInput) ?? 0;

  int result = pow(base, exponent) ;

  print("$base raised to the power of $exponent is: $result");
}

int pow(int base, int exponent) {
 
  return base.modPow(exponent, base);
}