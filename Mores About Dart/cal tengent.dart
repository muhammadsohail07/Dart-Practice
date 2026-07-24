void main() {
  print("Topic: Slope of Tangent");

  double f(double x) {
    return x * x * x;
  }

  double x = 2;
  double h = 0.0001;
  double slope = (f(x + h) - f(x)) / h;

  print("f(x) = x^3");
  print("Slope of tangent at x=2 is $slope");
}
