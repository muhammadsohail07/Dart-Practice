import 'dart:math';

class Student {
  String name;
  int? age;
  late String rollNumber;
  String? email;

  Student(this.name);

  void assignRoll(String roll) {
    rollNumber = roll;
  }

  void showDetails() {
    print("Name: $name");
    print("Age: ${age ?? 'Not provided'}");
    print("Roll Number: $rollNumber");
    print("Email: ${email ?? 'No email set'}");
  }
}

int? getRandomMarks() {
  var rand = Random();
  return rand.nextBool() ? rand.nextInt(100) : null;
}

String? findStudentById(int id) {
  Map<int, String> students = {1: "Ali", 2: "Sara", 3: "Zain"};
  return students[id];
}

void printLength(Object value) {
  if (value is String) {
    print("Length of value: ${value.length}");
  } else {
    print("Value is not a String, cannot get length");
  }
}

void main() {
  Student s1 = Student("Sohail");
  s1.assignRoll("BSCS-101");
  s1.age = null;
  s1.showDetails();

  print("---");

  int marks = getRandomMarks() ?? 0;
  print("Marks: $marks");

  print("---");

  String? name = findStudentById(2);
  print(name?.toUpperCase() ?? "Student not found");

  String? notFound = findStudentById(10);
  print(notFound?.toUpperCase() ?? "Student not found");

  print("---");

  int? score;
  score ??= 50;
  print("Score after ??=: $score");
  score ??= 90;
  print("Score after second ??= (unchanged): $score");

  print("---");

  Object dynamicValue = "Dart";
  printLength(dynamicValue);

  Object numberValue = 42;
  printLength(numberValue);

  print("---");

  String? confirmedName = "Muhammad";
  int nameLength = confirmedName!.length;
  print("Confirmed name length: $nameLength");
}
