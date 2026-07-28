import 'dart:io';

class Task {
  String title;
  bool isDone;

  Task(this.title, {this.isDone = false});

  @override
  String toString() {
    String status = isDone ? "[x]" : "[ ]";
    return "$status $title";
  }
}

class ToDoList {
  final List<Task> _tasks = [];

  void addTask(String title) {
    _tasks.add(Task(title));
    print("✅ Task added: \"$title\"");
  }

  void removeTask(int index) {
    if (index < 0 || index >= _tasks.length) {
      print("❌ Invalid task number.");
      return;
    }
    final removed = _tasks.removeAt(index);
    print("🗑️ Task removed: \"${removed.title}\"");
  }

  void markDone(int index) {
    if (index < 0 || index >= _tasks.length) {
      print("❌ Invalid task number.");
      return;
    }
    _tasks[index].isDone = true;
    print("☑️ Marked as done: \"${_tasks[index].title}\"");
  }

  void viewTasks() {
    if (_tasks.isEmpty) {
      print("📭 No tasks yet. Add one!");
      return;
    }
    print("\n📋 Your Tasks:");
    for (int i = 0; i < _tasks.length; i++) {
      print("${i + 1}. ${_tasks[i]}");
    }
  }
}

void main() {
  final toDoList = ToDoList();
  bool running = true;

  print("=== 📝 To-Do App ===");

  while (running) {
    print("""
--------------------------
1. Add Task
2. Remove Task
3. Mark Task as Done
4. View Tasks
5. Exit
--------------------------
Choose an option: """);

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter task title: ");
        String? title = stdin.readLineSync();
        if (title != null && title.trim().isNotEmpty) {
          toDoList.addTask(title.trim());
        } else {
          print("❌ Task title cannot be empty.");
        }
        break;

      case '2':
        toDoList.viewTasks();
        stdout.write("Enter task number to remove: ");
        String? input = stdin.readLineSync();
        int? index = int.tryParse(input ?? '');
        if (index != null) {
          toDoList.removeTask(index - 1);
        } else {
          print("❌ Please enter a valid number.");
        }
        break;

      case '3':
        toDoList.viewTasks();
        stdout.write("Enter task number to mark as done: ");
        String? input = stdin.readLineSync();
        int? index = int.tryParse(input ?? '');
        if (index != null) {
          toDoList.markDone(index - 1);
        } else {
          print("❌ Please enter a valid number.");
        }
        break;

      case '4':
        toDoList.viewTasks();
        break;

      case '5':
        running = false;
        print("👋 Exiting To-Do App. Goodbye!");
        break;

      default:
        print("❌ Invalid option. Please choose 1-5.");
    }
  }
}
