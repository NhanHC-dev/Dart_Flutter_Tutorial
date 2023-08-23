import 'dart:io';

void main() {
  print("Enter an alphabet: ");
  String? input = stdin.readLineSync()!;

  if (input.length == 1 && input.contains(RegExp(r'[a-zA-Z]'))) {
    checkVowelOrConsonant(input);
  } else {
    print("Please enter a valid single alphabet.");
  }
}

void checkVowelOrConsonant(String c) {
  switch (c) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      print("$c is a vowel.");
      break;
    default:
      print("$c is a consonant.");
  }
}
