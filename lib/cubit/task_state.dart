import '../models/task_model.dart';

class TaskState {
  final List<Task> tasks;

  TaskState({required this.tasks});

  TaskState copyWith({List<Task>? tasks}) {
    return TaskState(tasks: tasks ?? this.tasks);
  }
}