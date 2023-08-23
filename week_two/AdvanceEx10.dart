import 'dart:io';

void main() {
  print("Enter an alphabet: ");
  String? input = stdin.readLineSync()!;

  if (input.length == 1 && RegExp(r'[a-zA-Z]').hasMatch(input)) {
    checkVowelOrConsonant(input);
  } else {
    print("Please enter a valid single alphabet.");
  }
}

void checkVowelOrConsonant(String c) {
  if (c == 'a' ||
      c == 'e' ||
      c == 'i' ||
      c == 'o' ||
      c == 'u' ||
      c == 'A' ||
      c == 'E' ||
      c == 'I' ||
      c == 'O' ||
      c == 'U') {
    print("$c is a vowel.");
  } else {
    print("$c is a consonant.");
  }
}
