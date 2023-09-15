import 'dart:mirrors';
void main(List<String> args) {
  //Create a list of maps, where each map represents a product with a name, price, and quantity.
  // Sort the list by the total cost of each product (price x quantity) in descending order.
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'price': 50000, 'quantity': 40},
    {'name': 'Dorian', 'price': 60000, 'quantity': 30},
    {'name': 'Watermelon', 'price': 75000, 'quantity': 20},
    {'name': 'Orange', 'price': 45000, 'quantity': 50},
  ];
  fruits.sort((a,b){
    int totalA = a['price'] * a['quantity'];
    int totalB = b['price'] * b['quantity'];
    return totalA-totalB;
  });
  for(var check in fruits){
    print("Tên: ${check['name']}, Giá: ${check['price'] * check['quantity']}'");
  }
}