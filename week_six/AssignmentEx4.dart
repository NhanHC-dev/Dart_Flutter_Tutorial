void main() {
  Map<String, Map<String, double>> countriesData = {
    "China": {"population": 1439323776, "area": 9596960},
    "India": {"population": 1380004385, "area": 3287263},
    "United States": {"population": 331002651, "area": 9525067},
    "Indonesia": {"population": 273523615, "area": 1910931},
    "Pakistan": {"population": 220892340, "area": 881913},
    "Brazil": {"population": 212559417, "area": 8515767},
    "Nigeria": {"population": 206139589, "area": 923768},
    "Bangladesh": {"population": 164689383, "area": 147570},
    "Russia": {"population": 145934462, "area": 17125242},
    "Mexico": {"population": 128932753, "area": 1964375},
  };
  List<String> sortedCountries = countriesData.keys.toList()
    ..sort((a, b) =>
        (countriesData[b]!["population"]! / countriesData[b]!["area"]!)
            .compareTo(
                countriesData[a]!["population"]! / countriesData[a]!["area"]!));

  print("Top 5 countries by population density:");
  for (int i = 0; i < 5; i++) {
    final countryName = sortedCountries[i];
    final density = (countriesData[countryName]!["population"]! /
        countriesData[countryName]!["area"]!);
    print(
        "$countryName - Population Density: ${density.toStringAsFixed(2)} people per square kilometer");
  }
}
