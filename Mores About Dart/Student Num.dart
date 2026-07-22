import 'dart:io';

class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double average() {
    int total = marks.fold(0, (sum, m) => sum + m);
    return total / marks.length;
  }

  String grade() {
    double avg = average();
    if (avg >= 90) return 'A';
    if (avg >= 75) return 'B';
    if (avg >= 60) return 'C';
    return 'F';
  }

  void display() {
    print(
      '$name -> Average: ${average().toStringAsFixed(2)}, Grade: ${grade()}',
    );
  }
}

class Classroom {
  List<Student> students = [];

  void addStudent(Student s) {
    students.add(s);
  }

  void showAll() {
    for (var s in students) {
      s.display();
    }
  }

  Student topStudent() {
    students.sort((a, b) => b.average().compareTo(a.average()));
    return students.first;
  }
}

void main() {
  Classroom room = Classroom();

  room.addStudent(Student('Ali', [85, 90, 78]));
  room.addStudent(Student('Sara', [95, 92, 98]));
  room.addStudent(Student('Ahmed', [60, 55, 70]));

  room.showAll();

  print('Top Student: ${room.topStudent().name}');
}
