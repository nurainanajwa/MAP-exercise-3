// TODO Define the model class Todo here. The attributes are given. Complete the rest.

import 'task.dart';

class Todo {
    String title;
    List<Task>tasks;

    Todo({this.title, this.tasks});
    Todo.copy(Todo from) : this(title: from.title, tasks:[...from.tasks]);

    int totalTasks(){
        return tasks.length;
    }

    int taskSCompleteness() {
        int totalComplete = 0;
        for (var task in tasks){
            if (task.completed){
                totalComplete++;
            }
        }
    return ((totalComplete/tasks.length)*100).round();
    }
}
