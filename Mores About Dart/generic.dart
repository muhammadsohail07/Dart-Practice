class Box<T> {
  T value;
  Box(this.value);

  void display() {
    print('Value: $value');
  }
}

void main() {
  Box<int> intBox = Box(10);
  Box<String> strBox = Box('Hello');
  intBox.display();
  strBox.display();
}
