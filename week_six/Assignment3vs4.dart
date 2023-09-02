void main() {
  //3
  List<Map<String, dynamic>> products = [
    {"name": "Product 1", "price": 10, "quantity": 2},
    {"name": "Product 2", "price": 5, "quantity": 3},
    {"name": "Product 3", "price": 20, "quantity": 1},
  ];
  products
      .sort((a, b) => b["price"] * b["quantity"] - a["price"] * a["quantity"]);
  products.forEach((product) {
    print(product);
  });
  //4
  Map<String, Map<String, int>> countries = {
    "China": {"population": 1444216107, "area": 9596961},
    "India": {"population": 1380004385, "area": 3287263},
    "United States": {"population": 332405907, "area": 9833517},
    "Indonesia": {"population": 273523615, "area": 1919440},
    "Pakistan": {"population": 220892340, "area": 880254},
    "Bangladesh": {"population": 164689807, "area": 1475700},
    "Japan": {"population": 125452000, "area": 377975},
    "Russia": {"population": 146883382, "area": 17098242},
    "Mexico": {"population": 128933455, "area": 1972550},
    "Philippines": {"population": 110581078, "area": 300000},
  };
  List<Map<String, dynamic>> sorted = [];
  List<Map<String, dynamic>> top5 = [];
  for (var country in countries.keys) {
    double populationDensity =
        countries[country]!["population"]! / countries[country]!["area"]!;
    sorted.add(
        {"country": country, "populationDensity": populationDensity.toInt()});
  }
  sorted.sort((a, b) => b["populationDensity"] - a["populationDensity"]);
  for (int i = 0; i < 5; i++) {
    top5.add(sorted[i]);
  }
  top5.forEach((product) {
    print(product);
  });
}
