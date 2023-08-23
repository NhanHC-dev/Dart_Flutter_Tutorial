import 'dart:io';
import 'dart:math';

void main() {
  print("Enter the first coefficient of the quadratic equation:");
  double? a = double.parse(stdin.readLineSync()!);
  print("Enter the first coefficient of the quadratic equation:");
  double? b = double.parse(stdin.readLineSync()!);
  print("Enter the first coefficient of the quadratic equation:");
  double? c = double.parse(stdin.readLineSync()!);

  double discriminant = b * b - 4 * a * c;

  switch (discriminant.compareTo(0)) {
    case -1:
      print("The quadratic equation has no roots.");
      break;
    case 0:
      double root = -b / (2 * a);
      print("The quadratic equation has a repeated root: $root");
      break;
    case 1:
      double sqrtDiscriminant = sqrt(discriminant);
      double root1 = (-b + sqrtDiscriminant) / (2 * a);
      double root2 = (-b - sqrtDiscriminant) / (2 * a);
      print("The quadratic equation has two distinct roots:");
      print("Root 1: $root1");
      print("Root 2: $root2");
      break;
  }
}
