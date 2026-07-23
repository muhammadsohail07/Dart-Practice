void main() {
  double price = 99.5;
  print(price);

  int qty = 3;
  double total = price * qty;
  print("Total: $total");

  List<int> nums = [5, 10, 15, 20];
  print(nums);

  int biggest = nums[0];
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] > biggest) {
      biggest = nums[i];
    }
  }
  print("Biggest: $biggest");

  int count = 0;
  while (count < 5) {
    print("Count is $count");
    count++;
  }

  var day = "Monday";
  switch (day) {
    case "Monday":
      print("School day");
      break;
    case "Sunday":
      print("Holiday");
      break;
    default:
      print("Normal day");
  }
}
