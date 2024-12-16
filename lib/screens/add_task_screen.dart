import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registration_page/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addtaskCallBack;
  AddTaskScreen(this.addtaskCallBack);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Add Tasks',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
          ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {
             Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
             Navigator.pop(context);
            },
            child:Text('Add'),
            style: TextButton.styleFrom(
             foregroundColor: Colors.white,
              backgroundColor: Colors.green[400],
            ),
          ),
        ],
      ),
    );
  }
}
