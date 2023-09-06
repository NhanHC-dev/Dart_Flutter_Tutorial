void main() {
  Map<String, double> Ex6 = {
    "Apple": 1.25,
    "Banana": 0.75,
    "Cherry": 2.0,
    "Orange": 1.5,
    "Grapes": 2.25,
  };

  String mostExpensiveFruit = "";
  double highestPrice = 0.0;
  Ex6.forEach((fruit, price) {
    if (price > highestPrice) {
      highestPrice = price;
      mostExpensiveFruit = fruit;
    }
  });
  print(
      "The most expensive fruit is $mostExpensiveFruit, priced at \$$highestPrice");
}
