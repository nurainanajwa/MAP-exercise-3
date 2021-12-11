// TODO Complete this file. This class should receive data from the TodoListScreen. The UI structure has been provided
//
import 'package:flutter/material.dart';
import 'package:exercise2/routes.dart';
import '../../models/todo.dart';
import '../task_list/task_list_screen.dart';

class Body extends StatefulWidget {
  final List<Todo> todoList;
  Body(this.todoList);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void _navigate(int index) async {
    Todo returnData = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (contact) => TaskListScreen(Todo.copy(widget.todoList[index])),
      ),
    );
    if (returnData != null) {
      setState(() => widget.todoList[index] = returnData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.todoList.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
        title: Text(widget.todoList[index].title),
        subtitle: Text(
            "This list has ${widget.todoList[index].totalTasks()} task(s)"),
        trailing: CircleAvatar(
          child: Text(widget.todoList[index].taskSCompleteness().toString()),
        ),
        onTap: () {
          _navigate(index);
        },
      ),
    );
  }
}
