
import 'package:flutter/material.dart';
import 'package:todolist_flutter_app/features/todolist/todolist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const TodoListView(),
    );
  }
}
