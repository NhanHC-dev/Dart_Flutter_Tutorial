import 'dart:math';

double radians(double degrees) {
  return degrees * (pi / 180);
}

double calculateDistance(double x, double y, double x1, double y1) {
  const double earthRadius = 6371;

  final double dx = radians(x1 - x);
  final double dy = radians(y1 - y);

  final double a = sin(dx / 2) * sin(dx / 2) +
      cos(radians(x)) * cos(radians(x1)) * sin(dy / 2) * sin(dy / 2);

  final double c = 2 * atan2(sqrt(a), sqrt(1 - a));
  final double distance = earthRadius * c;

  return distance;
}

void main() {
  final double x = 16.047079;
  final double y = 108.206230;
  final double x1 = 51.509865;
  final double y1 = -0.1180920;

  final double distance = calculateDistance(x, y, x1, y1);

  print(
      "The shortest distance between the two cities is ${distance.toStringAsFixed(2)} kilometers.");
}
