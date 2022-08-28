import 'dart:math';

class Point {
  final double x;
  final double y;
  final double z;
  Point(this.x, this.y, this.z);

  distanceTo(Point another) {
    num rx = pow((x - another.x), 2);
    num ry = pow((y - another.y), 2);
    num rz = pow((z - another.z), 2);
    var distance = sqrt(rx + ry + rz);
    return distance;
  }

  factory Point.zero() {
    return Point(0, 0, 0);
  }
  factory Point.one() {
    return Point(1, 1, 1);
  }
  factory Point.five() {
    return Point(5, 5, 5);
  }
}
