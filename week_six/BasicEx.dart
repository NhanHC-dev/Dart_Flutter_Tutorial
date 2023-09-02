class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
  @override
  String toString() => "$name is $age years old";
}

void main() {
  List<Person> people = [
    Person('Alice', 25),
    Person('Bob', 30),
    Person('Charlie', 35),
  ];
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 35,
  };
  people.forEach((person) {
    print(person.name + "is " + person.age.toString() + " years old");
  });
  people.add(Person("hung", 20));
  ages["hung"] = 20;
  people.forEach((person) {
    print("$person");
  }); //lam cho bik
  people.forEach((person) {
    print(person.name + " is a person");
  });
  print(ages); //lam cho vui
  ages.forEach((name, age) {
    print("$name is $age years old");
  });
  ages.forEach((name, age) {
    print("$age years");
  });
}
