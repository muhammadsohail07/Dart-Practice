class Point {
  final int x, y;
  Point(this.x, this.y);
  Point operator +(Point other) => Point(x + other.x, y + other.y);
  @override
  String toString() => '($x, $y)';
}

void main() {
  var p1 = Point(2, 3);
  var p2 = Point(4, 5);
  print(p1 + p2);
}
