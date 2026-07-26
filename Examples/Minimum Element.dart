void main() {
  List<int> arr = [5, 9, 2, 7, 1, 3, 5, 66, 445, 23, 12, 34, 56, 78, 90];
  int min = arr[0];

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] < min) {
      min = arr[i];
    }
  }

  print(min);
}
