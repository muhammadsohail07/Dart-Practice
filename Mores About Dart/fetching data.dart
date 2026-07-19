Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data Loaded';
}

void main() async {
  print('Fetching...');
  String result = await fetchData();
  print(result);
}
