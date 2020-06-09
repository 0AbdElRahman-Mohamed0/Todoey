import 'package:flutter/material.dart';
import 'my_task.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return MyTask(
              taskName: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCalback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.tasksNumber,
        );
      },
    );
  }
}
