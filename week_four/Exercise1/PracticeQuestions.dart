import 'dart:html';

class Vehicle{
   String _brand;
   String _model;
   int _year;

  //contructor
  Vehicle(this._brand,this._model,this._year);

  //getter

  String get brand => _brand;
  String get model => _model;
  int get year => _year;

  //setter
  set setBrand(String brand){
    _brand = brand;
  }
  set setModel(String model){
    _model = brand;
  }
  set setYear(int year){
    _year = year;
  }

  //method
  void drive(){
    print("Xe đang chạy");
  }
  
  String toString(){
    return ("Brand : $_brand ; Model : $_model ; Year : $_year");
  }
}
class Car extends Vehicle{
  late int numberDoor;
  Car(String brand,String model,int year,this.numberDoor) : super(brand,model,year);
  @override
  void drive(){
    super.drive();
    print("Numberdoor: $numberDoor");
  }
  @override 
  String toString() {
    return super.toString() + " ; Numberdoor: $numberDoor";
  }
}

void main(){
  Car  car = Car("yamaha", "viettel", 123, 5);
  car.drive();
  print(car.toString());
}



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class BankAccount{
  late double _balance;
  late int _accountNumber;
  
  //contructor
  BankAccount(this._accountNumber,this._balance);
  
  //getter
  double get balance => _balance;
  int get accountNumber => _accountNumber;
  //setter
  void set setBalance(double balance){
    _balance = balance;
  } 
  void set setAccountNumber(int accountNumber){
    _accountNumber = accountNumber;
  }
  //method;
  void deposit(double money){
    this._balance = this.balance + money;
  }
  void withdraw(double money){
    if(money > balance){
      print("Error withdraw.");
    }else{
      this._balance = this.balance - money;
    }
  }
}

class CheckingAccount extends BankAccount{
  double transactionLimit;
  CheckingAccount(int accountNumber,double balance,this.transactionLimit) : super(accountNumber,balance);
  @override
  void withdraw(double money){
    if(money < transactionLimit){
      this._balance = this.balance - money;
    }else{
      print("Can not withdraw");
    }
  }
}

void main2(){
  // BankAccount ba1 = BankAccount(12345, 5000);
  // ba1.deposit(500);
  // print(ba1.balance);
  // ba1.withdraw(1100);
  // print(ba1.balance);

  CheckingAccount ca1 = CheckingAccount(123456, 1000, 200);
  ca1.deposit(500);
  print(ca1.balance);
  ca1.withdraw(1100);
  print(ca1.balance);

}



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class Person{
  String firstName,lastName;
  Person(this.firstName,this.lastName);
  String fullName(){
    return this.firstName + " " + this.lastName;
  }
}

class Student extends Person{
  String major;
  Student(super.firstName,super.lastName,this.major);
  @override
  String fullName(){
    return this.firstName + " " + this.lastName + " : " + major;
  }
}

void main3(){
  Person p1 = Person("Le", "Nguyen");
  print(p1.fullName());
  Student s1 = Student("Le", "Nguyen", "Toan");
  print(s1.fullName());
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
