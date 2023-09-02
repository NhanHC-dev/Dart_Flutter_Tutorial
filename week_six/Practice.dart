void main() {
  //1
  List<int> numbers = [];
  for (int i = 1; i <= 100; i++) {
    numbers.add(i);
  }
  // numbers.forEach((num) {
  //   num.isEven ? print(num) : 0;
  // });
  //2
  List<String> strs = ["Hello", "World", "This", "is", "a"];
  strs.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
  strs.forEach((str) {
    print(str);
  });
  //3
  List<Map<String, dynamic>> people = [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
    {"name": "Charlie", "age": 35}
  ];
  people.sort((a, b) => a["age"] - b["age"]);
  //4
  Map<String, String> cou = {
    "VN": "Ha Noi",
    "Han Quoc": "Seoul",
    "Duc": "Berlin"
  };
  cou.forEach((key, value) {
    print(key);
  });
  //5
  List<int> numbers2 = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  int sum = 0;
  numbers2.forEach((num) {
    num.isEven ? sum += num : 0;
  });
  print(sum);
  //6
  Map<String, int> fruits = {
    "apple": 30,
    "banana": 25,
    "peach": 40,
    "grape": 70
  };
  int exfr = 0;
  fruits.forEach((fr, cost) {
    if (exfr < cost) {
      exfr = cost;
    }
  });
  List<String> frs = fruits.keys.where((key) => fruits[key] == exfr).toList();
  frs.forEach((element) {
    print(element);
  });
  //7
  List<String> strings = [
    "apple",
    "banana",
    "apple",
    "orange",
    "grapes",
    "banana"
  ];
  strings.sort();
  for (int i = 1; i < strings.length; i++) {
    if (strings[i] == strings[i - 1]) {
      strings.removeAt(i);
    }
  }
  strings.forEach((element) {
    print(element);
  });
  //8
  Map<String, int> programmingLanguages = {
    "Fortran": 1957,
    "COBOL": 1959,
    "Lisp": 1958,
    "BASIC": 1964,
    "C": 1972,
    "Python": 1991,
    "Java": 1995,
    "JavaScript": 1995,
    "C#": 2002,
    "Swift": 2014,
  };
  String oldestLanguage = programmingLanguages.keys.reduce(
      (a, b) => programmingLanguages[a]! < programmingLanguages[b]! ? a : b);
  print(oldestLanguage);
  //9
  List<int> numbers3 = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
  ];
  int sum3 = 1;
  numbers3.forEach((num) {
    sum3 *= num;
  });
  print(sum3);
}
