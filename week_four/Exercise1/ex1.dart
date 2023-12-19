class Shape{
  String color;
  
  Shape(this.color);

  void calculateArea(){
  }

}

class Rectangle extends Shape{
  double? width ,height;

  Rectangle(super.color,this.height,this.width);
  
  @override
  void calculateArea(){
    double area = width! * height!;
    print("Area = $area");
    print("Color : $color");
  }
}

class Circle extends Shape{
  double? radius;
  static const pi = 3.14;

    Circle(super.color,this.radius);

  @override
  void calculateArea(){
      double area = pi * radius!;
      print("Area = $area");
      print("Color : $color");
    }
}

void main() {
  Rectangle r1 = Rectangle("Blue",2, 5.4);
  r1.calculateArea();
  Circle c1 = Circle("Red",5.2);
  c1.calculateArea();
}
