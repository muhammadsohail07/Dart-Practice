enum Status { pending, active, completed, cancelled }

String getStatusMessage(Status status) {
  switch (status) {
    case Status.pending:
      return 'Waiting to start';
    case Status.active:
      return 'In progress';
    case Status.completed:
      return 'Done';
    case Status.cancelled:
      return 'Cancelled';
  }
}

void main() {
  print(getStatusMessage(Status.active));
  print(getStatusMessage(Status.completed));
}
