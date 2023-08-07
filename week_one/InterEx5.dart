import 'dart:io';

void main() {
  print("Enter temperature in Celsius:");
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = (9 / 5) * celsius + 32;
  print("$celsius°C is equal to $fahrenheit°F");
}
