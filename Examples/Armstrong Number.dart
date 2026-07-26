void main() {
  int n = 153;
  int temp = n;
  int sum = 0;

  while (temp > 0) {
    int d = temp % 10;
    sum += d * d * d;
    temp ~/= 10;
  }

  print(sum == n ? "Armstrong" : "Not Armstrong");
}
