Stream<int> countdown(int from) async* {
  for (int i = from; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  await for (final num in countdown(5)) {
    print(num == 0 ? 'Boooommmmmm..' : num);
  }
}
