void main() {
  List<Map<String, dynamic>> people = [
    {"name": "Nhat", "age": 19},
    {"name": "VHung", "age": 20},
    {"name": "THung", "age": 19},
    {"name": "Nhan", "age": 23},
  ];

  people.sort((a, b) => a["age"].compareTo(b["age"]));
  for (var person in people) {
    print("Name: ${person["name"]}, Age: ${person["age"]}");
  }
}
