import 'dart:io';

void main() {
  stdout.write("Enter the first number: ");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    print("$num1 is the largest number");
  } else if (num2 > num1) {
    print("$num2 is the largest number");
  } else {
    print("Both numbers are equal");
  }
}
