void main() {
  List<int> numbers = List.generate(100, (index) => index + 1);

  for (var number in numbers) {
    if (number % 2 == 0) {
      print(number);
    }
  }
}
