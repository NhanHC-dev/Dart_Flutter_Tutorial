class Vehicle {
  late String brand;
  late String model;
  late int year;

  Vehicle(this.brand, this.model, this.year);

  void drive() {
    print("Vehicle is being driven.");
  }
}

class Car extends Vehicle {
  late int numDoors;

  Car(String brand, String model, int year, this.numDoors)
      : super(brand, model, year);

  @override
  void drive() {
    print("The $model has $numDoors doors.");
  }
}

void main() {
  Car car = Car("Ferrari", "458 Italia", 2009, 2);
  print("Brand: ${car.brand}");
  print("Model: ${car.model}");
  print("Year: ${car.year}");
  print("Number of Doors: ${car.numDoors}");
  car.drive();
}
