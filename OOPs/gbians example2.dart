void main() {
  // ===== Object banana - Vendor registration ke waqt =====
  Vendor v1 = Vendor(
    id: "v101",
    businessName: "Gilgit Organic Farms",
    ownerName: "Karim Shah",
    isApproved: false,
  );
  v1.displayVendor();

  // ===== fromMap - Supabase se vendor data fetch karke object banana =====
  Map<String, dynamic> supabaseRow = {
    "id": "v102",
    "business_name": "Hunza Fresh Fruits",
    "owner_name": "Ali Raza",
    "is_approved": true,
  };
  Vendor v2 = Vendor.fromMap(supabaseRow);
  v2.displayVendor();

  // ===== Method call - admin approval ke waqt =====
  v1.approveVendor();
  v1.displayVendor();

  // ===== toMap - Supabase update karne ke liye =====
  print(v1.toMap());
}

// ================= GBIANS Vendor MODEL =================
class Vendor {
  final String id;
  final String businessName;
  final String ownerName;
  bool isApproved; // final nahi kyunki ye change hota hai (approve/reject)

  // ---- 1) Default Constructor (Named Parameters) ----
  // Vendor registration form se data yahin aata hai
  Vendor({
    required this.id,
    required this.businessName,
    required this.ownerName,
    this.isApproved = false, // default value: naya vendor pending hota hai
  });

  // ---- 2) Named Constructor: fromMap ----
  // vendor_applications table se row aane par object banana
  factory Vendor.fromMap(Map<String, dynamic> map) {
    return Vendor(
      id: map['id'],
      businessName: map['business_name'],
      ownerName: map['owner_name'],
      isApproved: map['is_approved'] ?? false,
    );
  }

  // ================= FUNCTIONS (Methods) =================

  // Admin dashboard mai jab "Approve" button dabaya jata hai
  void approveVendor() {
    isApproved = true;
    print("$businessName ko approve kar diya gaya!");
  }

  // Admin dashboard mai jab "Reject" button dabaya jata hai
  void rejectVendor() {
    isApproved = false;
    print("$businessName ko reject kar diya gaya!");
  }

  // Object ko Map mai convert karna (Supabase update ke liye)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'business_name': businessName,
      'owner_name': ownerName,
      'is_approved': isApproved,
    };
  }

  // Display function
  void displayVendor() {
    String status = isApproved ? "Approved ✅" : "Pending ⏳";
    print("Vendor: $businessName | Owner: $ownerName | Status: $status");
  }
}
