extension ListExtension on List {
  int sum() {
    int total = 0;
    for (var item in this) {
      total += item as int;
    }
    return total;
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4];
  print(numbers.sum());
}
