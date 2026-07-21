class Point {
  final int x, y;
  const Point(this.x, this.y);
}

void main() {
  var p1 = const Point(1, 2);
  var p2 = const Point(1, 2);
  var p3 = Point(1, 2);
  print(identical(p1, p2));
  print(identical(p1, p3));
}
