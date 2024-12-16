import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isCheckd;
  final String taskTitle;
  final void Function(bool?) checkboxChange;
  final void Function() listStyleDelete;

  TaskTile({
    required this.isCheckd,
    required this.taskTitle,
    required this.checkboxChange,
    required this.listStyleDelete,

  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
      style: TextStyle(
          decoration: isCheckd ?
          TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
      activeColor: Colors.green,
    value: isCheckd,
    onChanged: checkboxChange,

      ),
      onLongPress: listStyleDelete ,
    );
  }
}


