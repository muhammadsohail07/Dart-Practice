import "dart:io";

void main() {
  int number1, number2, sum;

  stdout.write("Enter first number: ");
  number1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number: ");
  number2 = int.parse(stdin.readLineSync()!);
  sum = number1 + number2;
  print("The sum of $number1 and $number2 is $sum.");
}
