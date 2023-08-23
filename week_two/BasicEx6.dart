import 'dart:io';

void main() {
  print("Enter a character: ");
  String? c = stdin.readLineSync()!;

  String result = (RegExp(r'^[a-zA-Z]$').hasMatch(c))
      ? "an alphabet"
      : (RegExp(r'^[0-9]$').hasMatch(c))
          ? "a digit"
          : "a special character";

  print("$c is $result");
}
