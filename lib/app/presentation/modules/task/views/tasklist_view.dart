
import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/modules/task/controller/task_list_controller.dart';
import 'package:provider/provider.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // heredar del mixins
    final taskListController = Provider.of<TaskListController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestión de Tareas'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: taskListController.state.tasks.length,
              itemBuilder: (context, index) {
                final task = taskListController.state.tasks[index];
                return ListTile(
                  title: Text(
                    task.title,
                    style: TextStyle(
                      decoration: task.isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  leading: Checkbox(
                    value: task.isCompleted,
                    onChanged: (_) {
                      taskListController.toggleTaskCompletion(index);
                    },
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      taskListController.removeTask(index);
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(labelText: 'Nueva tarea'),
                    onSubmitted: (value) {
                      if (value.isNotEmpty) {
                        taskListController.addTask(value);
                      }
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    final textController = TextEditingController();
                    if (textController.text.isNotEmpty) {
                      taskListController.addTask(textController.text);
                      textController.clear();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
