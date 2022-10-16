import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todolist_flutter_app/models/task.dart';
import 'package:todolist_flutter_app/services/api/task.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  late Future<Tasks> tasks;

  @override
  void initState() {
    super.initState();
    var repository = TaskRepositoryImpl("http://localhost:8080");
    tasks = repository.fetchTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: FutureBuilder<Tasks>(
        future: tasks,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: ((context, index) {
                final task = snapshot.data![index];
                return ListTile(
                  leading: Icon(task.status == TaskStatus.todo ? Icons.circle_outlined : Icons.check_circle),
                  title: Text(task.title),
                );
              }),
            );
          }
          return const CircularProgressIndicator();
        },
      )
    );
  }
}