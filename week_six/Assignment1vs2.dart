import 'dart:math';

double haversine(double lat1, double lon1, double lat2, double lon2) {
  // distance between latitudes and longitudes

  double dLat = (lat2 - lat1) * pi / 180;
  double dLon = (lon2 - lon1) * pi / 180;

  // convert to radians
  lat1 = (lat1) * pi / 180;
  lat2 = (lat2) * pi / 180;
  // apply formulae
  num a = pow(sin(dLat / 2), 2) + pow(sin(dLon / 2), 2) * cos(lat1) * cos(lat2);
  double rad = 6371;
  double c = 2 * asin(sqrt(a));
  return rad * c;
}

void main() {
  //1
  List<int> numbers1 = [
    4,
    2,
    3,
    1,
    5,
    6,
    7,
    8,
    9,
    40,
    11,
    32,
    13,
    15,
    15,
    16,
    10,
    18,
    9,
    21
  ];
  int ans = 1;
  int temp = 1;
  for (int i = 1; i < numbers1.length; i++) {
    if (numbers1[i] == numbers1[i - 1] + 1) {
      temp++;
    } else {
      ans = max(ans, temp);
      temp = 1;
    }
  }
  print(ans);
  //2
  //distance = radius * sqrt(sin^2(lat1 - lat2) + cos(lat1) * cos(lat2) * sin^2(lon1 - lon2))
  Map<String, Map<String, double>> cities = {
    "New York City": {"latitude": 40.7127, "longitude": -74.0059},
    "Los Angeles": {"latitude": 34.0522, "longitude": -118.2437},
    "London": {"latitude": 51.5074, "longitude": -0.1278},
    "Tokyo": {"latitude": 35.6895, "longitude": 139.6917},
    "Sydney": {"latitude": -33.8688, "longitude": 151.2093},
  };
  double ans1 = double.infinity;
  for (String city in cities.keys) {
    for (String otherCity in cities.keys) {
      if (city != otherCity) {
        double distance = haversine(
            cities[city]!["latitude"]!,
            cities[city]!["longitude"]!,
            cities[otherCity]!["latitude"]!,
            cities[otherCity]!["longitude"]!);
        if (distance < ans1) {
          ans1 = distance;
        }
      }
    }
  }
  print(ans1);
}
