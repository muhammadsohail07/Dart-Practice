class Animal {
  int? id;
  String? name;
  String? color;
}

class cat extends Animal {
  String? sound;
  printDetails() {
    print("Cat id: $id");
    print("Cat name: $name");
    print("Cat color: $color");
    print("Cat sound: $sound");
  }
}

void main() {
  cat c1 = cat();
  c1.id = 1;
  c1.name = "Tom";
  c1.color = "Gray";
  c1.sound = "Meow";

  c1.printDetails();
}
