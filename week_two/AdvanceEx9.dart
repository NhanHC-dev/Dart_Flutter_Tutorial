import 'dart:io';
import 'dart:math';

void main() {
  print("Enter the first coefficient of the quadratic equation:");
  double? a = double.parse(stdin.readLineSync()!);
  print("Enter the second coefficient of the quadratic equation:");
  double? b = double.parse(stdin.readLineSync()!);
  print("Enter the third coefficient of the quadratic equation:");
  double? c = double.parse(stdin.readLineSync()!);

  double discriminant = b * b - 4 * a * c;

  if (discriminant < 0) {
    print("The quadratic equation has no real roots.");
  } else if (discriminant == 0) {
    double root = -b / (2 * a);
    print("The quadratic equation has a repeated root: $root");
  } else {
    double sqrtDiscriminant = sqrt(discriminant);
    double root1 = (-b + sqrtDiscriminant) / (2 * a);
    double root2 = (-b - sqrtDiscriminant) / (2 * a);
    print("The quadratic equation has two distinct real roots:");
    print("Root 1: $root1");
    print("Root 2: $root2");
  }
}
