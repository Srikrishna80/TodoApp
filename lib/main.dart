import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/main_model.dart';
import 'package:todoapp/todo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainModel(),
      child: MaterialApp(
        title: 'Todo App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TodoScreen(),
      ),
    );
  }
}
