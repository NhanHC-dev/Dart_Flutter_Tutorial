
import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
//Write a program to input any character and check whether it is alphabet, 
//digit or special character using switch case.
print("Enter your string: ");
String input = stdin.readLineSync()!;
String firstCharacter = input.substring(0,1);
switch (firstCharacter) {
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      print("$firstCharacter is a digit.");
      break;
    case 'a':
    case 'b':
    case 'c':
    case 'd':
    case 'e':
    case 'f':
    case 'g':
    case 'h':
    case 'i':
    case 'j':
    case 'k':
    case 'l':
    case 'm':
    case 'n':
    case 'o':
    case 'p':
    case 'q':
    case 'r':
    case 's':
    case 't':
    case 'u':
    case 'v':
    case 'w':
    case 'x':
    case 'y':
    case 'z':
    case 'A':
    case 'B':
    case 'C':
    case 'D':
    case 'E':
    case 'F':
    case 'G':
    case 'H':
    case 'I':
    case 'J':
    case 'K':
    case 'L':
    case 'M':
    case 'N':
    case 'O':
    case 'P':
    case 'Q':
    case 'R':
    case 'S':
    case 'T':
    case 'U':
    case 'V':
    case 'W':
    case 'X':
    case 'Y':
    case 'Z':
      print("$firstCharacter is an alphabet.");
      break;

    default:
      print("$firstCharacter is a special character.");
      break;
  }
  

// Write a program to input week number and print week day using switch case.
print("Enter the week number: ");
int weekNumber = int.parse(stdin.readLineSync()!);
switch(weekNumber){
  case 1:
    print("momday");
    break;
  case 2:
    print("tuesday");
    break;
  case 3:
    print("wednesday");
    break;
  case 4:
    print("thursday");     
    break;
  case 5:
    print("friday");
    break;
  case 6:
    print("saturday");
    break;
  case 7:
    print("sunday");
    break;    
  default:
    print("invalid week number");
}

//Write a program to input month number and print number of days in that month using switch case.
print("Enter number of month(1-12): ");
int month = int.parse(stdin.readLineSync()!);
int day;
switch(month){
  case 1:
  case 3:
  case 5:
  case 7:
  case 8:
  case 10:
  case 12:
    day = 31;
    break;
  case 4:
  case 6:
  case 9:
  case 11:
    day = 30;
    break;
  case 2:
    //check leap year or not
    //if leap year => day = 29
    //if not => day = 28
    print("Enter year: ");  
    int year = int.parse(stdin.readLineSync()!);
    if(year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)){
      day = 29;
    }else{
      day = 28;
    }
    break;
  default:
    print("invalid month");
}


//rite a program to find all roots of a quadratic equation using switch case.
double x1,x2;
print("enter a: ");
double a = double.parse(stdin.readLineSync()!);
print("enter b: ");
double b = double.parse(stdin.readLineSync()!);
print("enter c: ");
double c = double.parse(stdin.readLineSync()!);

double delta = b*b - 4*a*c;
switch(delta.toInt()){
  case 1:
    x1 = (-b + sqrt(delta)) / (2 * a);
    x2 = (-b - sqrt(delta)) / (2 * a);
    print("two solution => $x1 and $x2");
  break;
  case 0:
    x1 = x2 = -b / (2 * a);
    print("x1 = x2 = $x2"); 
    break;
  case -1:
    print("no solution");
    break;
  default:
    print("invalid input"); 
}

//Write a program to input any alphabet and check whether it is vowel or consonant using switch case.
print("enter character: ");
String character = stdin.readLineSync()!;
switch(character){
  case 'a':
  case 'i':
  case 'u':
  case 'e':
  case 'o':
    print("vowel");
    break;
  default:
    print("consonant");  

}

}