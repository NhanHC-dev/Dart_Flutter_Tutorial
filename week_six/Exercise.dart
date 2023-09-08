//STEP 1
class person{
  final String name;
  int ages;
  person(this.name, this.ages);
}

void main(List<String> args) {
//STEP 2  
  List<person> p = [
    person("Trong Hung",20),
    person("Minh Nhat",21),
    person("Viet Hung",22),
    ];
//STEP 4
    for(var name in p){
      print(name.name);
    }
  //Map < KEYS , VALUE > 
  //Dữ liệu kiểu String chứa dữ liệu kiểu int
//STEP 3
  Map<String, int> ages = {
    "Trong Hung":20,
    "Minh Nhat":21,
    "Viet Hung":22,
    };


//============================================
//STEP 5
    //Xuat thong tin tuoi
    for(int age in ages.values){
      print(age);
    }
    
//============================================
//STEP 6
  //Xuất thông tin TÊN, TUỔI trong MAP
    ages.forEach((name, age) { 
      print(name);
    });
    ages.forEach((name, age) {
      print(age);
    });
  //Xuất thông tin TÊN, TUỔI trong LIST
    p.forEach((p) {
      print(p.name);
    });
    p.forEach((p) {
      print(p.ages);
    });
//============================================
//STEP 7
  //Thêm Person trong LIST
  person newPerson = new person('Hoang Nguyen', 26);
  p.add(newPerson);
  
  //Thêm Person trong MAP
  ages['Hoang Nguyen'] = 24;
  print(ages['Hoang Nguyen']);

//============================================
//STEP 8
  //Xóa phần từ trong LIST
  p.removeAt(0);
  //Xóa phần tử trong MAP
  ages.remove(0);

//============================================
//STEP 9
  //Thay đổi thông tin trong LIST
  String personToUpdate = "Trong Hung"; 
  int newAge = 35; 

  for (int i = 0; i < p.length; i++) {
    if (p[i].name == personToUpdate) {
      p[i].ages = newAge;
      print(p[i].ages);
      break; 
    }
  }

  //Thay đổi thông tin trong MAP
  ages['Minh Nhat'] = 25;
  print(ages['Minh Nhat']);

//===========================================
//STEP 10
  //Xuất thông tin TÊN và TUỔI trong MAP
  ages.forEach((name,age){
      print('$name is $age years old');
    });
  //Xuất thông tin TÊN và TUỔI trong LIST 
   p.forEach((p) {
      print(p.name);
    });
    p.forEach((p) {
      print(p.ages);
    });

}