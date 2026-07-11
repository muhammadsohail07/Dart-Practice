class Camera {
  int? _id;
  String? _brand;
  String? _color;
  double? _price;

  set id(int id) {
    _id = id;
  }

  set brand(String brand) {
    _brand = brand;
  }

  set color(String color) {
    _color = color;
  }

  set price(double price) {
    _price = price;
  }

  int? get id => _id;

  String? get brand => _brand;

  String? get color => _color;

  double? get price => _price;
}

void main() {
  Camera c1 = Camera();
  c1.id = 1;
  c1.brand = "Canon";
  c1.color = "Black";
  c1.price = 50000;

  Camera c2 = Camera();
  c2.id = 2;
  c2.brand = "Nikon";
  c2.color = "Silver";
  c2.price = 65000;

  Camera c3 = Camera();
  c3.id = 3;
  c3.brand = "Sony";
  c3.color = "Gray";
  c3.price = 80000;

  print("Camera 1");
  print("Id: ${c1.id}");
  print("Brand: ${c1.brand}");
  print("Color: ${c1.color}");
  print("Price: ${c1.price}");

  print("\nCamera 2");
  print("Id: ${c2.id}");
  print("Brand: ${c2.brand}");
  print("Color: ${c2.color}");
  print("Price: ${c2.price}");

  print("\nCamera 3");
  print("Id: ${c3.id}");
  print("Brand: ${c3.brand}");
  print("Color: ${c3.color}");
  print("Price: ${c3.price}");
}
