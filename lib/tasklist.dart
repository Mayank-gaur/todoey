import 'package:flutter/material.dart';
import 'tasktile.dart';
import 'model/task.dart';
import 'tasktile.dart';

class TaskList extends StatefulWidget {
  @override
  final List<Task> tasks;

  TaskList({this.tasks});

  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            tasktitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isdone,
            checkBoxCallback: (checkboxstate) {
              setState(() {
                widget.tasks[index].toogledone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
