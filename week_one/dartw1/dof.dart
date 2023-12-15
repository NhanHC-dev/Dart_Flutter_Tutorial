import 'dart:io';

void main() {

  stdout.write("Enter the temperature in Celsius: ");
  String celsiusInput = stdin.readLineSync()!;
  double celsius = double.tryParse(celsiusInput) ?? 0.0;

  double fahrenheit = (9 / 5) * celsius + 32;

  print("$celsius degrees Celsius is equal to $fahrenheit degrees Fahrenheit");
}
