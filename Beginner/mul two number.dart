import "dart:io";

void main() {
  int number1, number2, mul;

  stdout.write("Enter first number: ");
  number1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number: ");
  number2 = int.parse(stdin.readLineSync()!);
  mul = number1 * number2;
  print("The mul of $number1 and $number2 is $mul.");
}
