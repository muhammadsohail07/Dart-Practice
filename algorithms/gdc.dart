int gcd(int a, int b) {
  if (b == 0) return a;
  return gcd(b, a % b);
}

void main() {
  print("GCD of 48 and 18: ${gcd(48, 18)}");
}
