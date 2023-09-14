


import 'dart:io';

void main(List<String> args) {

//Exercise 1  
  List<int> integerList = [];
  for(int i=1; i <= 100; i++){
    integerList.add(i);
  }
  for(int i=1; i <= integerList.length; i++){
    if(i%2==0){
      print(i);
    }
  }
//================================================
//Exercise 2
  List<String> stringList = [
    "Math","Science","Art","Marketing"
  ]; 
  print("Before");
  print(stringList);
  print("After");
  stringList.sort();
  print(stringList);

  //================================================
  //Exercise 3
  List<Map<String, dynamic>> ages= [
    {'Name':'Trong Hung','Age':20},
    {'Name': 'Cong Minh','Age':19},
    {'Name':'Hoang Nguyen','Age':22},
  ];
  print("Before sort age in ascending order");
  ages.forEach((ages){
    print(ages);
  });
  ages.sort((a, b) => a['Age'].compareTo(b['Age']));
  print("After sort age in ascending order");
  ages.forEach((ages){
    print(ages);
  });

  //================================================
  //Exercise 4
  Map<String,String> countries = {
    'Viet Nam' : 'Ha Noi',
    'America' : 'Washington',
    'Japan' : 'Tokyo'
  };
  countries.forEach((country, capital) {
      print(capital);    
   });

   
  //================================================
  //Exercise 5
  List<int> evenIntegerList = [1,2,3,4,5,6,7,8];
  int sum = 0;
  for(var check in evenIntegerList){
    if(check % 2 == 0){
      sum += check;
    }
  }
  print(sum);
  
  //================================================
  //Exercise 6
  Map<String,double> fruits = {
    'Mango':82.4,
    'Apple':62.4,
    'Pineapple':72.4,
  };
  String mostExpensive = "";
  double highestPrice = 0;
  fruits.forEach((fruitName, price) { 
    if(price >  highestPrice){
       highestPrice = price;
       mostExpensive = fruitName;
    }
  });
  print(mostExpensive);

  //================================================
  //Exercise 6
  List<String> strings = ["A","B","C","B","D","C"];
  int count = 0;
  var seen = Set<String>();
  List<String> uniquelist = strings.where((strings) => seen.add(strings)).toList();
  print(uniquelist);


  ///================================================
  //Exercise 7
  Map<String,int> programming = {
    'Pascal':1970,
    'C':1972,
    'Prolog':1972,
    'SQL':1978,
  };
    String oldestProgramming = "";
    int oldestYear = programming.values.first;
    programming.forEach((programming, year) { 
    if(year <  oldestYear){
       oldestYear = year;
       oldestProgramming = programming;
      }
    });
      print(oldestYear);


  ///================================================
  //Exercise 8
  List<double> productList = [1,2,3.3,4,5,6,7];
  double product = 1.0;
  for(int i=0; i<productList.length; i++){
    product*=productList[i];
  }
  print(product);
 }