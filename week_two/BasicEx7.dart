import 'dart:io';

void main() {
  print("Enter a character: ");
  String? c = stdin.readLineSync()!;

  String result = (c.length == 1 && c.contains(RegExp(r'^[a-zA-Z]$')))
      ? (c == c.toUpperCase() ? "uppercase" : "lowercase")
      : "not an alphabet";

  print("$c is a $result alphabet");
}
