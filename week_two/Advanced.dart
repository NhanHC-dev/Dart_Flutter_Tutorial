import 'dart:io';
import 'dart:math';

void main() {
  String char;
  RegExp pattern1 = RegExp(r'^[A-Za-z]$');
  RegExp pattern2 = RegExp(r'^[0-9]$');
  RegExp pattern3 = RegExp(r'^.$');
  int num1;
  double a1, a2, a3;
  int result1;
  //1
  print("Enter a character: ");
  char = stdin.readLineSync()!;
  result1 = (pattern1.hasMatch(char)) ? 0 : ((pattern2.hasMatch(char)) ? 1 : 2);
  switch (result1) {
    case 0:
      {
        print("$char is alphabet");
        break;
      }
    case 1:
      {
        print("$char is digit");
        break;
      }
    case 2:
      {
        print("$char is special character");
        break;
      }
  }
  //3
  print("Enter a month: ");
  num1 = int.parse(stdin.readLineSync()!);
  int numOfDays = 0;
  switch (num1) {
    case 2:
      numOfDays = 28;
      break;
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      numOfDays = 31;
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      numOfDays = 30;
      break;
    default:
      print("Invalid month number.");
  }
  print("There are $numOfDays in $num1");
  //4
  print("Enter a,b,c of quadric equation: ");
  a1 = double.parse(stdin.readLineSync()!);
  a2 = double.parse(stdin.readLineSync()!);
  a3 = double.parse(stdin.readLineSync()!);
  double delta = a2 * a2 - 4 * a1 * a3;
  result1 = (delta > 0) ? 1 : ((delta < 0) ? -1 : 0);
  switch (result1) {
    case 0:
      {
        double root = -a2 / (2 * a1);
        print('The equation has one real root: ' + root.toString());
        break;
      }
    case 1:
      {
        double root1 = (-a2 + sqrt(delta)) / (2 * a1);
        double root2 = (-a2 - sqrt(delta)) / (2 * a1);
        print('The equation has two real roots: ' +
            root1.toString() +
            'and' +
            root2.toString());
        break;
      }
    case -1:
      {
        print('The equation has no real roots.');
        break;
      }
  }
  //5
  print("Enter an alphabet: ");
  char = stdin.readLineSync()!;
  switch (char.toLowerCase()) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      print("The alphabet is a vowel.");
      break;
    default:
      print("The alphabet is a consonant.");
      break;
  }
  //6
  print("Enter a character: ");
  char = stdin.readLineSync()!;
  if (pattern1.hasMatch(char)) {
    print(char + " is alphabet");
  } else if (pattern2.hasMatch(char)) {
    print(char + " is digit");
  } else
    print(char + " is special character");
  //8
  print("Enter a num1 number: ");
  num1 = int.parse(stdin.readLineSync()!);
  if (num1 == 2) {
    print("The number of days in month: 28");
  } else if (num1 == 4 || num1 == 6 || num1 == 9 || num1 == 11) {
    print("The number of days in month: 30");
  } else
    print("The number of days in month: 31");
  //9
  print("Enter a,b,c of quadric equation: ");
  a1 = double.parse(stdin.readLineSync()!);
  a2 = double.parse(stdin.readLineSync()!);
  a3 = double.parse(stdin.readLineSync()!);
  delta = a2 * a2 - 4 * a1 * a3;
  if (delta > 0) {
    double root1 = (-a2 + sqrt(delta)) / (2 * a1);
    double root2 = (-a2 - sqrt(delta)) / (2 * a1);
    print('The equation has two real roots: ' +
        root1.toString() +
        'and' +
        root2.toString());
  } else if (delta == 0) {
    double root = -a2 / (2 * a1);
    print('The equation has one real root: ' + root.toString());
  } else {
    print('The equation has no real roots.');
  }
  //10
  print("Enter a character: ");
  char = stdin.readLineSync()!;
  if (pattern1.hasMatch(char)) {
    if (char.toLowerCase() == 'a' ||
        char.toLowerCase() == 'e' ||
        char.toLowerCase() == 'i' ||
        char.toLowerCase() == 'o' ||
        char.toLowerCase() == 'u') {
      print(char + " is vowel");
    } else {
      print(char + " is consonant");
    }
  } else {
    print(char + " is not alphabet");
  }
  //11
  print("Enter a character: ");
  char = stdin.readLineSync()!;
  if (pattern3.hasMatch(char)) {
    if (pattern1.hasMatch(char)) {
      print(char + " is alphabet");
    } else if (pattern2.hasMatch(char)) {
      print(char + " is digit");
    } else {
      print(char + " is special character");
    }
  } else {
    print(char + " is more than 1 character");
  }
}
