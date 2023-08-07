import 'dart:io';
import 'dart:math';

void main() {
  //1
  double num;
  String result;
  print("Enter a number: ");
  num = double.parse(stdin.readLineSync()!);
  result = (num > 0)
      ? " is positive"
      : (num == 0)
          ? " is zero"
          : " is negative";
  print(num.toString() + result);
  //2
  int num1;
  print("Enter a number: ");
  num1 = int.parse(stdin.readLineSync()!);
  result = (num1 % 2 == 0) ? " is even" : " is odd";
  print(num1.toString() + result);
  //3
  print("Enter a year: ");
  num1 = int.parse(stdin.readLineSync()!);
  result = (num1 % 400 == 0 || (num1 % 100 != 0 && num1 % 4 == 0))
      ? " is a leap year"
      : " is not a leap year";
  print(num1.toString() + result);
  //4
  String char;
  RegExp pattern1 = RegExp(r'^[A-Za-z]$');
  print("Enter a character: ");
  char = stdin.readLineSync()!;
  result = (pattern1.hasMatch(char)) ? " is alphabet " : " is not alphabet";
  print(char + result);
  //5
  print("Enter a character: ");
  char = stdin.readLineSync()!;
  result = (pattern1.hasMatch(char))
      ? ((char.toLowerCase() == 'a' ||
              char.toLowerCase() == 'e' ||
              char.toLowerCase() == 'i' ||
              char.toLowerCase() == 'o' ||
              char.toLowerCase() == 'u')
          ? " is vowel"
          : " is consonant")
      : " is not alphabet";
  print(char + result);
  //6
  RegExp pattern2 = RegExp(r'^[0-9]$');
  print("Enter a character: ");
  char = stdin.readLineSync()!;
  result = (pattern1.hasMatch(char))
      ? " is alphabet"
      : ((pattern2.hasMatch(char)) ? " is digit" : " is special character");
  print(char + result);
  //7
  print("Enter a character: ");
  char = stdin.readLineSync()!;
  result = (char.toUpperCase() == char) ? " is uppercase" : " is lowercase";
  print(char + result);
  //9
  print("Enter a num1 number: ");
  num1 = int.parse(stdin.readLineSync()!);
  result = ((num1 == 2))
      ? "28"
      : ((num1 == 4 || num1 == 6 || num1 == 9 || num1 == 11) ? "30" : "31");
  print("The number of days in month: " + result);
  //10
  double a1, a2, a3;
  print("Enter a 3 angles of triangle: ");
  a1 = double.parse(stdin.readLineSync()!);
  a2 = double.parse(stdin.readLineSync()!);
  a3 = double.parse(stdin.readLineSync()!);
  result = (a1 + a2 + a3 == 180) ? "is valid" : "is not valid";
  print("This triangle is: " + result);
  //11
  print("Enter a,b,c of quadric equation: ");
  a1 = double.parse(stdin.readLineSync()!);
  a2 = double.parse(stdin.readLineSync()!);
  a3 = double.parse(stdin.readLineSync()!);
  findRoots(a1, a2, a3);
}

findRoots(double a, double b, double c) {
  double delta = b * b - 4 * a * c;
  if (delta < 0) {
    print('The equation has no real roots.');
  } else if (delta == 0) {
    double root = -b / (2 * a);
    print('The equation has one real root: ' + root.toString());
  } else {
    double root1 = (-b + sqrt(delta)) / (2 * a);
    double root2 = (-b - sqrt(delta)) / (2 * a);
    print('The equation has two real roots: ' +
        root1.toString() +
        'and' +
        root2.toString());
  }
}
