void main() {
  List<Map<String, dynamic>> products = [
    {"name": "Product A", "price": 10.0, "quantity": 5},
    {"name": "Product B", "price": 8.0, "quantity": 3},
    {"name": "Product C", "price": 15.0, "quantity": 2},
    {"name": "Product D", "price": 12.0, "quantity": 4},
  ];

  products.sort((a, b) =>
      (b["price"] * b["quantity"]).compareTo(a["price"] * a["quantity"]));

  print("Products sorted by total cost in descending order:");
  products.forEach((product) {
    final totalCost = product["price"] * product["quantity"];
    print(
        "${product["name"]} - Price: \$${product["price"]}, Quantity: ${product["quantity"]}, Total Cost: \$${totalCost.toStringAsFixed(2)}");
  });
}
