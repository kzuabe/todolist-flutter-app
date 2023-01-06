import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todolist_flutter_app/models/task.dart';

class TaskRepository {
  final String baseURL;

  TaskRepository({required this.baseURL});

  Future<Tasks> fetchTasks() async {
    final response = await http.get(Uri.parse('$baseURL/public/tasks'));
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<Task>((json) => Task.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch tasks');
    }
  }
}
