import 'dart:io';

void main() {
  print("Enter a week number (1-7): ");
  int? weekNumber = int.parse(stdin.readLineSync()!);

  String weekDay = (weekNumber >= 1 && weekNumber <= 7)
      ? getWeekDay(weekNumber)
      : "Invalid week number";

  print("Week day: $weekDay");
}

String getWeekDay(int weekNumber) {
  switch (weekNumber) {
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
      return "Invalid week number";
  }
}
