void main() {
  List<String> fruits = ["Apple", "Banana", "Mango", "Banana", "Orange"];
  print(fruits);
  fruits.add("Grapes");
  fruits.remove("Banana");
  print(fruits);
  print(fruits.length);
  print(fruits.contains("Mango"));
  print(fruits[0]);
  fruits.sort();
  print(fruits);
  fruits.forEach((item) {
    print(item);
  });

  Set<String> uniqueFruits = {"Apple", "Banana", "Mango", "Banana", "Orange"};
  print(uniqueFruits);
  uniqueFruits.add("Kiwi");
  uniqueFruits.add("Apple");
  print(uniqueFruits);
  print(uniqueFruits.length);
  print(uniqueFruits.contains("Mango"));
  uniqueFruits.remove("Kiwi");
  print(uniqueFruits);

  Map<String, dynamic> student = {
    "name": "Sohail",
    "age": 22,
    "course": "BSCS",
    "cgpa": 3.5,
  };
  print(student);
  print(student["name"]);
  print(student["age"]);
  student["city"] = "Islamabad";
  print(student);
  student.remove("cgpa");
  print(student);
  print(student.keys);
  print(student.values);
  print(student.containsKey("course"));
  student.forEach((key, value) {
    print("$key : $value");
  });

  Map<String, List<String>> groupSubjects = {
    "Sohail": ["Data Science", "FYP"],
    "Faizan": ["Compiler Construction", "FYP"],
    "Sanaullah": ["PDC", "FYP"],
  };
  print(groupSubjects);
  groupSubjects.forEach((member, subjects) {
    print("$member -> $subjects");
  });

  List<Map<String, dynamic>> students = [
    {"name": "Ali", "age": 21},
    {"name": "Faizan", "age": 23},
    {"name": "Sanaullah", "age": 22},
  ];
  print(students);
  for (var s in students) {
    print("${s['name']} is ${s['age']} years old");
  }

  Set<int> numbers1 = {1, 2, 3, 4, 5};
  Set<int> numbers2 = {4, 5, 6, 7, 8};
  print(numbers1.union(numbers2));
  print(numbers1.intersection(numbers2));
  print(numbers1.difference(numbers2));
}
