void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> reversedNumbers = [];
  for (int i = numbers.length - 1; i >= 0; i--) {
    reversedNumbers.add(numbers[i]);
  }

  print(reversedNumbers);
}
