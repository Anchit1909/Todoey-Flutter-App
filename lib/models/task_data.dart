import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    //to make it private property so that it is only accessible here.
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
  }
}
