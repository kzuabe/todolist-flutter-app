import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todolist_flutter_app/models/task.dart';

abstract class TaskRepository {
  Future<Tasks> fetchTasks();
}

class TaskRepositoryImpl implements TaskRepository {
  final String _baseURL;

  TaskRepositoryImpl(this._baseURL);

  @override
  Future<Tasks> fetchTasks() async {
    final response = await http.get(Uri.parse('$_baseURL/public/tasks'));
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<Task>((json) => Task.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch tasks');
    }
  }
}
