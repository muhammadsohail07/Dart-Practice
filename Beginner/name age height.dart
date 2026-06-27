import "dart:io";

void main() {
  String name;
  int age;
  double height;

  stdout.write("Enter your name: ");
  name = stdin.readLineSync()!;
  stdout.write("Enter your age: ");
  age = int.parse(stdin.readLineSync()!);
  stdout.write("Enter your height (in meters): ");
  height = double.parse(stdin.readLineSync()!);

  print(
    "Hello, My name is $name! , i'm $age years old and your height is $height meters.",
  );
}
