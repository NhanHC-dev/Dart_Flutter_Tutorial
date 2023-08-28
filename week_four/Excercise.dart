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
    double area = width * height;
    print("Area: $area");
  }
}

class Circle extends Shape {
  late double radius;
  Circle(String color, this.radius) : super(color);
  @override
  calculateArea() {
    double area = pi * pow(radius, 2);
    print("Area: $area");
  }
}

void main() {
  Rectangle r = new Rectangle("Vermilion", 3, 7.6);
  Circle c = new Circle("Venetian Red", 3.8);
  r.calculateArea();
  c.calculateArea();
}
