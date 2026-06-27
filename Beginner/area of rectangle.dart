import 'dart:io';

void main() {
  int height, width, area;
  stdout.write("Enter the height of rectangle: ");
  height = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the width of rectangle: ");
  width = int.parse(stdin.readLineSync()!);
  area = height * width;
  print("Area of rectangle is: $area");
}
