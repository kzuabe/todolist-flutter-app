import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist_flutter_app/models/task.dart';
import 'package:todolist_flutter_app/services/api/task.dart';

final tasksFetchProvider = FutureProvider((ref) {
  final taskRepository = ref.watch(taskRepositoryProvider);
  return taskRepository.fetchTasks();
});

final todoListControllerProvider = Provider(((ref) {
  final taskRepository = ref.watch(taskRepositoryProvider);
  return TodoListController(ref: ref, taskRepository: taskRepository);
}));

class TodoListController {
  final ProviderRef ref;
  final TaskRepository taskRepository;

  TodoListController({required this.ref, required this.taskRepository});

  toggleTaskStatus(Task task) async {
    TaskStatus newStatus =
        task.status == TaskStatus.todo ? TaskStatus.done : TaskStatus.todo;
    await taskRepository.updateTask(task.copyWith(status: newStatus));
    var _ = ref.refresh(tasksFetchProvider);
  }
}
