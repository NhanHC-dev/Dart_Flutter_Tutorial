class Person {
  late String firstName;
  late String lastName;
  Person(this.firstName, this.lastName);
  String fullname() {
    return "$firstName $lastName";
  }
}

class Student extends Person {
  late String major;
  Student(String firstName, String lastName, this.major)
      : super(firstName, lastName);
  String fullname() {
    return "$firstName $lastName major: $major";
  }
}

void main() {
  Student s1 = new Student("Duong Viet", "Hung", "Software Engineering");
  print(s1.fullname());
}
