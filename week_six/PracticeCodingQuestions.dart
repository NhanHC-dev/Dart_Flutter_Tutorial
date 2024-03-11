// //Create a list of integers from 1 to 100 and print out only the even numbers.
// import 'dart:ffi';
// import 'dart:io';

// void main1(){
//   List<int> listNumber = [];
//   for(int i=1;i<=100;i++){
//     if(i%2 == 0){
//       listNumber.add(i);
//     }
//   }
//   print(listNumber);
// }
// //Create a list of strings and sort it in alphabetical order.
// void main2(){
//   List<String> listString = ["Nguyen","Hung","An","Minh"];
//   print(listString);
//   listString.sort();
//   print(listString);
// }
// //Create a list of maps, where each map represents a person with a name and age. Sort the list by age in ascending order.
// void main3() {
//   List<Map<String, dynamic>> people = [
//     {'name': 'Alice', 'age': 30},
//     {'name': 'Bob', 'age': 25},
//     {'name': 'Charlie', 'age': 35},
//     {'name': 'David', 'age': 28},
//   ];

//   // Sort the list by age in ascending order
//   people.sort((a, b) => (a['age'] as int).compareTo(b['age'] as int));

//   // Print the sorted list
//   print(people);
// }

// //Create a map that associates the names of countries with their capital cities. Print out only the names of the countries.
// void main4(){
//   Map<String,String> mapCountries = {
//     "VietNam" : "HaNoi",
//     "Korea" : "Seoul",
//     "Thailand" : "Bankock"
//   };
//   print(mapCountries);
//   print(mapCountries.values);
//   print(mapCountries.keys);
// }
// //Create a list of integers and find the sum of all even numbers in the list.
// void main5(){
//   List<int> listNumber = [1,2,3,4,5,6,7,8,9,10];
//   int sum=0;
//   for(int i=0;i<listNumber.length;i++){
//     if(listNumber[i].isEven){
//       sum+= listNumber[i];
//     }
//   }
//   print("Sum : $sum");
// }
// // Create a map that associates the names of fruits with their prices. Find the most expensive fruit in the map.
// void main6(){
//   Map<String,double> mapFruits = {
//     "Orange" : 12.5,
//     "Apple" : 15.6,
//     "Candy" : 11.5
//   };
//   double max = 0;
//   for(var fruit in mapFruits.entries){
//     if(max<fruit.value){
//       max = fruit.value;
//     }
//   }
//   print("Max : $max");
// }
// //Create a list of strings and remove all duplicates from the list.
// void main7(){
//   List<String> listString = [
//     "Hello",
//     "Hi",
//     "Nguyen",
//     "Hello",
//     "Chao"
//   ];
//   print(listString);
//   List<String> unique = listString.toSet().toList();
//   //toset là chuyển qua thành set , to list là chuyển qua thành list
//   print(unique);
// }
// //Create a map that associates the names of programming languages with their release dates. Find the programming language with the oldest release date.

// //Create a list of integers and find the product of all numbers in the list.
// void main1(){
//   List<int> listNumber = [1,2,3,4,5,6,7];
//   int tich = 1;
//   for(int i=0;i<listNumber.length;i++){
//     tich *= listNumber[i];
//   }
//   print("Tich = $tich");
// }


// //////////////////////////////////////////////////////////////////////


// void main() {
//   print("Hello World! We have bunch of programs to run.");
//   print("Choose one: 1 to 9");
//   print(
//       "1. Create a list of integers from 1 to 100 and print out only the even numbers.");

//   print("2. Create a list of strings and sort it in alphabetical order.");
//   print(
//       "3. Create a list of maps, where each map represents a person with a name and age. Sort the list by age in ascending order.");
//   print(
//       "4. Create a map that associates the names of countries with their capital cities. Print out only the names of the countries.");
//   print(
//       "5.Create a list of integers and find the sum of all even numbers in the list.");
//   print(
//       "6. Create a map that associates the names of fruits with their prices. Find the most expensive fruit in the map.");
//   print("7. Create a list of strings and remove all duplicates from the list.");
//   print(
//       "8. Create a map that associates the names of programming languages with their release dates. Find the programming language with the oldest release date.");
//   print(
//       "9. Create a list of integers and find the product of all numbers in the list.");

//   // Take input from user console
//   String? choice = stdin.readLineSync();

//   switch (choice) {
//     case '1':
//       listOfIntegers();
//       break;
//     case '2':
//       listOfStrings();
//       break;
//     case '3':
//       listOfMaps();
//       break;
//     case '4':
//       countriesAndCapital();
//       break;
//     case '5':
//       listOfIntegersAndSumOfEvens();
//       break;
//     case '6':
//       fruitsAndPrices();
//       break;
//     case '7':
//       listOfStringsAndRemoveDuplicates();
//       break;
//     case '8':
//       programmingLanguagesAndReleaseDate();
//       break;
//     case '9':
//       listOfIntegersAndProduct();
//       break;
//     default:
//       print("Invalid choice");
//   }
// }

