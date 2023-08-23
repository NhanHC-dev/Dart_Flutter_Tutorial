import 'dart:io';

void main() {
  print("Enter a character: ");
  String? c = stdin.readLineSync()!;
  RegExp alphabetRegex = RegExp(r'^[a-zA-Z]$');
  String result =
      (alphabetRegex.hasMatch(c)) ? "an alphabet" : "not an alphabet";
  print("$c is $result");
}
