Future<String> greet() async {
  await Future.delayed(Duration(seconds: 2));
  return "Hello Sohail!";
}

void main() async {
  print("Waiting...");
  String message = await greet();
  print(message);
}
