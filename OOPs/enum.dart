enum OrderStatus {
  pending("Order Placed", "Waiting for confirmation", 1),
  confirmed("Confirmed", "Seller confirmed your order", 2),
  packed("Packed", "Your order is packed and ready", 3),
  shipped("Shipped", "Order is on the way", 4),
  outForDelivery("Out for Delivery", "Rider is heading to your location", 5),
  delivered("Delivered", "Order delivered successfully", 6),
  cancelled("Cancelled", "Order was cancelled", 0);

  final String title;
  final String description;
  final int step;

  const OrderStatus(this.title, this.description, this.step);

  bool get isActive =>
      this != OrderStatus.cancelled && this != OrderStatus.delivered;

  OrderStatus? get nextStatus {
    switch (this) {
      case OrderStatus.pending:
        return OrderStatus.confirmed;
      case OrderStatus.confirmed:
        return OrderStatus.packed;
      case OrderStatus.packed:
        return OrderStatus.shipped;
      case OrderStatus.shipped:
        return OrderStatus.outForDelivery;
      case OrderStatus.outForDelivery:
        return OrderStatus.delivered;
      case OrderStatus.delivered:
      case OrderStatus.cancelled:
        return null;
    }
  }
}

class Order {
  final String id;
  final String productName;
  OrderStatus status;

  Order({
    required this.id,
    required this.productName,
    this.status = OrderStatus.pending,
  });

  void moveToNextStatus() {
    final next = status.nextStatus;
    if (next != null) {
      status = next;
      print("Order $id moved to: ${status.title}");
    } else {
      print("Order $id has no next status (already ${status.title}).");
    }
  }

  void cancelOrder() {
    if (status.isActive) {
      status = OrderStatus.cancelled;
      print("Order $id has been cancelled.");
    } else {
      print("Order $id cannot be cancelled (status: ${status.title}).");
    }
  }

  void printDetails() {
    print("Order ID: $id");
    print("Product: $productName");
    print("Status: ${status.title} (step ${status.step}/6)");
    print("Details: ${status.description}");
    print("Active: ${status.isActive}");
  }
}

void main() {
  Order order1 = Order(id: "GB-1001", productName: "Dry Apricots 500g");
  order1.printDetails();

  order1.moveToNextStatus();
  order1.moveToNextStatus();
  order1.moveToNextStatus();
  order1.printDetails();

  order1.moveToNextStatus();
  order1.moveToNextStatus();
  order1.printDetails();

  order1.moveToNextStatus();

  Order order2 = Order(id: "GB-1002", productName: "Cashew Nuts 1kg");
  order2.printDetails();
  order2.cancelOrder();
  order2.printDetails();
  order2.cancelOrder();

  for (var s in OrderStatus.values) {
    print("${s.step}. ${s.title} - ${s.description}");
  }

  for (var s in OrderStatus.values) {
    String color = switch (s) {
      OrderStatus.pending => "grey",
      OrderStatus.confirmed => "blue",
      OrderStatus.packed => "orange",
      OrderStatus.shipped => "purple",
      OrderStatus.outForDelivery => "amber",
      OrderStatus.delivered => "green",
      OrderStatus.cancelled => "red",
    };
    print("${s.title}: $color");
  }
}
