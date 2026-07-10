class laptop {
  int? id;
  String? name;
  String? ram;
  void printDetails() {
    print("Id: $id");
    print("Name: $name");
    print("Ram: $ram");
  }
}

void main() {
  laptop l1 = laptop();
  l1.id = 1;
  l1.name = "Dell";
  l1.ram = "16GB";
  l1.printDetails();
  laptop l2 = laptop();
  l2.id = 2;
  l2.name = "HP";
  l2.ram = "8GB";
  l2.printDetails();
  laptop l3 = laptop();
  l3.id = 3;
  l3.name = "Lenovo";
  l3.ram = "32GB";
  l3.printDetails();
}
