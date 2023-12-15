import 'dart:io';

void main(){
  final pi = 3.14;
  print("Enter radius : ");
  String radiusInput = stdin.readLineSync()!;
  double radius = double.parse(radiusInput);

  double v = (4 / 3) * pi * radius * radius * radius;
  double a = 4 * pi * radius * radius;

  print("v : $v");
  print("A : $a");
}