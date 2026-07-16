Stream<int> countNumbers() async* {
  yield 1;
  yield 2;
  yield 3;
}

void main() async {
  await for (final num in countNumbers()) {
    print('Mila: $num');
  }
}
