import 'dart:math';
class Rectangle{
  late double height;
  late double width;
  Rectangle(double height, double width){
    this.height=height;
    this.width=width;
  }
  double calculateArea(){
    return this.height*this.width;
  }  
}
class Circle{
  late double radius;
  Circle(double radius){
    this.radius=radius;
  }
  double calculateArea(){
    return radius*radius*pi;
  }
}

void main(List<String> args) {
//Create a main() function and create a Rectangle and Circle object. Call the calculateArea() method on both objects.
  var r = Rectangle(5.5,6.5);
  var c = Circle(4);
  //Rectangle area
  print(r.calculateArea());
  //Circle area
  print(c.calculateArea().toStringAsFixed(2));
}