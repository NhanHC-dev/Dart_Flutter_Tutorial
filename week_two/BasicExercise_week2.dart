import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
//check if a number is positive, negative or zero.
  print("Enter the number: ");
  int num = int.parse(stdin.readLineSync()!);
  if (num == 0) {
    print("zero");
  } else if (num < 0) {
    print("negative");
  } else {
    print("positive");
  }

//check if a number is odd or even.
  if (num % 2 == 0) {
    print("even");
  } else {
    print("odd");
  }

//check if a year is leap year or not.
  print("Enter the year: ");
  int year = int.parse(stdin.readLineSync()!);
  if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
    print("leap year");
} else {
    print("not leap year");
}

//check if a character is alphabet or not.
  String letter = 'dart';
  //string letter = '1234';
  if(letter.isEmpty){
    print("invalid string");
  }else if(letter.isNotEmpty && letter.runes.first >= 65 && letter.runes.first <= 90 ||
      letter.runes.first >= 97 && letter.runes.first <= 122){
    print("$letter is an alphabet");  
  }else{
    print("$letter is not an alphabet");
  }


//Program to input any alphabet and check whether it is vowel or consonant.
  print("Enter string: "); 
  String str = stdin.readLineSync()!;
  final vowels = ['a','i','u','e','o'];
  if(str.isEmpty){
    print("invalid string");
  }else if(str.isNotEmpty && str.runes.first >= 65 && str.runes.first <= 90 ||
      str.runes.first >= 97 && str.runes.first <= 122){
    print("$str is an alphabet");
    if(vowels.contains(str)){
      print("$str is a vowels");
    }else{
      print("$str is a consonant");
    }
  }else{
    print("$str is not an alphabet");
  }

// Write a program to input any character and check whether it is alphabet, digit or special character
  print("Enter string: ");
  String str2 = stdin.readLineSync()!;
  final digit = RegExp(r'^[0-9]$');
  final character = RegExp(r'^[a-zA-Z]$');
  if(str2.isEmpty){
    print("invalid string");
  }else if(character.hasMatch(str2)){
    print("is an alphabet");
  }else if(digit.hasMatch(str2)){
        print("is a digit");
  }else {
    print("is special character");
  }


// Write a program to check whether a character is uppercase or lowercase alphabet
final uppercaseCharacter = RegExp(r'^[A-Z]$');
  if(str2.isEmpty){
    print("invalid string");
  }else if(uppercaseCharacter.hasMatch(str2)){
    print("$str2 is uppercase character");
  }else{
    print("$str2 is lower character");
  }

//Write a program to input week number and print week day.
print("Enter the number in week (0-7): ");
int numOfWeek = int.parse(stdin.readLineSync()!);
if(numOfWeek>=1 && numOfWeek <=7){
  final weekDays = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'];
  final weekDay = weekDays[numOfWeek-1];
  print("$numOfWeek in week is $weekDay");
  }else{
    print("invalid number in week");
  }

//Write a program to input angles of a triangle and check whether triangle is valid or not.
 print("Enter the first angles: ");
 double A = double.parse(stdin.readLineSync()!);
 print("Enter the seceond angles: ");
 double B = double.parse(stdin.readLineSync()!);
 print("Enter the third angles: ");
 double C = double.parse(stdin.readLineSync()!);
 if(A+B+C==180.0 && A!=0 && B!=0 && C!=0){
    print("valid triangle");
 }else{
    print("not valid triangle");
 }

//Write a program to find all roots of a quadratic equation.
double n1,n2,n;
 print("Enter x: ");
 double x = double.parse(stdin.readLineSync()!);
 print("Enter y: ");
 double y = double.parse(stdin.readLineSync()!);
 print("Enter z: ");
 double z = double.parse(stdin.readLineSync()!);
    if(x == 0) {
        if(y == 0) {
            if (z == 0) {
                print("\ninfinitely many solutions.\n");
            } else {
                print("\nnot have solution.\n");
            }
        } else {
            n = -z/y;
            print("\nhas a solution is x = $n",);
        }
      }else{
        double delta = y*y-4*x*z;
        if(delta>0){
          print("2 different solution");
          n1 = (-y+sqrt(delta))/(2*x);
          n2 = (-y-sqrt(delta))/(2*x);
          print("solution 1 = $n1");
          print("solution 2 = $n2");
        }else if(delta==0){
          print("2 similar solutio");
          n = -y/2*x;
          print("solution 1 = solution 2 = &n");
        }else{
          print("not have solution");
        }
      }  
 
}

