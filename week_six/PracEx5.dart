import 'dart:io';
import 'dart:math';

void main() {
  print("Enter the number of elements: ");
  int n = int.parse(stdin.readLineSync()!);
  print("Enter the largest number: ");
  int max = int.parse(stdin.readLineSync()!);
  print("Enter the smallest number: ");
  int min = int.parse(stdin.readLineSync()!);
  List<int> numbers = generateRandomNumbers(n, min, max);
  int sum = 0;
  for (var number in numbers) {
    if (number % 2 == 0) {
      sum += number;
    }
  }
  print("Random List: $numbers");
  print("Sum of even numbers: $sum");
}

List<int> generateRandomNumbers(int count, int min, int max) {
  Random random = Random();
  List<int> numbers = [];

  for (int i = 0; i < count; i++) {
    int randomNumber = min + random.nextInt(max - min + 1);
    numbers.add(randomNumber);
  }

  return numbers;
}
