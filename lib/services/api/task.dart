import 'dart:convert';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:todolist_flutter_app/models/task.dart';

class TaskRepository {
  final String baseURL;

  TaskRepository({required this.baseURL});

  Future<Tasks> fetchTasks() async {
    String token = await FirebaseAuth.instance.currentUser!.getIdToken();
    final response = await http.get(Uri.parse('$baseURL/v1/tasks'),
        headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<Task>((json) => Task.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch tasks');
    }
  }

  Future<Task> updateTask(Task task) async {
    String token = await FirebaseAuth.instance.currentUser!.getIdToken();
    final response = await http.put(Uri.parse('$baseURL/v1/tasks/${task.id}'),
        headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        body: jsonEncode(task));
    if (response.statusCode == 200) {
      return Task.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch task');
    }
  }
}
