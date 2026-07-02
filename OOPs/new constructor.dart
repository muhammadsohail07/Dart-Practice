class Car {
  String? name;
  String? color;
  double? price;

  Car(this.name, this.color, this.price);

  Car.named(this.name, this.color);

  void display() {
    print(name);
    print(color);
    print(price);
  }
}

void main() {
  Car car1 = Car("Civic", "Black", 5500000);
  car1.display();

  Car car2 = Car.named("Corolla", "White");
  car2.display();
}
