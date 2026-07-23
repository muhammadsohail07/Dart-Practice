import 'dart:math';

double f(double x) {
  return x * x;
}

double derivative(double x) {
  double h = 0.0001;
  return (f(x + h) - f(x)) / h;
}

double integral(double a, double b) {
  int n = 1000;
  double h = (b - a) / n;
  double sum = 0;

  for (int i = 0; i < n; i++) {
    double x = a + i * h;
    sum += f(x) * h;
  }

  return sum;
}

void main() {
  double x = 3;
  print("f(x) = x^2 at x = $x is ${f(x)}");

  print("Derivative at x = $x is ${derivative(x)}");

  double a = 0;
  double b = 2;
  print("Integral of f(x) from $a to $b is ${integral(a, b)}");

  double area = pi * pow(5, 2);
  print("Area of circle with radius 5 is $area");
}
