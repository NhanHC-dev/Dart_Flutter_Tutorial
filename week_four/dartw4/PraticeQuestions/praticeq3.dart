class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);

  String fullName() {
    return "$firstName $lastName";
  }
}

class Student extends Person {
  String major;

  Student(String firstName, String lastName, this.major)
      : super(firstName, lastName);

  @override
  String fullName() {
    return "$firstName $lastName (Major: $major)";
  }
}

void main() {
  Person person = Person("John", "Doe");
  Student student = Student("Alice", "Smith", "Computer Science");

  print(person.fullName());  
  print(student.fullName()); 
}
