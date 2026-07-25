void main() {
  List<int> arr = [10, 20, 30, 40, 50];
  int key = 40;

  int low = 0;
  int high = arr.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;

    if (arr[mid] == key) {
      print("Found at index $mid");
      return;
    } else if (arr[mid] < key) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  print("Not Found");
}
