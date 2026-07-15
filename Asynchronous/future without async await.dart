Future<String> getMessage() {
  return Future.delayed(Duration(seconds: 1), () => "Loaded!");
}

void main() {
  print("Start");
  getMessage().then((value) {
    print(value);
  });
  print("End");
}
