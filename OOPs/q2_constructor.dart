class Car {
  String? name;
  String? color;
  double? price;

  Car(this.name, this.color, this.price);

  Car.named(this.name, this.color) {
    price = 0;
  }

  void display() {
    print("Name  : $name");
    print("Color : $color");
    print("Price : $price");
    print("");
  }

  void startEngine() {
    print("$name engine started");
  }

  void stopEngine() {
    print("$name engine stopped");
  }

  void showStatus() {
    print("$name is ready to drive");
  }
}

void main() {
  Car car1 = Car("Honda Civic", "Black", 5500000);

  car1.display();
  car1.startEngine();
  car1.showStatus();
  car1.stopEngine();

  Car car2 = Car.named("Toyota Corolla", "White");

  car2.display();
  car2.startEngine();
  car2.showStatus();
  car2.stopEngine();
}
