import 'dart:io';
import 'dart:math';

void main() {
  double radius;
  print("Enter radius of sphere: ");
  radius = double.parse(stdin.readLineSync()!);
  print("The volume of sphere is: " + calcVolume(radius).toStringAsFixed(2));
  print("The area of sphere is: " + calcArea(radius).toStringAsFixed(2));
}

double calcVolume(double radius) => pi * pow(radius, 3) * 4 / 3;

double calcArea(double radius) => pi * pow(radius, 2) * 4;
