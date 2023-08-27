class shape{
  late String color;
  void calculateArea(){
    print("shape area is calculated");
  }
}
void main(List<String> arguments) {
//Create a class named Shape with a color property and a calculateArea() method. The calculateArea() method should print "Shape area is calculated
var triangle = shape();
triangle.color="red";
triangle.calculateArea();
}