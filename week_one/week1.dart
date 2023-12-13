import 'dart:io';
import 'dart:math';
//Basic Exercises
void hello(){
  //Create a variable named name and assign it a value of "John".
  String name = "John";
  print(name);
  //Create a variable named age and assign it a value of 30.
  int age = 30;
  print(age);
  //Create a variable named isMarried and assign it a value of false.
  bool isMarried = false;
  print(isMarried);
  //Create a variable named height and assign it a value of 1.75.
  //Create a variable named weight and assign it a value of 80.5.
  double height = 1.75;
  double weight = 80.5;
  print("Height: $height");
  print("Weight: $weight");
  double bmi = weight / (height * weight);
  //Create a variable named bmi and assign it a value of weight / (height \* height).
  print("Bmi: $bmi");
}

//Intermediate Exercises

//Write a program that calculates the area of a triangle using the formula A = (b * h) / 2.
// The program should prompt the user to enter the base and height of the triangle and then display the calculated area.
void calArea(){
  double base , height;
  print("Enter base: ");
  base = double.parse(stdin.readLineSync()!);
  print("Base: $base");
  print("Enter height: ");
  height = double.parse(stdin.readLineSync()!);
  print("Height: $height");
  double area = (base * height) / 2;
  print("Area: $area");
}

//Write a program that prompts the user to enter two floating-point numbers and then calculates their average. 
//The program should display the result with two decimal places.
void calAverage(){
  double a,b;
  print("Enter a: ");
  a = double.parse(stdin.readLineSync()!);
  print("Enter b: ");
  b = double.parse(stdin.readLineSync()!);
  double average = (a+b)/2;
  print("Average: $average");
}

//Write a program that prompts the user to enter a radius and then calculates the volume and surface area of a sphere. 
//The formulas for volume and surface area are V = (4/3) _ pi _ r^3 and A = 4 _ pi _ r^2, respectively.
void calSphere(){
  double radius;
  print("Radius: ");
  radius = double.parse(stdin.readLineSync()!);
  const pi = 3.14;
  double volume = 4/3*pi*radius*radius*radius;
  double surface = 4*pi*radius*radius;
  print("Volume: $volume");
  print("Surface: $surface");
}

//Write a program that prompts the user to enter a base and an exponent and then calculates the result of raising the base to the exponent. 
//For example, if the user enters 2 and 3, the program should calculate 2^3 = 8.
void calPower(){
  double? x;
  int? exponent;
  print("Base: ");
  x = double.parse(stdin.readLineSync()!);
  print("Exponent: ");
  exponent = int.parse(stdin.readLineSync()!);
  print("base: $x ; exponent: $exponent");
  double? number = pow(x, exponent) as double?;
  print("Number $number");
}
//Write a program that prompts the user to enter a temperature in Celsius and then converts it to Fahrenheit. 
//The formula for converting Celsius to Fahrenheit is F = (9/5) * C + 32.
void calTemperature(){
  double? celsius;
  print("Celsius: ");
  celsius = double.parse(stdin.readLineSync()!);
  double fahrenheit = (9/5)*celsius+32;
  print("fahrenheit: $fahrenheit");
}

//CHALLENGE QUESTION: Write a program that prompts the user to enter a positive integer and then determines whether it is a prime number. 
//A prime number is a positive integer greater than 1 that has no positive integer divisors other than 1 and itself.
void main(){
  int number;
  print("number: ");
  number = int.parse(stdin.readLineSync()!);
  if(number <1){
    print("Number $number is not a prime");
  }else if(number ==2 ||number == 3){
    print("Number $number is a prime");  
  }else{
    int flag = 0;
    for(int i=2;i<=number/2;i++){
      if(number%i == 0){
        flag=1;
        break;
      }
    }
    if(flag == 1){
      print("Number $number is not a prime");
    }else{
      print("Number $number is a prime");
    }
  }
}