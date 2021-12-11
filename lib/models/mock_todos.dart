// TODO  Create some mock data about todo list as well as mock data of task list for each todo item.

import 'todo.dart';
import 'task.dart';

//final myTodoList = <Todo>[];

List<Todo> myTodoList = [
  Todo(title: "MAP Project", tasks:[
    Task(
      title: "Deliverable #1: Project proposal and design",
      completed: true,
    ),

    Task(
      title: "Deliverable #2: Prototype 1",
      completed: false,
    ),

    Task(
      title: "Deliverable #3: Prototype 2",
      completed: false,
    ),

    Task(
      title: "Deliverable #4: Backend",
      completed: false,
    ),

    Task(
      title: "Deliverable #5: Release version",
      completed: false,
    ),
  ]),

  Todo(title: "Preparing for online learning", tasks:[
    Task(
      title: "Make sure coverage internet",
      completed: true,
    ),
    Task(
      title: "Download software",
      completed: true,
    ),
    Task(
      title: "Look time management",
      completed: true,
    ),
    Task(
      title: "Focus and keep hydrated",
      completed: true,
    )
  ]),

  Todo(title: "Things to this weekend", tasks:[
    Task(
      title: "House chores",
      completed: true,
    ),
    Task(
      title: "Complete assignments",
      completed: true,
    ),
    Task(
      title: "Go for a walk",
      completed: true,
    ),
  ])

];
