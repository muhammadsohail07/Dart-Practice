class Queue {
  List<int> items = [];

  void enqueue(int value) => items.add(value);
  int dequeue() => items.removeAt(0);
  bool isEmpty() => items.isEmpty;
}

void main() {
  Queue queue = Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  print("Dequeue: ${queue.dequeue()}");
  print("Queue now: ${queue.items}");
}
