import 'package:flutter/material.dart';
import 'package:registration_page/models/task_data.dart';
import 'package:registration_page/widgets/task_list.dart';
import 'package:provider/provider.dart';


class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
                isCheckd: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                checkboxChange: (newValue) {
                  taskData.updateTask(taskData.tasks[index]);
                },
              listStyleDelete: () {
                 taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
        );
    },

    );
  }
}
