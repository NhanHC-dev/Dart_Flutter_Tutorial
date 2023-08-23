import 'dart:io';

void main() {
  print("Enter the electricity unit charges:");
  int? units = int.parse(stdin.readLineSync()!);

  double totalBill = calculateElectricityBill(units);

  print("Total Electricity Bill: Rs. $totalBill");
}

double calculateElectricityBill(int units) {
  double bill = (units <= 50)
      ? units * 0.50
      : (units <= 150)
          ? (50 * 0.50) + ((units - 50) * 0.75)
          : (units <= 250)
              ? (50 * 0.50) + (100 * 0.75) + ((units - 150) * 1.20)
              : (50 * 0.50) +
                  (100 * 0.75) +
                  (100 * 1.20) +
                  ((units - 250) * 1.50);

  double surcharge = bill * 0.20;
  return bill + surcharge;
}
