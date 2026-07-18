void main() {
  String name = "sohail";
  print(name.capitalize());
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
