class Box<T> {
  T value;
  Box(this.value);

  void display() {
    print('Box contains: $value');
  }
}

void main() {
  Box<int> intBox = Box<int>(42);
  Box<String> strBox = Box<String>('Hello');

  intBox.display();
  strBox.display();
}
