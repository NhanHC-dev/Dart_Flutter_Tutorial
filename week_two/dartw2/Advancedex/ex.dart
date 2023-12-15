import 'dart:io';
import 'dart:math';
//nhap ki tu bat ky va kiem tra laf bang chu cai chu so hay ki tu
void checkCharacterType(String character) {
  if (character.length == 1) {
    int charCode = character.codeUnitAt(0);

    if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122)) {
      print("$character là bảng chữ cái.");
    } else if (charCode >= 48 && charCode <= 57) {
      print("$character là chữ số.");
    } else {
      print("$character là ký tự đặc biệt.");
    }
  } else {
    print("Vui lòng chỉ nhập một ký tự.");
  }
}
//nhap so va in ngay trong tuan dung swith case
void dayOfWeek(int a){
  switch(a){
    case 1 :
      print("Thu hai");
      break;
    case 2 : 
      print("Thu 3");
      break;
    case 3: 
      print("Thu 4");
      break;
    case 4 :
      print("Thu 5");
      break;
    case 5 : 
      print("Thu 6");
      break;
    case 6: 
      print("Thu 7");
      break;
    case 6: 
      print("Chu nhat");
      break;
  }
}
//nhap so thang va in so ngay trong thang do
void printDaysInMonth(int month) {
  if (month >= 1 && month <= 12) {
    switch (month) {
      case 1: // Tháng 1
      case 3: // Tháng 3
      case 5: // Tháng 5
      case 7: // Tháng 7
      case 8: // Tháng 8
      case 10: // Tháng 10
      case 12: // Tháng 12
        print("Số ngày trong tháng $month là 31 ngày.");
        break;
      case 4: // Tháng 4
      case 6: // Tháng 6
      case 9: // Tháng 9
      case 11: // Tháng 11
        print("Số ngày trong tháng $month là 30 ngày.");
        break;
      case 2: // Tháng 2
        print("Số ngày trong tháng $month là 28 hoặc 29 ngày.");
        break;
    }
  } else {
    print("Số tháng không hợp lệ. Vui lòng nhập từ 1 đến 12.");
  }
}
//viet chuong trinh nhap so tuan va in ngay trong tuan bang if else
void printDayOfWeekIf(int weekNumber) {
  if (weekNumber == 1) {
    print("Ngày trong tuần: Thứ Hai");
  } else if (weekNumber == 2) {
    print("Ngày trong tuần: Thứ Ba");
  } else if (weekNumber == 3) {
    print("Ngày trong tuần: Thứ Tư");
  } else if (weekNumber == 4) {
    print("Ngày trong tuần: Thứ Năm");
  } else if (weekNumber == 5) {
    print("Ngày trong tuần: Thứ Sáu");
  } else if (weekNumber == 6) {
    print("Ngày trong tuần: Thứ Bảy");
  } else if (weekNumber == 7) {
    print("Ngày trong tuần: Chủ Nhật");
  } else {
    print("Số tuần không hợp lệ. Vui lòng nhập từ 1 đến 7.");
  }
}
// in so ngay trong thang dung if else
void printDaysInMonthIf(int month) {
  if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
    print("Số ngày trong tháng $month là 31 ngày.");
  } else if (month == 4 || month == 6 || month == 9 || month == 11) {
    print("Số ngày trong tháng $month là 30 ngày.");
  } else if (month == 2) {
    print("Số ngày trong tháng 2 là 28 hoặc 29 ngày.");
  } else {
    print("Số tháng không hợp lệ. Vui lòng nhập từ 1 đến 12.");
  }
}
//tim tat ca cac nghiem cua pt bac hai bang cach su dung if else
void timNghiem(int a, int b, int c){
  int denta;
  denta = (b * b) - 4 * (a * c);
  double x1, x2;
  if(denta > 0){
    print("Phuong trinh co hai nghiem:x1 = ${(-b + sqrt(denta)) / 2*a} x2 =   ${(-b - sqrt(denta)) / 2*a}");
  } else if (denta == 0){
    print("Phuong trinhg co nghiem kep: x1 = x2 = ${(-b) / (2 * a)}");
  } else {
    print("Phuong trinh vo nghiem");
  }
}
//kiem tra nguyen am hay phu am bang if else
bool nguyenPhuam(String char) {
  return RegExp(r'^[ueoaiUEOAI]$').hasMatch(char);
}
void checkNAm(String r){
  if(nguyenPhuam(r)){
    print("$r la phu am");
  }else{
    print("$r la nguyen am");
  }
}
//---------------------------------//
void main() {
  checkCharacterType("6");
  dayOfWeek(5);
  printDaysInMonth(2);
  printDayOfWeekIf(7);
  printDaysInMonthIf(12);
  timNghiem(1, 2, 1);
  nguyenPhuam("a");
}
