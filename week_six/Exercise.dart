// import 'dart:io';

// class Person{
//   String? name;
//   int? age;
//   Person();
//   Person.infor(this.name,this.age);
//   void input(){
//     print("Enter name: ");
//     name = stdin.readLineSync();
//     print("Enter age: ");
//     age = int.parse(stdin.readLineSync()!);
//   }
//   @override
//   String toString(){
//     return "Name : $name -  Age : $age";
//   }
    
// }


// void main(){

//   //Step 2: Create a List of People
//   List<Person> listPerson = [];
//     for(int i=0;i<3;i++){
//       Person person = Person();
//       person.input();
//       listPerson.add(person);
//     }
//     print(listPerson);

//   //Step 3: Create a Map of People and Their Ages
//   Map<String,int> mapPerson = {};
//   for(int i=0;i<3;i++){
//       Person person = Person();
//       person.input();
//       String? name = person.name;
//       int? age = person.age;
//       mapPerson[name!] = age!;
//   }
//     print(mapPerson);

//   //Step 4: Print the Names of the People in the List
//   List<Person> listPerson = [Person.infor("Nguyen",123),Person.infor("Hung",456)];
//   // for(int i=0;i<listPerson.length;i++){
//   //   print(listPerson[i].name);
//   // }

//   //Bước 5: In tuổi của những người trên bản đồ
//   Map<String,int> mapPerson = {"Nguyen":12,"Hung":13};
//   // print(mapPerson.keys);

//   //Bước 6: In tên, tuổi của những người trong Danh sách và Bản đồ
//   print(listPerson);
//   print(mapPerson);
//   //Bước 7: Thêm người mới vào danh sách và bản đồ
//   // Person person = Person();
//   // person.input();
//   // listPerson.add(person);
//   // print(listPerson);

//   // Person newPerson = Person();
//   // newPerson.input();
//   // String? name = newPerson.name;
//   // int? age = newPerson.age;
//   // mapPerson[name!] = age!;
//   // print(mapPerson);

//   //Bước 8: Xóa một người khỏi Danh sách và Bản đồ
//   // print(listPerson);
//   // listPerson.removeAt(0);
//   // print(listPerson);

//   // mapPerson.remove("Hung");
//   // print(mapPerson);
//   //Bước 9: Cập nhật tuổi của một người trong Danh sách và Bản đồ
//   listPerson[0].age = 134;
//   print(listPerson[0]);
//   print(mapPerson['Hung']);
//   mapPerson['Hung'] = 14;
//   print(mapPerson['Hung']);
// }