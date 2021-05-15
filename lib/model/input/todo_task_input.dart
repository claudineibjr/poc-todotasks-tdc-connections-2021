import 'package:flutter/material.dart';
import 'package:poc_todotasks_team/model/todo_task.dart';

class TodoTaskInput {
  final DateTime? expectedFinishDate;
  final List<String> tasksToDo;

  TodoTaskInput({
    this.expectedFinishDate,
    required this.tasksToDo,
  });

  factory TodoTaskInput.fromTodoTaskFactory(TodoTask todoTask) {
    return TodoTaskInput(
      expectedFinishDate: todoTask.expectedFinishDate,
      tasksToDo: todoTask.tasksToDo,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'expectedFinishDate': expectedFinishDate?.toIso8601String() ?? null,
      'tasksToDo': List<dynamic>.from(
        tasksToDo.map(
          (taskToDo) => taskToDo,
        ),
      ),
    };
  }
}