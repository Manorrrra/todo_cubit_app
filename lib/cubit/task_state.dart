import '../models/task_model.dart';

// State بتحتوي على قايمة الـ tasks الحالية
class TaskState {
  final List<Task> tasks;

  TaskState({required this.tasks});

  // بنعمل نسخة جديدة من الـ state بدل ما نعدل على القديمة
  TaskState copyWith({List<Task>? tasks}) {
    return TaskState(tasks: tasks ?? this.tasks);
  }
}