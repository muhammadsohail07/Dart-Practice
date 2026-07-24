import 'dart:math';

void main() {
  print("Topic: Growth and Decay");

  double p0 = 100;
  double rate = 0.05;
  double time = 4;

  double growth = p0 * exp(rate * time);

  print("Initial value = $p0");
  print("Growth after 4 years is $growth");
}
