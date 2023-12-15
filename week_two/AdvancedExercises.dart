//- [ ] Write a program to input any character and check whether it is alphabet, digit or special character using switch case.
import 'dart:ffi';
import 'dart:io';
import 'dart:math';
void  check1  (){
  print("Enter character: ");
  String c = stdin.readLineSync()!;
  var kitu;
  if(!c.isEmpty){
    kitu = c[0]; 
  }
  print("kitu : $kitu");
  switch(checkCharacterType(kitu)){
    case CharacterType.alphabet:
      print("alphabet");
      break;
    case CharacterType.digit:
      print("digit");
      break;
    case CharacterType.special:
      print("special");
      break;
  }
}

enum CharacterType {
  alphabet,
  digit,
  special
}
CharacterType checkCharacterType(String kitu){
  if((kitu.codeUnitAt(0)>=65 && kitu.codeUnitAt(0) <=90 )||(kitu.codeUnitAt(0)>=97 && kitu.codeUnitAt(0) <=122 )){
    return CharacterType.alphabet;
  }else if((kitu.codeUnitAt(0)>= 48 && kitu.codeUnitAt(0) <= 57 )){
    return CharacterType.digit;
  }else{
    return CharacterType.special;
  }
}
//- [ ] Write a program to input week number and print week day using switch case.
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
//- [ ] Write a program to input month number and print number of days in that month using switch case.
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
//- [ ] Write a program to find all roots of a quadratic equation using switch case.

void check4(){
  print("Enter a: ");
  double a = double.parse(stdin.readLineSync()!);
  print("Enter b: ");
  double b = double.parse(stdin.readLineSync()!);
  print("Enter c: ");
  double c = double.parse(stdin.readLineSync()!);
  switch (a){
    case 0:
        if(b == 0 && c != 0){
            print("vô nghiệm");
        }else if(b == 0 && c == 0){
            print("vô số nghiệm");
        }else{
            double x = -c/b;
            print("Một nghiệm = $x");
        }
        break;
    default:
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
//- [ ] Write a program to input any alphabet and check whether it is vowel or consonant using switch case.\
void checkVowelOrConsonant1(){
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
//- [ ] Write a program to input any character and check whether it is alphabet, digit or special character using if else.
void check5(){
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
//- [ ] Write a program to input week number and print week day using if else.
void check6(){
  print("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);
  if(number == 1){
      print("Thứ 2");
  }
  else if(number == 2){
      print("Thứ 3");
  }
  else if(number == 3){
      print("Thứ 4");
  }
  else if(number == 4){
      print("Thứ 5");
  }
  else if(number == 5){
      print("Thứ 6");
  }
  else if(number == 6){
      print("Thứ 7");
  }
  else if(number == 7){
      print("Chủ nhật");
  }else{
    print("Enter numbre from 1 to 7");
  }
}
//- [ ] Write a program to input month number and print number of days in that month using if else.
void check7(){
  print("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);
  if(number == 1 && number == 3 && number == 5 && number == 7 && number == 8 && number == 10 && number == 12){
    print("31 days");
  }else if(number == 2){
      print("28 or 29 days");
  }else if(number == 4 && number == 6 && number == 9 && number == 11){
      print("30 days");
  }else{
      print("Enter number from 1 to 12");
    }
}
//- [ ] Write a program to find all roots of a quadratic equation using if else.
void check8(){
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
//- [ ] Write a program to input any alphabet and check whether it is vowel or consonant using if else.
void main(){
  print("Enter character: ");
  String c = stdin.readLineSync()!;
  var kitu;
  if(!c.isEmpty){
    kitu = c[0]; 
  }
  if((kitu.codeUnitAt(0)>=65 && kitu.codeUnitAt(0) <=90 )||(kitu.codeUnitAt(0)>=97 && kitu.codeUnitAt(0) <=122 )){
    if(kitu == "A" || kitu == "I" || kitu == "U" || kitu == "E" || kitu == "O" || kitu == "a" || kitu == "i" || kitu == "u" || kitu == "e" || kitu == "o"){
      print("Nguyên âm");
    }else{
      print("phụ âm");
    }
  }else{
    print("$kitu character is not alphabet");
  }
}
//- [ ] Write a program to input any character and check whether it is alphabet, digit or special character using nested if else.
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
