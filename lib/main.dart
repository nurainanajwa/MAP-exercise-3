// TODO Fill in the following information
//

//? MOBILE APPLICATION PROGRAMMING
//? Exercise 3: Navigation and Routing

// Date: 12 December 2021
// Member 1's Name: Nuraina Najwa binti Mohd Rauzi   Section: 02  Location: Gombak, Selangor (i.e. where are you currently located)
// Member 2's Name: Nur Ainaa Najihah Binti Azizan    Section: 02   Location: Sungai Petani, Kedah
// Log the time(s) your pair programming sessions
//  Date         Time (From)   To             Duration (in minutes)
//  12/12/2021    12:39 a.m   2.03a.m          1hour 44 minutes
//  _________    ___________   ___________    ________
//  _________    ___________   ___________    ________

import 'package:flutter/material.dart';
import 'models/mock_todos.dart';
import 'screens/todo_list/todo_list_screen.dart';
// import 'screens/task_list/task_list_screen.dart'; //? Later you want to remove this line

void main() => runApp(
      MaterialApp(
        title: 'MAP Exercise 3',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: TodoListScreen(myTodoList),
        // home: TaskListScreen(), //? uncomment this out to preview the second screen. Later, you want to remove this line
      ),
    );
