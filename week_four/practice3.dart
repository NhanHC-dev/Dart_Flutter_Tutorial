
class Person{
  late String firstName;
  late String lastName;
  Person(this.firstName,this.lastName);
  String fullName(){
    return  "Name: $firstName $lastName";
  }
}
class Student extends Person{
  late String major;
  Student(String firstName, String lastName, this.major) : super(firstName,lastName);
  @override
  String fullName(){
    return  "Name: $firstName $lastName ,Major: $major";
  }
}
void main(List<String> args) {
  var person = Person("Phạm Trọng","Hùng");
  var student = Student("Phạm Trọng","Hùng", "Software Engineering");
  print(person.fullName());
  print(student.fullName());
}