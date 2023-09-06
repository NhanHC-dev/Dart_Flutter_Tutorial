void main() {
  Map<String, String> Ex4 = {
    "US": "Washington D.C.",
    "Canada": "Ottawa",
    "France": "Paris",
    "Germany": "Berlin",
    "Japan": "Tokyo",
  };
  for (var country in Ex4.keys) {
    print(country);
  }
}
