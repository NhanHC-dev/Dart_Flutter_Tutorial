class Person {
  late String firstName;
  late String lastName;

  Person(this.firstName, this.lastName);

  String fullName() {
    return "$firstName $lastName";
  }
}

class Student extends Person {
  late String major;

  Student(String firstName, String lastName, this.major)
      : super(firstName, lastName);

  @override
  String fullName() {
    return "${super.fullName()} ($major)";
  }
}

void main() {
  Person person = Person("Nguyen", "Minh Nhat");
  print("Person: ${person.fullName()}");

  Student student = Student("Henrys", "William", "Dictatorship");
  print("Student: ${student.fullName()}");
}
