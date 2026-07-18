extension IntExtension3 on int {
  int reverseDigits() {
    int num = this;
    int reversed = 0;
    while (num > 0) {
      reversed = reversed * 10 + num % 10;
      num = num ~/ 10;
    }
    return reversed;
  }
}

void main() {
  int number = 1234;
  print(number.reverseDigits()); // 4321
}
