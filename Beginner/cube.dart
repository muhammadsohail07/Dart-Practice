import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  int cube = number * number * number;
  stdout.writeln("The cube of $number is $cube");
}
