
class Vehicle{
  late String model;
  late String brand;
  late int year;
  Vehicle(this.brand,this.model,this.year);
  void drive(){
    print("This vehicle being driven");
  }
}
class Car extends Vehicle{
  late int numDoors;
  Car(String brand, String model, int year, this.numDoors) : super(brand,model,year);
  @override
  void drive(){
    super.drive();
    print(numDoors);
  }
}

void main(List<String> args) {
var car = Car("Audi","Sport car",2023,4);
car.drive();
}