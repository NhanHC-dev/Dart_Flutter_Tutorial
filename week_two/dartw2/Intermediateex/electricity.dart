import 'dart:io';

void calculateElectricityBill(int units) {
  double totalBill = 0.0;

  if (units <= 50) {
    totalBill = units * 0.50;
  } else if (units <= 100) {
    totalBill = 50 * 0.50 + (units - 50) * 0.75;
  } else if (units <= 200) {
    totalBill = 50 * 0.50 + 50 * 0.75 + (units - 100) * 1.20;
  } else if (units > 200) {
    totalBill = 50 * 0.50 + 50 * 0.75 + 100 * 1.20 + (units - 200) * 1.50;
  }


  double additionalCharge = 0.20 * totalBill;
  totalBill += additionalCharge;

  print("Tong tien dien:  $totalBill");
}

void main() {
  print("Nhap so dien: ");
  String unitsInput = stdin.readLineSync() ?? '';
  int units = int.tryParse(unitsInput) ?? 0;

  calculateElectricityBill(units);
}
