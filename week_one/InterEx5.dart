import 'dart:io';

void main() {
  double temperature;
  print("Enter temperature in Celsius: ");
  temperature = double.parse(stdin.readLineSync()!);
  print("The temperature in Fahrenheit is: " +
      inFahrenheit(temperature).toStringAsFixed(2));
}

double inFahrenheit(double temperature) => 32 + temperature * 9 / 5;
