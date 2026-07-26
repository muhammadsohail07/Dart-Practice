void main() {
  List<int> arr = [5, 9, 2, 7, 1, 3, 5, 66, 445, 23, 12, 34, 56, 78, 90];
  int max = arr[0];

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > max) {
      max = arr[i];
    }
  }

  print(max);
}
