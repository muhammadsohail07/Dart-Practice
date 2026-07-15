Future<String> fetchA() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data A";
}

Future<String> fetchB() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data B";
}

void main() async {
  var results = await Future.wait([fetchA(), fetchB()]);
  print(results);
}
