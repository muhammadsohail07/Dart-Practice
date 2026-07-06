class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks: Woof Woof");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows: Meow Meow");
  }
}

class Cow extends Animal {
  @override
  void makeSound() {
    print("Cow moos: Moo Moo");
  }
}

void main() {
  List<Animal> animals = [Dog(), Cat(), Cow()];

  for (var animal in animals) {
    animal.makeSound();
  }
}
