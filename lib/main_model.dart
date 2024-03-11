import 'package:flutter/material.dart';
import 'package:todoapp/todo.dart';


class MainModel extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodo(String task) {
    _todos.add(Todo(task: task));
    notifyListeners();
  }

  void toggleTodoCompletion(int index) {
    _todos[index].isCompleted = !_todos[index].isCompleted;
    notifyListeners();
  }

  void deleteCompletedTodos() {
    _todos.removeWhere((todo) => todo.isCompleted);
    notifyListeners();
  }
}
