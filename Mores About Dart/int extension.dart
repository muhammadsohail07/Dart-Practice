extension IntExtension on int {
  bool isEvenNumber() {
    return this % 2 == 0;
  }
}

void main() {
  int number = 8;
  print(number.isEvenNumber()); // true
}
