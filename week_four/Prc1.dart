class Vehicle {
  late String brand, model;
  late int year;
  Vehicle(this.brand, this.model, this.year);
  drive() {
    print("$model being driven");
  }
}

class Car extends Vehicle {
  late int numDoors;
  Car(String brand, String model, int year, int numDoors)
      : super(brand, model, year);
  @override
  drive() {
    print("$model that has $numDoors doors being driven");
  }
}

void main() {
  Car s1 = new Car("BMW", "e34", 1987, 4);
  s1.drive();
}
