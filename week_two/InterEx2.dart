import 'dart:io';

void main() {
  print('Enter the number of electricity units consumed:');
  int units = int.parse(stdin.readLineSync()!);
  print("The gross salary: " + calcBill(units).toString());
}

double calcBill(int units) {
  double bill;
  if (units <= 0) return 0;
  if (units <= 50) {
    bill = units * 0.50;
  } else if (units <= 150) {
    bill = 50 * 0.50 + (units - 50) * 0.75;
  } else if (units <= 250) {
    bill = 50 * 0.50 + 100 * 0.75 + (units - 150) * 1.20;
  } else {
    bill = 50 * 0.50 + 100 * 0.75 + 100 * 1.20 + (units - 250) * 1.50;
  }
  return bill * 1.2;
}