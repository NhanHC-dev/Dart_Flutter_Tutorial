class Shape {
  String color;

  Shape(this.color);

  void calculateArea() {
    print("Diện tích hình dạng được tính toán.");
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(String color, this.width, this.height) : super(color);

  @override
  void calculateArea() {
    double area = width * height;
    print("Diện tích hình chữ nhật là $area.");
  }
}

class Circle extends Shape {
  double radius;

  Circle(String color, this.radius) : super(color);

  @override
  void calculateArea() {
    double area = 3.14 * radius * radius;
    print("Diện tích hình tròn là $area.");
  }
}

void main() {
  Rectangle rectangle = Rectangle("Red", 5.0, 10.0);
  Circle circle = Circle("Blue", 3.0);

  rectangle.calculateArea();
  circle.calculateArea();
}
