import 'dart:mirrors';

void main(List<String> args) {
  Map<String,Map<String, double>> countries = {
    'VietNam': {'population': 99848126, 'area': 310060},
     'China': {'population': 1444216107, 'area': 9596960},
    'India': {'population': 1393409038, 'area': 3287263},
    'United States': {'population': 331002651, 'area': 9833517},
    'Indonesia': {'population': 273523615, 'area': 1910931},
    'Pakistan': {'population': 220892340, 'area': 881913},
  };
  Map<String,double> countriesDensity = {};
  countries.forEach((country,countryData) {
    double population = countryData['population']!;
    double area = countryData['area']!;
    double density = population/area;
    countriesDensity[country] =  density;
  });
  var sortedCountries = countriesDensity.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
  var largestCountries = sortedCountries.take(5);
  for (var check in largestCountries) {
    print('${check.key}: ${check.value.toStringAsFixed(2)} people/sq km');
  }
}
