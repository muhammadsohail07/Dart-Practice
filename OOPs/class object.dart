class details {
  //class name
  String? name; // property of class
  int? age;
  void display() {
    // menthod or function of class
    print("Name: $name");
    print("Age: $age");
  }
}

void main() {
  details details1 = details(); // object of class
  details1.age = 22;
  details1.name = "Sohail";
  details1.display();
  details details2 = details(); // another object of a class
  details2.age = 23;
  details2.name = "Faizan";
  details2.display();
}
