import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist_flutter_app/features/todolist/todolist.dart';
import 'package:todolist_flutter_app/providers/auth.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firebaseAuth = ref.watch(firebaseAuthProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: <Widget>[
          TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () async {
                await firebaseAuth.signOut();
              },
              child: const Text('ログアウト'))
        ],
      ),
      body: const TodoListView(),
    );
  }
}
