import '../../../../states/state_notifier.dart';
import 'state/task.dart';

class TaskListController extends StateNotifier<TaskListState> {
  //constructor
  TaskListController([TaskListState? taskListState])
      : super(
            TaskListState([])); // Estado inicial con una lista vacía de tareas

  void addTask(String title) {
    final newTask = Task(title);
    final updatedTasks = [...state.tasks, newTask];
    notifica(state.copyWith(tasks: updatedTasks));
  }

  void toggleTaskCompletion(int index) {
    final task = state.tasks[index];
    final updatedTask = task.copyWith(isCompleted: !task.isCompleted);
    final updatedTasks = [...state.tasks];
    updatedTasks[index] = updatedTask;
    notifica(state.copyWith(tasks: updatedTasks));
  }

  void removeTask(int index) {
    final updatedTasks = [...state.tasks]..removeAt(index);
    notifica(state.copyWith(tasks: updatedTasks));
  }
}
