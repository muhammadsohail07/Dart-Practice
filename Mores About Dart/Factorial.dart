extension IntExtension4 on int {
  int factorial() {
    int result = 1;
    for (int i = 1; i <= this; i++) {
      result *= i;
    }
    return result;
  }
}

void main() {
  int number = 5;
  print(number.factorial()); // 120
}
