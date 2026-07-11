class House {
  int? id;
  String? name;
  String? price;
  House(this.id, this.name, this.price);
  void printDetails() {
    print("House id: $id");
    print("House name: $name");
    print("House price: $price");
  }
}

void main() {
  House h1 = House(1, "Villa", "1000000");
  House h2 = House(2, "Bungalow", "2000000");
  House h3 = House(3, "Apartment", "3000000");
  List<House> houses = [h1, h2, h3];
  for (var house in houses) {
    house.printDetails();
  }
}
