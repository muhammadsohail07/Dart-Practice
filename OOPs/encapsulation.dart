class student {
  String _name;
  int _age;
  student(this._name, this._age); // constructor
  String get name {
    // getter string
    return _name;
  }

  int get age {
    // getter int
    return _age;
  }

  set name(String name) {
    // setter string
    _name = name;
  }

  set age(int age) {
    // setter int
    _age = age;
  }
}

void main() {
  student s1 = student("Ali", 20);
  print("Name: ${s1.name}"); // getter call
  print("Age: ${s1.age}"); // getter call
}
