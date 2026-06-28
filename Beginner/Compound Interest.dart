import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Enter principal amount: ");
  double principal = double.parse(stdin.readLineSync()!);
  stdout.write("Enter rate of interest (in %): ");
  double rate = double.parse(stdin.readLineSync()!);
  stdout.write("Enter time (in years): ");
  double time = double.parse(stdin.readLineSync()!);

  double compoundInterest =
      principal * (pow((1 + rate / 100), time)) - principal;
  stdout.writeln("The compound interest is: $compoundInterest");
}
