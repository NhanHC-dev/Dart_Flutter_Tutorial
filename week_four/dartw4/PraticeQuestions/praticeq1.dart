class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void drive() {
    print("The vehicle is being driven.");
  }
}

class Car extends Vehicle {
  int numDoors;

  Car(String brand, String model, int year, this.numDoors)
      : super(brand, model, year);

  @override
  void drive() {
    print("The car with $numDoors doors is being driven.");
  }
}

void main() {
  Vehicle vehicle = Vehicle("Toyota", "Camry", 2022);
  Car car = Car("Honda", "Civic", 2023, 4);

  vehicle.drive(); 
  car.drive();    
}
