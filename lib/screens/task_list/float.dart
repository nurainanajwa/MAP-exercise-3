// TODO Complete this file. This class should receive data from the TaskListScreen.
//
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../models/todo.dart';

class Float extends StatefulWidget {
  final Todo todoList;
  Float(this.todoList);
  
  @override
  State<Float> createState() => _FloatState();
}

class _FloatState extends State<Float> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {},
          label: Text('Update'),
          icon: Icon(Icons.check_circle),
        ),
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {},
          label: Text('Cancel'),
          icon: Icon(Icons.cancel),
        ),
      ],
    );
  }
}
