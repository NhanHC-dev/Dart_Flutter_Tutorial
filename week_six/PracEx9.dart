void main() {
  List<int> numbers = [2, 5, 1, 5, 8, 9, 3];

  int product = 1;
  for (var n in numbers) {
    product *= n;
  }
  print("Product of all numbers: $product");
}
