class Task {
  final String title;
  final bool isCompleted;

  Task(this.title, {this.isCompleted = false});

  // Método para copiar el Task con alguna modificación
  Task copyWith({String? title, bool? isCompleted}) {
    return Task(
      title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}

class TaskListState {
  final List<Task> tasks;

  TaskListState(this.tasks);

  TaskListState copyWith({List<Task>? tasks}) {
    return TaskListState(tasks ?? this.tasks);
  }
}
