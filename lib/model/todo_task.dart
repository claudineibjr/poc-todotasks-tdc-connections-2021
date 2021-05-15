import 'package:flutter/material.dart';
import 'package:poc_todotasks_team/model/User.dart';

class TodoTask {
  final int id;
  final User responsable;
  final DateTime creationDate;
  final DateTime expectedFinishDate;
  final DateTime finishDate;
  final List<String> tasksToDo;

  TodoTask({
    @required this.id,
    this.responsable,
    @required this.creationDate,
    this.expectedFinishDate,
    this.finishDate,
    @required this.tasksToDo,
  });
}
