class Task {
  final String id;
  final String title;
  final String description;
  final TaskStatus status;

  Task(
      {required this.id,
      required this.title,
      required this.description,
      required this.status});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        status: TaskStatus.values[json['status']]);
  }
}

typedef Tasks = List<Task>;

enum TaskStatus { todo, done }
