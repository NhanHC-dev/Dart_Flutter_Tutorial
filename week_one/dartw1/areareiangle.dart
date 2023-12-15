import 'dart:io';

void main() {
  print("Enter base (cd) : ");
  String cdInput = stdin.readLineSync()!;
  int cd = int.parse(cdInput);

  print("Enter height (cr) :");
  String crInput = stdin.readLineSync()!;
  int cr = int.parse(crInput);

  int area = (cd * cr);
  print("Area of the triangle: $area");
}
