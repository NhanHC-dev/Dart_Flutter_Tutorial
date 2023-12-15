import 'dart:io';
import 'dart:math';

// kiem tra so duowng am hay bang 0
void checkSo(int a){
  
  //print("Enter number : ");
  //int a;
  //a = stdin.readByteSync();
  if(a > 0){
    print("A la so duong");
  } else if(a < 0 ){
    print("A la so am");
  } 
  if(a == 0){
    print("A = 0");
  }
}

//kiem tra so chan hay le
void chanLe(int a){
  //print("Enter number need check: ");
  //int a;
  //a = stdin.readByteSync();
  if(a % 2 == 0){
    print("Day la so chan");
  }else{
    print("Day la so le");
  }
}
//kiem tra xem mot nam co phai la nam nhuan hay khong

void checkNam(int year){
  if(year % 4 == 0 && year % 100 != 0){
    print("Day la nam nhuan");
  }else{
    print("Day khong phai la nam nhuan");
  }
}
//kieu tra mot ky tu co phai la bang chu cai hay khong
bool isAlphabet(String char) {
  return RegExp(r'^[a-zA-Z]$').hasMatch(char);
}
void checkChu(String r){
    if (isAlphabet(r)) {
    print("$r là một chữ cái.");
  } else {
    print("$r không phải là chữ cái.");
  }
}
//kiem tra chuw cai bat ki xem la nguyên âm hay phụ âm
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
//kiểm tra xem đó là bảng chữ cái , chữ số , hay kí tự đặc biệt
void checkCharecter(String char){
      if (char.contains(RegExp(r'[A-Za-z]'))) {
      print("$char là bảng chữ cái.");
    } else if (char.contains(RegExp(r'\d'))) {
      print("$char là chữ charsố.");
    } else {
      print("$char là ký tự đặc biệt.");
    }
}
//check chữ thường hay chữ hoa 
void checkCase(String char){
      if (char.contains(RegExp(r'[A-Z]'))) {
      print("$char là chữ hoa.");
    } else if (char.contains(RegExp(r'[a-z]'))) {
      print("$char là chữ thường.");
    } else {
      print("$char không phải là chữ cái.");
    }
}
//check vaf in ngay trong tuan
void printDayOfWeek(int weekNumber) {
  if (weekNumber >= 1 && weekNumber <= 7) {
    switch (weekNumber) {
      case 1:
        print("Ngày trong tuần: Thứ Hai");
        break;
      case 2:
        print("Ngày trong tuần: Thứ Ba");
        break;
      case 3:
        print("Ngày trong tuần: Thứ Tư");
        break;
      case 4:
        print("Ngày trong tuần: Thứ Năm");
        break;
      case 5:
        print("Ngày trong tuần: Thứ Sáu");
        break;
      case 6:
        print("Ngày trong tuần: Thứ Bảy");
        break;
      case 7:
        print("Ngày trong tuần: Chủ Nhật");
        break;
    }
  } else {
    print("Số tuần không hợp lệ. Vui lòng nhập từ 1 đến 7.");
  }
}
//viet chuong trình nhập số tháng và in ra số ngày trong tháng
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
//Viết chương trình nhập vào các góc của một tam giác và kiểm tra xem tam giác đó có đúng hay không.
void checkTamGiac(int a, int b, int c){
  if((a + b ) > 2 || (a + c ) > b || (b + c) > a){
    print("Day la 1 tam giac");
  }else{
    print("Day khong phai la tam giac");
  }
}
//Viết chương trình tìm tất cả các nghiệm của một phương trình bậc hai.
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
//---------------------------------//
void main(){  
  checkSo(5);
  chanLe(5);
  checkNam(2100);
  checkChu("a");
  checkNAm("a");
  checkCharecter("c");
  checkCase("c");
  printDayOfWeek(5);
  printDaysInMonth(10);
  checkTamGiac(3, 4, 5);
  timNghiem(1,  2, 1);
}