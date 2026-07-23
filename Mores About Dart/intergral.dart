void main() {
  print("Topic: Integral");

  double f(double x) {
    return x * x;
  }

  double a = 0;
  double b = 2;
  int n = 1000;
  double h = (b - a) / n;
  double sum = 0;

  for (int i = 0; i < n; i++) {
    double x = a + i * h;
    sum += f(x) * h;
  }

  print("f(x) = x^2");
  print("Integral from 0 to 2 is $sum");
}
