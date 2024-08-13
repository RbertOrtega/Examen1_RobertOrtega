import 'package:flutter/material.dart';
import '../widgets/task_list_item.dart';

class TaskListScreen extends StatelessWidget {
  final List<String> tasks = ['Tarea 1', 'Tarea 2', 'Tarea 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskListItem(
            taskName: tasks[index],
            dueDate: 'Jan 16',
          );
        },
      ),
    );
  }
}
