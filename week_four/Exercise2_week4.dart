import 'dart:math';

class Shape{
  double calculateArea(){
    return 0;
  }
}
class Rectangle extends Shape{
  late double height;
  late double width;
  double calculateArea(){
    return height*width;
  }
}  

void main(List<String> arguments) {
//Create a subclass named Rectangle that extends Shape. The Rectangle class should have a width and height property. 
//The Rectangle class should override the calculateArea() method to calculate the area of the rectangle
  var rec = Rectangle();
  rec.height=6.5;
  rec.width=5.5;
  print(rec.calculateArea());
}