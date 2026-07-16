Stream<int> evenNumbers(int max) async* {
  for (int i = 1; i <= max; i++) {
    if (i % 2 == 0) {
      yield i;
    }
  }
}

void main() async {
  await for (final num in evenNumbers(10)) {
    print('Even: $num');
  }
}
