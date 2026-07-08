enum OrderStatus { pending, shipped, delivered, cancelled }

void main() {
  OrderStatus myOrder = OrderStatus.shipped;

  print(myOrder);
  print(myOrder.name);

  switch (myOrder) {
    case OrderStatus.pending:
      print("Order is pending");
      break;
    case OrderStatus.shipped:
      print("Order has been shipped");
      break;
    case OrderStatus.delivered:
      print("Order delivered");
      break;
    case OrderStatus.cancelled:
      print("Order was cancelled");
      break;
  }
}
