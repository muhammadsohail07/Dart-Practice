// Q21: String and List Practice - Multiple Concepts Combined

void main() {
  // ---------- Section 1: Basic Variables ----------
  String studentName = "Sohail";
  int age = 22;
  double cgpa = 3.45;
  bool isGraduating = true;

  print("---- Student Info ----");
  print("Name: $studentName");
  print("Age: $age");
  print("CGPA: $cgpa");
  print("Graduating Soon: $isGraduating");

  // ---------- Section 2: String Methods ----------
  String course = "  Bachelor of Computer Science  ";
  print("\n---- String Methods ----");
  print("Original: '$course'");
  print("Trimmed: '${course.trim()}'");
  print("Uppercase: ${course.toUpperCase()}");
  print("Lowercase: ${course.toLowerCase()}");
  print("Length: ${course.trim().length}");
  print("Contains 'Computer': ${course.contains('Computer')}");
  print("Replace 'Bachelor' with 'Master': ${course.replaceAll('Bachelor', 'Master')}");

  // ---------- Section 3: List Operations ----------
  List<String> subjects = [
    "Data Science",
    "Compiler Construction",
    "Parallel Computing",
    "Advanced Programming",
    "FYP"
  ];

  print("\n---- Subjects List ----");
  print("All Subjects: $subjects");
  print("Total Subjects: ${subjects.length}");
  print("First Subject: ${subjects.first}");
  print("Last Subject: ${subjects.last}");

  subjects.forEach((subject) {
    print("- $subject");
  });

  // ---------- Section 4: List Modification ----------
  subjects.add("Final Defense");
  subjects.remove("Parallel Computing");
  print("\nUpdated Subjects: $subjects");

  // ---------- Section 5: Sorting ----------
  List<int> marks = [78, 92, 65, 88, 45, 99, 70];
  marks.sort();
  print("\n---- Marks (Sorted Ascending) ----");
  print(marks);

  marks.sort((a, b) => b.compareTo(a));
  print("Marks (Sorted Descending): $marks");

  // ---------- Section 6: Loops ----------
  print("\n---- For Loop: Multiplication Table of 5 ----");
  for (int i = 1; i <= 10; i++) {
    print("5 x $i = ${5 * i}");
  }

  // ---------- Section 7: While Loop ----------
  print("\n---- While Loop: Countdown ----");
  int count = 5;
  while (count > 0) {
    print("Countdown: $count");
    count--;
  }
  print("Liftoff!");

  // ---------- Section 8: Conditional Logic ----------
  print("\n---- Grade Calculator ----");
  for (int mark in marks) {
    String grade;
    if (mark >= 90) {
      grade = "A+";
    } else if (mark >= 80) {
      grade = "A";
    } else if (mark >= 70) {
      grade = "B";
    } else if (mark >= 60) {
      grade = "C";
    } else {
      grade = "F";
    }
    print("Marks: $mark -> Grade: $grade");
  }

  // ---------- Section 9: Functions ----------
  print("\n---- Function: Average Calculator ----");
  double average = calculateAverage(marks);
  print("Average Marks: ${average.toStringAsFixed(2)}");

  // ---------- Section 10: Map Usage ----------
  Map<String, dynamic> studentProfile = {
    "name": studentName,
    "age": age,
    "cgpa": cgpa,
    "subjects": subjects,
  };

  print("\n---- Student Profile (Map) ----");
  studentProfile.forEach((key, value) {
    print("$key: $value");
  });

  // ---------- Section 11: Simple Class Usage ----------
  Student s1 = Student("Ali", 21, "Data Science");
  Student s2 = Student("Faizan", 23, "FYP");

  print("\n---- Student Objects ----");
  s1.displayInfo();
  s2.displayInfo();
}

// Function to calculate average of a list
double calculateAverage(List<int> numbers) {
  int sum = 0;
  for (int n in numbers) {
    sum += n;
  }
  return sum / numbers.length;
}

// Simple class for OOP practice
class Student {
  String name;
  int age;
  String favoriteSubject;

  Student(this.name, this.age, this.favoriteSubject);

  void displayInfo() {
    print("Student: $name | Age: $age | Favorite Subject: $favoriteSubject");
  }
}
