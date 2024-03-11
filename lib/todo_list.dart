import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/main_model.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainModel>(
      builder: (context, model, child) => ListView.builder(
        itemCount: model.todos.length,
        itemBuilder: (context, index) {
          final todo = model.todos[index];
          return ListTile(
            title: Text(todo.task),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  value: todo.isCompleted,
                  onChanged: (_) {
                    model.toggleTodoCompletion(index);
                  },
                ),
                if (todo.isCompleted)
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      model.deleteCompletedTodos();
                    },
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
