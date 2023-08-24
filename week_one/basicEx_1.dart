//import 'package:hello_world/hello_world.dart' as hello_world;
import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  //===================================================================
  //Check number positive, negative or zero
  print('Enter height: ');
  double? height = double.parse(stdin.readLineSync()!);
  print('Enter base: ');
  double? base = double.parse(stdin.readLineSync()!);
  double area = height*base;
  print(area);

  //=================================================
  //Average in two decimal
  print('Enter number 1: ');
  double number1 = double.parse(stdin.readLineSync()!);
  print('Enter number 2: ');
  double number2 = double.parse(stdin.readLineSync()!);
  double avg = (number1+number2)/2;
  print("Average = $avg");
  print("Average in two decimal places ->");
  print(avg.toStringAsFixed(2));


  //==================================================
  //Volume and Surface
  print("Enter the radius: ");
  double r = double.parse(stdin.readLineSync()!);
  double pi = 3.14;
  double v = (4/3) * pi * pow(r,3);
  print("V = $v");
  double a = 4 * pi * pow(r,2);
  print("A = $a");


  //==================================================
  //pow
  print("Enter the base: ");
  double b = double.parse(stdin.readLineSync()!);
  print("Enter the exponent: ");
  double e = double.parse(stdin.readLineSync()!);
  double result = pow(b,e).toDouble();
  print("Result = $result");


  //==================================================
  //convert C to F
  print("Enter a temperature in Celcius: ");
  double celcius = double.parse(stdin.readLineSync()!);
  double fahrenheit = (9/5)*celcius+32;
  print("Celcius to Fahrenheit = $fahrenheit");

  //==================================================
  //challenge question
   bool flag = true;
    print("Enter a positive integer: ");
    int num = int.parse(stdin.readLineSync()!);

      for(int i=2;i<=sqrt(num);i++){
        if(num%i==0){
          flag=false;
        }
      }
      if(flag){
        print("This num is prime number");
      }else{
        print("This num is not the prime");
      }
    }
   
