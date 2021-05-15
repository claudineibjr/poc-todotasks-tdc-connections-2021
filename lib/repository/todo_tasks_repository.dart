import 'package:poc_todotasks_team/model/input/todo_task_input.dart';
import 'package:poc_todotasks_team/utils/connection_utils.dart';

class TodoTaskRepository {
  static Future<void> createToDoTask(TodoTaskInput todoTask) async {
    if (ConnectionUtils.hasConnection) {
      await _createToDoTaskOnline(todoTask);
    } else {
      await _createToDoTaskOffline(todoTask);
    }
  }

  static Future<void> _createToDoTaskOnline(TodoTaskInput todoTask) async {
    // TODO: Do it here
  }

  static Future<void> _createToDoTaskOffline(TodoTaskInput todoTask) async {
    // TODO: Do it here
  }
}