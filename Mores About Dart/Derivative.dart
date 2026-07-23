void main() {
  print("Topic: Derivative");

  double f(double x) {
    return x * x;
  }

  double x = 3;
  double h = 0.0001;
  double derivative = (f(x + h) - f(x)) / h;

  print("f(x) = x^2");
  print("Derivative at x=3 is $derivative");
}
