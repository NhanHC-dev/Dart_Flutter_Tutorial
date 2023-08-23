import 'dart:io';
import 'dart:math';

void main() {
  print("Enter the coefficients of the quadratic equation:");
  print("First coefficient: ");
  double? a = double.parse(stdin.readLineSync()!);
  print("Second coefficient: ");
  double? b = double.parse(stdin.readLineSync()!);
  print("Third coefficient: ");
  double? c = double.parse(stdin.readLineSync()!);

  double discriminant = b * b - 4 * a * c;
  double sqrtDiscriminant = sqrt(discriminant);

  if (discriminant > 0) {
    double denominator = 2 * a;
    double root1 = (-b + sqrtDiscriminant) / denominator;
    double root2 = (-b - sqrtDiscriminant) / denominator;
    print("Root 1: $root1");
    print("Root 2: $root2");
  } else if (discriminant == 0) {
    double root = -b / (2 * a);
    print("Repeated root: $root");
  } else {
    double realPart = -b / (2 * a);
    double imaginaryPart = sqrt(-discriminant) / (2 * a);
    print(
        "Complex roots: $realPart + ${imaginaryPart}i and $realPart - ${imaginaryPart}i");
  }
}
