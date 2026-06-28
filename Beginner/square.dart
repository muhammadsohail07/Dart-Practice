import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  int square = number * number;
  stdout.writeln("The square of $number is $square");
}
