// TODO Complete this file. This class should receive data from the TodoListScreen. This class should pass data to the classes Bar, Body and Float
//
import 'package:flutter/material.dart';
import '../../models/todo.dart';
import 'float.dart';
import 'bar.dart';
import 'body.dart';

class TaskListScreen extends StatefulWidget {
  final Todo todoList;
  TaskListScreen(this.todoList);

  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(widget.todoList),
          body: Body(widget.todoList),
          floatingActionButton: Float(widget.todoList),
        ),
      ),
    );
  }
}
