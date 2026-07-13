void main() async {
  print("Fetching user data...");

  String user = await getUserData();
  print("User: $user");

  print("Fetching order status...");
  String order = await getOrderStatus();
  print("Order: $order");
}

Future<String> getUserData() {
  return Future.delayed(Duration(seconds: 2), () => "Sohail");
}

Future<String> getOrderStatus() {
  return Future.delayed(Duration(seconds: 3), () => "Shipped");
}
