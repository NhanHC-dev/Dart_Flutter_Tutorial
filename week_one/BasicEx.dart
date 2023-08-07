void main() {
  String name = "John";
  int age = 30;
  bool isMarried = false;
  double height = 1.75;
  double weight = 80.5;
  double bmi = weight / (height * height);
  print(name.toString() +
      "\n" +
      age.toString() +
      "\n" +
      isMarried.toString() +
      "\n" +
      height.toString() +
      "\n" +
      weight.toString() +
      "\n" +
      bmi.toString());
}
