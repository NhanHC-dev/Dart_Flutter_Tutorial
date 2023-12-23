import 'dart:collection';
void main(){
  //create list int from 1 to 100 and pirnt enven number
  List<int> numbers = List.generate(100, (index) => index + 1);
    print("Even number from 1 to 100 :");
    for(int num in numbers){
      if(num % 2 == 0){
        print(num);
    }
  }
  // Create a list of strings and sort it in alphabetical order.
   List<String> strings = ['Apple', 'Orange', 'Banana', 'Grapes', 'Cherry'];
    strings.sort();
    print("sort string: ");
    for(String str in strings){
        print(str);
   }
   //Create a list of maps, where each map represents a person with a name and age. Sort the list by age in ascending order.
   // Create a map representing people with name and age
  Map<String, int> people = {
    'A': 20,
    'B': 18,
    'C': 22,
  };

  // Print the original map
  print("\nOriginal Map of People:");
  people.forEach((name, age) {
    print("$name: $age");
  });

  // Sort the map by age in ascending order
  SplayTreeMap<String, int> sortedPeople = SplayTreeMap<String, int>.from(
      people, (a, b) => people[a]!.compareTo(people[b]!));

  // Print the sorted map
  print("\nSorted Map of People by Age (Ascending):");
  sortedPeople.forEach((name, age) {
    print("$name: $age");
  });
  //create a list of interger and find the sum of all even number in the list
  List<int> intnumber = [
    1, 2, 3
  ];
  int sum = 0;
  print("sum :");
  for(int i = 0; i < intnumber.length; i++){
    if(i % 2 != 0){
      sum += intnumber[i];
    }
  }
  print(sum);
  //Create a list of strings and remove all duplicates from the list.
  List<String> stringsWithDuplicates = ['Apple', 'Orange', 'Banana', 'Apple', 'Grapes', 'Banana'];
  Set<String> uniqueStrings = Set<String>.from(stringsWithDuplicates);
  List<String> stringsWithoutDuplicates = uniqueStrings.toList();
  print("List without Duplicates:");
  stringsWithoutDuplicates.forEach((str) {
    print(str);
  });
  //Create a list of integers and find the product of all numbers in the list.
  print("product of mnumber");
  int product = 1;
  for(int i = 0; i < intnumber.length; i++){
    product *= intnumber[i];
  }
  print([product]);
}