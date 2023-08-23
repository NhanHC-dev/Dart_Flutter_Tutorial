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
  switch (n) {
    case 1:
      return "Monday";
    case 2:
      return "Tuesday";
    case 3:
      return "Wednesday";
    case 4:
      return "Thursday";
    case 5:
      return "Friday";
    case 6:
      return "Saturday";
    case 7:
      return "Sunday";
    default:
      return "Incorrect input";
  }
}
