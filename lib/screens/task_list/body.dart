// TODO Complete this file. This class should receive data from the TaskListScreen. The UI structure has been provided.
//

import 'package:exercise2/models/task.dart';
import 'package:flutter/material.dart';
import '../../models/todo.dart';

class Body extends StatefulWidget {
  final Todo todoList;
  Body(this.todoList);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var change = new List(20);
  bool signal = false;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.todoList.tasks.length,
      itemBuilder: (context, index) => ListTile(
        title: widget.todoList.tasks[index].completed == false
            ? Text(widget.todoList.tasks[index].title)
            : Text(widget.todoList.tasks[index].title,
                style: TextStyle(decoration: TextDecoration.lineThrough)),
        onTap: () => setState(() {
          widget.todoList.tasks[index] = Task(
              title: widget.todoList.tasks[index].title,
              completed: !widget.todoList.tasks[index].completed);
          change[index] = true;
          signal = true;
        }),
        onLongPress: () => setState(() {
          widget.todoList.tasks.removeAt(index);
        }),
      ),
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
    );
  }
}
