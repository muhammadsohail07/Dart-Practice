void main() async {
  print("Logging in...");

  try {
    String result = await loginUser();
    print("Success: $result");
  } catch (e) {
    print("Error: $e");
  }

  print("Process finished");
}

Future<String> loginUser() {
  return Future.delayed(Duration(seconds: 2), () {
    bool loginFailed = false; // isko true karke bhi try karo

    if (loginFailed) {
      throw Exception("Invalid credentials");
    }
    return "Login successful";
  });
}
