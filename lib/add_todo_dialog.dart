import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/main_model.dart';


class AddTodoDialog extends StatefulWidget {
  @override
  _AddTodoDialogState createState() => _AddTodoDialogState();
}

class _AddTodoDialogState extends State<AddTodoDialog> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Todo'),
      content: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Enter your todo',
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Provider.of<MainModel>(context, listen: false)
                .addTodo(_controller.text);
            Navigator.of(context).pop();
          },
          child: Text('Add'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
      ],
    );
  }
}
