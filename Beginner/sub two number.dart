import "dart:io";

void main() {
  int number1, number2, sub;

  stdout.write("Enter first number: ");
  number1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number: ");
  number2 = int.parse(stdin.readLineSync()!);
  sub = number1 - number2;
  print("The sub of $number1 and $number2 is $sub.");
}
