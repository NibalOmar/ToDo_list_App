import 'package:flutter/material.dart';
import 'package:registration_page/models/task.dart';

//Methods

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Go Chooping'),
  ];

  void addTask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}