// // - [x] Create a list of integers from 1 to 100 and print out only the even numbers.

// void listOfIntegers() {
//   List.generate(100, (index) => index)
//       .forEach((element) => element % 2 == 0 ? print(element) : null);
// }

// // - [x] Create a list of strings and sort it in alphabetical order.

// void listOfStrings() {
//   List<String> listOfStrings = [
//     'a',
//     'e',
//     'f',
//     'g',
//     'h',
//     'i',
//     'b',
//     'c',
//     'd',
//     'j'
//   ];
//   listOfStrings.sort();
//   print(listOfStrings);
// }

// // - [x] Create a list of maps, where each map represents a person with a name and age. Sort the list by age in ascending order.

// void listOfMaps() {
//   List<Map<String, dynamic>> listOfMaps = [
//     {'name': 'John', 'age': 30},
//     {'name': 'Jane', 'age': 20},
//     {'name': 'Jack', 'age': 40},
//     {'name': 'Jill', 'age': 90},
//     {'name': 'Joe', 'age': 60},
//   ];
//   listOfMaps.sort((a, b) => a['age'].compareTo(b['age']));
//   print(listOfMaps);
// }

// // - [x] Create a map that associates the names of countries with their capital cities. Print out only the names of the countries.

// void countriesAndCapital() {
//   Map<String, String> countryAndCity = {
//     "Nigeria": "Abuja",
//     "Ghana": "Accra",
//     "Kenya": "Nairobi",
//     "South Africa": "Pretoria",
//     "Tanzania": "Dodoma",
//     "Uganda": "Kampala",
//     "Egypt": "Cairo",
//   };
//   countryAndCity.forEach((key, value) => print(key));
// }

// // - [x] Create a list of integers and find the sum of all even numbers in the list.

// void listOfIntegersAndSumOfEvens() {
//   List<int> listOfIntegers = List.generate(100, (index) => index);
//   int sum = 0;
//   listOfIntegers.forEach((element) {
//     if (element % 2 == 0) {
//       sum += element;
//     }
//   });
//   print(sum);
// }

// // - [x] Create a map that associates the names of fruits with their prices. Find the most expensive fruit in the map.

// void fruitsAndPrices() {
//   Map<String, double> fruitsAndPrices = {
//     "Apple": 1.0,
//     "Orange": 2.0,
//     "Banana": 3.0,
//     "Grapes": 9.0,
//     "Mango": 5.0,
//     "Pineapple": 6.0,
//     "Watermelon": 7.0,
//   };
//   String expensive = fruitsAndPrices.keys.first;
//   fruitsAndPrices.forEach((key, value) {
//     if (value > fruitsAndPrices[expensive]!) {
//       expensive = key;
//     }
//   });
//   print(expensive);
// }

// // - [x] Create a list of strings and remove all duplicates from the list.

// void listOfStringsAndRemoveDuplicates() {
//   List<String> listOfStrings = [
//     'a',
//     'e',
//     'f',
//     'g',
//     'h',
//     'i',
//     'b',
//     'c',
//     'd',
//     'j',
//     'a',
//     'e',
//     'f',
//     'g',
//     'h',
//     'i',
//     'b',
//     'c',
//     'd',
//     'j'
//   ];
//   listOfStrings = listOfStrings.toSet().toList();
//   print(listOfStrings);
// }

// // - [x] Create a map that associates the names of programming languages with their release dates. Find the programming language with the oldest release date.

// void programmingLanguagesAndReleaseDate() {
//   Map<String, int> programmingLanguagesAndReleaseDate = {
//     "Java": 1995,
//     "Python": 1991,
//     "C": 1972,
//     "C++": 1983,
//     "C#": 2000,
//     "JavaScript": 1995,
//     "PHP": 1995,
//     "Swift": 2014,
//     "Kotlin": 2011,
//     "Go": 2009,
//   };
//   String oldest = programmingLanguagesAndReleaseDate.keys.first;
//   programmingLanguagesAndReleaseDate.forEach((key, value) {
//     if (value < programmingLanguagesAndReleaseDate[oldest]!) {
//       oldest = key;
//     }
//   });
//   print(oldest);
// }

// // - [x] Create a list of integers and find the product of all numbers in the list.

// void listOfIntegersAndProduct() {
//   List<int> listOfIntegers = List.generate(5, (index) => index + 1);
//   int product = 1;
//   listOfIntegers.forEach((element) {
//     product *= element;
//   });
//   print(product);
// }
