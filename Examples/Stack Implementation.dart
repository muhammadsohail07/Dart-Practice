class Stack {
  List<int> items = [];

  void push(int value) => items.add(value);
  int pop() => items.removeLast();
  int peek() => items.last;
  bool isEmpty() => items.isEmpty;
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  print("Peek: ${stack.peek()}");
  print("Pop: ${stack.pop()}");
  print("Stack now: ${stack.items}");
}
