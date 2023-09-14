void main(List<String> args) {
  //==========================================================
  //Exercise 1
  List<int> numbers = [1, 9, 3, 10, 4, 20, 2];
  numbers.sort();

  List<int> longest = [];
  List<int> current = [numbers[0]];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] == numbers[i - 1] + 1) {
      current.add(numbers[i]);
    } else {
      if (current.length > longest.length) {
        longest = List.from(current);
      }
      current = [numbers[i]];
    }
  }

  if (current.length > longest.length) {
    longest = List.from(current);
  }

  //Exercise 2

}