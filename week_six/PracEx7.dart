void main() {
  List<String> fruits = ["Apple", "Banana", "Cherry", "Apple", "Banana"];
  List<String> fruits2 = [];

  for (var fruit in fruits) {
    if (!fruits2.contains(fruit)) {
      fruits2.add(fruit);
    }
  }
  print("List without duplicates: $fruits2");
}
