import 'dart:io';

void calculateGrossSalary(double basicSalary) {
  double hra, da;

  if (basicSalary <= 10000) {
    hra = 0.2 * basicSalary;
    da = 0.8 * basicSalary;
  } else if (basicSalary <= 20000) {
    hra = 0.25 * basicSalary;
    da = 0.9 * basicSalary;
  } else {
    hra = 0.3 * basicSalary;
    da = 0.95 * basicSalary;
  }

  double grossSalary = basicSalary + hra + da;

  print("Lưowng co ban: $basicSalary");
  print("HRA: $hra");
  print("DA: $da");
  print("Luong Gross: $grossSalary");
}

void main() {
  print("Nhap luong co ban cua nhan vien: ");
  String basicSalaryInput = stdin.readLineSync() ?? '';
  double basicSalary = double.tryParse(basicSalaryInput) ?? 0.0;

  calculateGrossSalary(basicSalary);
}
