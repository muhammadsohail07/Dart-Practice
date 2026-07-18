extension IntExtension on int {
  bool isEven() {
    return this % 2 == 0;
  }
}

void main() {
  int number = 8;
  print(number.isEven()); // true
}
