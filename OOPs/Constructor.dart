class Customer {
  final String name;
  final int age;
  final String phone;

  const Customer(this.name, this.age, this.phone);
}

void main() {
  const Customer customer = Customer("Sohail", 22, "03001234567");

  print(customer.name);
  print(customer.age);
  print(customer.phone);
}
