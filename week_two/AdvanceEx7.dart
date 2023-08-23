import 'dart:io';

void main() {
  print("Enter a week number (1-7): ");
  int? n = int.parse(stdin.readLineSync()!);

  String weekDay = getWeekday(n);

  if (weekDay.isNotEmpty) {
    print("Week day: $weekDay");
  } else {
    print("Invalid week number. Please enter a number between 1 and 7.");
  }
}

String getWeekday(int n) {
  if (n == 1) {
    return "Monday";
  } else if (n == 2) {
    return "Tuesday";
  } else if (n == 3) {
    return "Wednesday";
  } else if (n == 4) {
    return "Thursday";
  } else if (n == 5) {
    return "Friday";
  } else if (n == 6) {
    return "Saturday";
  } else if (n == 7) {
    return "Sunday";
  } else {
    return "Incorrect input";
  }
}
