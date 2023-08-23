import 'dart:math';

class Shape {
  late String color;
  Shape(this.color);
  calculateArea() {
    print("Shape area is calculated.");
  }
}

class Rectangle extends Shape {
  late double width, height;
  Rectangle(String color, this.width, this.height) : super(color);
  @override
  calculateArea() {
    double area = width * height / 2;
    print("Area: $area");
  }
}

class Circle extends Shape {
  late double radius;
  Circle(String color, this.radius) : super(color);
  @override
  calculateArea() {
    double area = pi * pow(radius, 2) * 2;
    print("Area: $area");
  }
}

void main() {
  Rectangle shape1 = new Rectangle("yellow", 2.2, 5.3);
  Circle shape2 = new Circle("red", 4);
  shape1.calculateArea();
  shape2.calculateArea();
}
