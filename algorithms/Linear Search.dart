void main() {
  List<int> arr = [10, 20, 30, 40, 50];
  int key = 30;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == key) {
      print("Found at index $i");
      return;
    }
  }

  print("Not Found");
}
