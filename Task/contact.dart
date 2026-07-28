import 'dart:io';

void main() {
  Map<String, String> contacts = {};
  bool running = true;

  while (running) {
    print("\n1. Add Contact  2. Search  3. View All  4. Exit");
    stdout.write("Choose: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Phone: ");
        String phone = stdin.readLineSync()!;
        contacts[name] = phone;
        print("✅ Saved.");
        break;
      case '2':
        stdout.write("Search name: ");
        String search = stdin.readLineSync()!;
        print(
          contacts.containsKey(search) ? "${contacts[search]}" : "❌ Not found",
        );
        break;
      case '3':
        contacts.forEach((name, phone) => print("$name: $phone"));
        break;
      case '4':
        running = false;
        break;
    }
  }
}
