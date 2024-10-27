import 'package:flutter/material.dart';
import 'package:to_do_list_app/Model/to_do_model.dart';

class TaskProvider with ChangeNotifier{

  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title) {
    if (title.isEmpty) return;
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void toggleTaskCompletion(int index) {
    _tasks[index].isCompleted = !_tasks[index].isCompleted;
    notifyListeners();
  }

}