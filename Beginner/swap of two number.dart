import "dart:io";

void main() {
  stdout.write("Enter the first number: ");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  print("Before swapping:");
  print("First number: $num1");
  print("Second number: $num2");

  // Swapping the numbers
  int temp = num1;
  num1 = num2;
  num2 = temp;

  print("After swapping:");
  print("First number: $num1");
  print("Second number: $num2");
}
