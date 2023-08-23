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
  switch (monthNumber) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      return 31;
    case 4:
    case 6:
    case 9:
    case 11:
      return 30;
    case 2:
      return isLeapYear(year) ? 29 : 28;
    default:
      return -1;
  }
}
