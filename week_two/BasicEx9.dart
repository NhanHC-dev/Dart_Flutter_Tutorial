import 'dart:io';

void main() {
  print("Enter a month number (1-12): ");
  int? monthNumber = int.parse(stdin.readLineSync()!);

  String daysInMonth = (monthNumber >= 1 && monthNumber <= 12)
      ? getDaysInMonth(monthNumber)
      : "Invalid month number";

  print("Number of days in the month: $daysInMonth");
}

String getDaysInMonth(int monthNumber) {
  String evenDays = "30 days";
  String oddDays = "31 days";
  String febDays = "28 days (29 days in leap year)";

  String daysInMonth = RegExp(r'^(4|6|9|11)$').hasMatch(monthNumber.toString())
      ? evenDays
      : monthNumber == 2
          ? febDays
          : monthNumber == 1 ||
                  monthNumber == 3 ||
                  monthNumber == 5 ||
                  monthNumber == 7 ||
                  monthNumber == 8 ||
                  monthNumber == 10 ||
                  monthNumber == 12
              ? oddDays
              : "Invalid month number";

  return daysInMonth;
}
