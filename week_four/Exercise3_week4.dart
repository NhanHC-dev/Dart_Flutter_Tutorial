import 'dart:math';
class Shape{
  double calculateArea(){
    return 0;
  }
}
class Circle extends Shape{
  late double radius;
  double calculateArea(){
    return radius*radius*pi;
  }
}


void main(List<String> args) {
  var c = Circle();
  c.radius=4;
  print(c.calculateArea().toStringAsFixed(2));
}