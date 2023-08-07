void main() {
  String name = "John";
  int age = 30;
  bool isMarried = false;
  double height = 1.75;
  const weight = 80.5;
  final bmi;
  bmi = weight / (height * height);
  print(name +
      age.toString() +
      isMarried.toString() +
      height.toString() +
      weight.toString() +
      bmi);
}
