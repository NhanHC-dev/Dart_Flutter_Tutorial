import 'dart:io';

void main() {
  print("Enter a month number (1-12): ");
  int? monthNumber = int.parse(stdin.readLineSync()!);
  print("Enter a year: ");
  int? year = int.parse(stdin.readLineSync()!);

  int daysInMonth = getDaysInMonth(monthNumber, year);
  if (daysInMonth != -1) {
    print("Number of days in the month: $daysInMonth");
  } else {
    print("Invalid month number. Please enter a number between 1 and 12.");
  }
}

bool isLeapYear(int year) {
  return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

int getDaysInMonth(int monthNumber, int year) {
  if (monthNumber == 1 ||
      monthNumber == 3 ||
      monthNumber == 5 ||
      monthNumber == 7 ||
      monthNumber == 8 ||
      monthNumber == 10 ||
      monthNumber == 12) {
    return 31;
  } else if (monthNumber == 4 ||
      monthNumber == 6 ||
      monthNumber == 9 ||
      monthNumber == 11) {
    return 30;
  } else if (monthNumber == 2) {
    return isLeapYear(year) ? 29 : 28;
  } else {
    return -1;
  }
}
