import "dart:math";
import "dart:io";

void main() {
  double radius, area;
  stdout.write("Enter the radius of circle: ");
  radius = double.parse(stdin.readLineSync()!);
  area = pi * radius * radius;
  print("Area of circle is: $area");
}
