class PerSon {
  String name;
  int age;

  PerSon(this.name, this.age);
}

void main() {
  // Step 2: Create a List of People
  List<PerSon> person = [
    PerSon('Bao', 20),
    PerSon('Thang', 20),
    PerSon('Nguyen', 20),
  ];

  // Step 3: Create a Map of People and Their Ages
  Map<String, int> ages = {
    'A': 18,
    'B': 19,
    'C': 20,
  };

  // Step 4: Print the Names of the People in the List
  print("Step 4: Print the Names of the People in the List");
  for (int i = 0; i < person.length; i++) {
    print(person[i].name);
  }

  // Step 5: Print the Ages of the People in the Map
  print("\nStep 5: Print the Ages of the People in the Map");
  ages.forEach((name, age) {
    print('$name: $age');
  });

  // Step 6: Print the Names and Ages of the People in the List and Map
  print("\nStep 6: Print the Names and Ages of the People in the List and Map");
  for (int i = 0; i < person.length; i++) {
    String name = person[i].name;
    int age = ages[name] ?? 0; // Use Map to look up the ages
    print('$name: $age');
  }

  // Step 7: Add a New Person to the List and Map
  person.add(PerSon('D', 22));
  ages['D'] = 22;

  // Step 8: Remove a Person from the List and Map
  person.removeWhere((p) => p.name == 'Bao');
  ages.remove('A');

  // Step 9: Update the Age of a Person in the List and Map
  person.firstWhere((p) => p.name == 'Thang').age = 21;
  ages['B'] = 21;

  // Step 10: Print the Names and Ages of the People in the List and Map
  print("\nStep 10: Print the Names and Ages of the People in the List and Map");
  for (int i = 0; i < person.length; i++) {
    String name = person[i].name;
    int age = ages[name] ?? 0; 
    print('$name: $age');
  }
}
