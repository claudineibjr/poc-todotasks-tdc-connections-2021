import 'package:poc_todotasks_team/model/User.dart';
import 'package:poc_todotasks_team/model/serializable.dart';

class TodoTask implements Serializable<TodoTask> {
  final int id;
  final User? responsable;
  final DateTime creationDate;
  final DateTime? expectedFinishDate;
  final DateTime? finishDate;
  final List<String> tasksToDo;

  TodoTask({
    required this.id,
    this.responsable,
    required this.creationDate,
    this.expectedFinishDate,
    this.finishDate,
    required this.tasksToDo,
  });

  // #region Serialization
  // #region FromJson
  factory TodoTask.fromJsonFactory(Map<String, dynamic> json) {
    User? responsable;
    if (json['responsable'] != null) {
      responsable = User.fromJsonFactory(
        json['responsable'],
      );
    }

    DateTime? expectedFinishDate;
    if (json['expectedFinishDate'] != null) {
      expectedFinishDate = DateTime.parse(
        json['expectedFinishDate'],
      );
    }

    DateTime? finishDate;
    if (json['finishDate'] != null) {
      finishDate = DateTime.parse(
        json['finishDate'],
      );
    }

    return TodoTask(
      id: json['id'],
      responsable: responsable,
      creationDate: DateTime.parse(
        json['creationDate'],
      ),
      expectedFinishDate: expectedFinishDate,
      finishDate: finishDate,
      tasksToDo: List<String>.from(
        json['tasksToDo'].map(
          (taskToDo) => taskToDo,
        ),
      ),
    );
  }

  factory TodoTask.fromRawJson(String rawJson) =>
      Serializable.serializableFromRawJson(
        rawJson,
        fromJson,
      );

  static TodoTask fromJson(Map<String, dynamic> json) =>
      TodoTask.fromJsonFactory(
        json,
      );
  // #endregion
  // #region ToJson
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'responsable': responsable?.toJson() ?? null,
      'creationDate': creationDate.toIso8601String(),
      'expectedFinishDate': expectedFinishDate?.toIso8601String() ?? null,
      'finishDate': finishDate?.toIso8601String() ?? null,
      'tasksToDo': List<dynamic>.from(
        tasksToDo.map(
          (taskToDo) => taskToDo,
        ),
      ),
    };
  }

  @override
  String toRawJson() => Serializable.serializableToRawJson(
        toJson(),
      );
  // #endregion
  // #endregion
}
