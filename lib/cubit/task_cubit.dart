import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/task_model.dart';
import 'task_state.dart';

// Cubit بتتحكم في كل العمليات على الـ tasks
class TaskCubit extends Cubit<TaskState> {
  // نبدأ بقايمة فاضية
  TaskCubit() : super(TaskState(tasks: []));

  // إضافة task جديدة
  void addTask(String title) {
    final newTask = Task(title: title);
    final updatedList = List<Task>.from(state.tasks)..add(newTask);
    emit(state.copyWith(tasks: updatedList)); // نبعت الـ state الجديدة
  }

  // حذف task بالـ index بتاعها
  void deleteTask(int index) {
    final updatedList = List<Task>.from(state.tasks)..removeAt(index);
    emit(state.copyWith(tasks: updatedList));
  }

  // تغيير حالة الـ task من مكتملة لغير مكتملة والعكس
  void toggleComplete(int index) {
    final updatedList = List<Task>.from(state.tasks);
    updatedList[index].isCompleted = !updatedList[index].isCompleted;
    emit(state.copyWith(tasks: updatedList));
  }
}