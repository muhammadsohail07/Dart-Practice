class Customer {
  String name;
  int age;
  String phone;

  Customer(this.name, this.age, this.phone);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Phone: $phone");
  }
}

void main() {
  Customer customer = Customer("Muhammad Sohail", 22, "03001234567");
  customer.displayInfo();
}
