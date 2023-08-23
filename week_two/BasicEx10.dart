import 'dart:io';

void main() {
  print("Enter the three angles of the triangle:");
  print("Angle 1: ");
  double? a = double.parse(stdin.readLineSync()!);
  print("Angle 2: ");
  double? b = double.parse(stdin.readLineSync()!);
  print("Angle 3: ");
  double? c = double.parse(stdin.readLineSync()!);
  if (isValidTriangle(a, b, c)) {
    print("The angles form a valid triangle.");
  } else {
    print("The angles do not form a valid triangle.");
  }
}

bool isValidTriangle(double a, double b, double c) {
  if (a > 0 && b > 0 && c > 0 && a + b + c == 180) {
    return true;
  } else {
    return false;
  }
}
