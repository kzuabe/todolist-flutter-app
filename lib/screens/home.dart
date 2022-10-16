
import 'package:flutter/material.dart';
import 'package:todolist_flutter_app/models/task.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Task> tasks = [
      Task("1", "タスク1", "タスク詳細1", TaskStatus.todo),
      Task("2", "タスク2", "タスク詳細2", TaskStatus.todo),
      Task("3", "タスク3", "タスク詳細3", TaskStatus.done)
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            for (int i = 0; i < 3; i++)
              Text(tasks[i].title)
          ],
        ),
      ),
    );
  }
}
