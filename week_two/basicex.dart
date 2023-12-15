 //- [X] Write a program to check if a number is positive, negative or zero.
 import 'dart:ffi';
import 'dart:io';
import 'dart:math';
 void checkPandN(){
  int number;
  print("Enter number: ");
  number = int.parse(stdin.readLineSync()!);
  if(number == 0){
    print("Zero");
  }else if(number >0){
    print("Positive");
  }else{
    print("Negative");
  }
 }
//- [ ] Write a program to check if a number is odd or even.
 void checkOddandEven(){
  int number;
  print("Enter number: ");
  number = int.parse(stdin.readLineSync()!);
  if(number % 2 == 0){
    print("Odd");
  }else{
    print("Even");
  }
 }
//- [ ] Write a program to check if a year is leap year or not.
void checkLeafYear(){
  int year;
  print("Enter year: ");
  year = int.parse(stdin.readLineSync()!);
  if(year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)){
    print("Leap year");
  }else{
    print("Not leap year");
  }
}
//- [ ] Write a program to check if a character is alphabet or not.
void checkAlphabet(){
  print("Enter character: ");
  String c = stdin.readLineSync()!;
  var kitu;
  if(!c.isEmpty){
    kitu = c[0]; 
  }
  print("kitu : $kitu");
  if((kitu.codeUnitAt(0)>=65 && kitu.codeUnitAt(0) <=90 )||(kitu.codeUnitAt(0)>=97 && kitu.codeUnitAt(0) <=122 )){
    print("$kitu character is alphabet");
  }else{
    print("$kitu character is not alphabet");
  }
}
//- [ ] Write a program to input any alphabet and check whether it is vowel or consonant.
void checkVowelOrConsonant(){
  print("Enter character: ");
  String c = stdin.readLineSync()!;
  var kitu;
  if(!c.isEmpty){
    kitu = c[0]; 
  }
  if((kitu.codeUnitAt(0)>=65 && kitu.codeUnitAt(0) <=90 )||(kitu.codeUnitAt(0)>=97 && kitu.codeUnitAt(0) <=122 )){
    switch(kitu){
      case "A":
      case "I":
      case "U":
      case "E":
      case "O":
      case "a":
      case "i":
      case "u":
      case "e":
      case "o":
        print("Nguyên âm");
        break;
      default:
        print("phụ âm");
    }
  }else{
    print("$kitu character is not alphabet");
  }
}
//- [ ] Write a program to input any character and check whether it is alphabet, digit or special character.
void check(){
  print("Enter character: ");
  String c = stdin.readLineSync()!;
  var kitu;
  if(c.isEmpty){
    print("empty");
  }else{
    kitu = c[0]; 
    if((kitu.codeUnitAt(0)>=65 && kitu.codeUnitAt(0) <=90 )||(kitu.codeUnitAt(0)>=97 && kitu.codeUnitAt(0) <=122 )){
      print("$kitu character is alphabet");
    }else if((kitu.codeUnitAt(0)>= 48 && kitu.codeUnitAt(0) <= 57 )){
      print("$kitu character is digit");
    }else{
      print("$kitu character is special character");
    }
  }
}
//- [ ] Write a program to check whether a character is uppercase or lowercase alphabet.
void checkUpperOrLower(){
  print("Enter character: ");
  String c = stdin.readLineSync()!;
  var kitu;
  if(!c.isEmpty){
    kitu = c[0]; 
  }
  print("kitu : $kitu");
  if((kitu.codeUnitAt(0)>=65 && kitu.codeUnitAt(0) <=90 )){
    print("$kitu character is uppercase");
  }else if((kitu.codeUnitAt(0)>=97 && kitu.codeUnitAt(0) <=122 )){
    print("$kitu character is lowercase");
  }else{
    print("$kitu character is not alphabet");
  }
}
  //- [ ] Write a program to input week number and print week day.
  void check2(){
  print("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);
    switch(number){
      case 1:
            print("Thứ 2");
            break;
      case 2:
            print("Thứ 3");
            break;
      case 3:
            print("Thứ 4");
            break;
      case 4:
            print("Thứ 5");
            break;
      case 5:
            print("Thứ 6");
            break;
      case 6:
            print("Thứ 7");
            break;
      case 7:
            print("Chủ nhật");
            break;
      default:
            print("Enter numbre from 1 to 7");
    }
}
//- [ ] Write a program to input month number and print number of days in that month.
void check3(){
  print("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);
    switch(number){
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
            print("31 days");
            break;
      case 2:
            print("28 or 29 days");
            break;
      case 4:
      case 6:
      case 9:
      case 11:
            print("30 days");
            break;
      default:
            print("Enter number from 1 to 12");
    }
}
//- [ ] Write a program to input angles of a triangle and check whether triangle is valid or not.
void check4(){
  print("Enter angle one: ");
  int a1 = int.parse(stdin.readLineSync()!);
  print("Enter angle two: ");
  int a2 = int.parse(stdin.readLineSync()!);
  print("Enter angle three: ");
  int a3 = int.parse(stdin.readLineSync()!);
  int sum = a1 + a2 + a3;
  if(sum == 180){
    if(a1>0 && a1<180 && a2>0 && a2<180 && a3>0 && a3<180){
      print("a triangle");  
    }else{
      print("Not a triangle");
    }
  }else{
    print("Not a triangle");
  }
}
//- [ ] Write a program to find all roots of a quadratic equation.

void main(){
  print("Enter a: ");
  double a = double.parse(stdin.readLineSync()!);
  print("Enter b: ");
  double b = double.parse(stdin.readLineSync()!);
  print("Enter c: ");
  double c = double.parse(stdin.readLineSync()!);
  if(a == 0){
    if(b == 0 && c != 0){
      print("vô nghiệm");
    }else if(b == 0 && c == 0){
      print("vô số nghiệm");
    }else{
      double x = -c/b;
      print("Một nghiệm = $x");
    }
  }else{
    double? denta = pow(b,2)-4*a*c ;
    if(denta < 0){
      print("vô số nghiệm");
    }else if(denta == 0){
      double x = -b/(2*a);
      print("Một nghiệm = $x");
    }else{
      double x1 = (-b-sqrt(denta))/(2*a);
      double x2 = (-b+sqrt(denta))/(2*a);
      print("x1 = $x1 and x2 = $x2");
    }
  }
}