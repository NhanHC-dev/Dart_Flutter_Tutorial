class Person {
  final String name;
  late final int age;

  Person(this.name, this.age);
  @override
  String toString() => "$name is $age years old";
}

void main() {
  List<Person> people = [
    Person('Nhat', 19),
    Person('THung', 19),
    Person('VHung', 20),
  ];
  Map<String, int> ages = {
    'Nhat': 19,
    'THung': 19,
    'VHung': 20,
  };
  print("Names in the List:");
  for (var person in people) {
    print(person.name);
  }
  print("Ages in the Map:");
  ages.forEach((name, age) {
    print("$name: $age");
  });
  print("Names and Ages from List and Map:");
  for (var person in people) {
    var age = ages[person.name];
    print("${person.name} is ${person.age} years old");
    print("Age lookup from Map: $age years");
  }
  var newPerson = Person("Nhan", 23);
  people.add(newPerson);
  ages[newPerson.name] = newPerson.age;
  print("Added a new person: ${newPerson.name}");
  var personToRemove = people.indexWhere((person) => person.name == "Nhat");
  if (personToRemove != -1) {
    var removedPerson = people.removeAt(personToRemove);
    ages.remove(removedPerson.name);
    print("Removed ${removedPerson.name} from the list and map");
  } else {
    print("${personToRemove} not found in the list. No removal.");
  }
  var personToUpdateIndex =
      people.indexWhere((person) => person.name == "Alice");
  if (personToUpdateIndex != -1) {
    var updatedPerson = people[personToUpdateIndex];
    var newAge = 31;
    updatedPerson.age = newAge;
    ages[updatedPerson.name] = newAge;
    print("Updated ${updatedPerson.name}'s age to $newAge");
  } else {
    print("Person 'Alice' not found in the list. No update.");
  }
  print("Names and Ages from List and Map:");
  for (var person in people) {
    var age = ages[person.name];
    print("${person.name} is ${person.age} years old");
    print(
        "Age lookup from Map: ${age != null ? age.toString() : 'Not found'} years");
  }
}
