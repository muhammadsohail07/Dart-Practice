Stream<double> priceUpdates() async* {
  List<double> prices = [500, 480, 520, 495];
  for (final price in prices) {
    await Future.delayed(Duration(seconds: 1));
    yield price;
  }
}

void main() async {
  await for (final price in priceUpdates()) {
    print('New price: Rs. $price');
  }
}
