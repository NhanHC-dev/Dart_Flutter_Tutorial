import 'dart:io';

void main() {
  print("Enter a character: ");
  String? c = stdin.readLineSync()!;

  String result = (c.length == 1 && c.contains(RegExp(r'^[a-zA-Z]$')))
      ? (RegExp(r'[aeiouAEIOU]').hasMatch(c) ? "vowel" : "consonant")
      : "not a valid alphabet";

  print("$c is a $result");
}
