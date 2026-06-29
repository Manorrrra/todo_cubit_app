import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/task_model.dart';
import 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskState(tasks: []));

  void addTask(String title) {
    final newTask = Task(title: title);
    final updatedList = List<Task>.from(state.tasks)..add(newTask);
    emit(state.copyWith(tasks: updatedList));
  }

  void deleteTask(int index) {
    final updatedList = List<Task>.from(state.tasks)..removeAt(index);
    emit(state.copyWith(tasks: updatedList));
  }

  void toggleComplete(int index) {
    final updatedList = List<Task>.from(state.tasks);
    updatedList[index].isCompleted = !updatedList[index].isCompleted;
    emit(state.copyWith(tasks: updatedList));
  }
}