class Task {
  final String id;
  final String title;
  final String description;
  final TaskStatus status;

  Task(this.id, this.title, this.description, this.status);
}

enum TaskStatus {
  todo,
  done
}
