class Product {
  final String id;
  final String name;
  final double price;
  final String vendorId;

  // ---- 1) Default Constructor (Named Parameters ke saath) ----
  // GBIANS mai yehi sabse zyada use hota hai kyunki fields clear rehte hain
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.vendorId,
  });

  // ---- 2) Named Constructor: fromMap ----
  // Supabase se jab data aata hai (Map<String, dynamic> format mai),
  // ye constructor us Map ko Product object mai convert karta hai
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      price: (map['price'] as num).toDouble(),
      vendorId: map['vendor_id'],
    );
  }

  // Object ko wapas Map mai convert karna (Supabase insert/update ke liye)
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'price': price, 'vendor_id': vendorId};
  }

  // Print/display ke liye function
  void displayProduct() {
    print("ID: $id | Name: $name | Price: Rs.$price | Vendor: $vendorId");
  }
}
