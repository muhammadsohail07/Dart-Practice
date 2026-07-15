Future<String> step1() async {
  await Future.delayed(Duration(seconds: 1));
  return "Step 1 done";
}

Future<String> step2() async {
  await Future.delayed(Duration(seconds: 1));
  return "Step 2 done";
}

void main() async {
  print(await step1());
  print(await step2());
}
