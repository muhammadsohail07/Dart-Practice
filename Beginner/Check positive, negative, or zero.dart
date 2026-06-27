import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  if (number > 0) {
    print("$number is a positive number");
  } else if (number < 0) {
    print("$number is a negative number");
  } else {
    print("$number is zero");
  }
}
