import 'package:poc_todotasks_team/model/input/todo_task_input.dart';
import 'package:poc_todotasks_team/model/todo_task.dart';
import 'package:poc_todotasks_team/utils/utils.dart';

class TodoTaskRepository {
  // ###################
  // ### Write #########
  // ###################
  Future<void> createToDoTask(TodoTaskInput todoTask) async {
    if (Utils.hasConnection) {
      await _createToDoTaskOnline(todoTask);
    } else {
      await _createToDoTaskOffline(todoTask);
    }
  }

  Future<void> _createToDoTaskOnline(TodoTaskInput todoTask) async {
    // - Call API to create todo item
  }

  Future<void> _createToDoTaskOffline(TodoTaskInput todoTask) async {
    // - Create locally the todo item and store it
    //    at a task list to be synchronized when online
  }

  // ##################
  // ### Read #########
  // ##################
  Future<List<TodoTask>> getAllTodoTask() async {
    if (Utils.hasConnection) {
      return await _getAllTodoTask();
    } else {
      return await _getAllTodoTasksOffline();
    }
  }

  Future<List<TodoTask>> _getAllTodoTask() async {
    // - List all offlineTodoTasks
    // - Search all todo tasks since Utils.lastTodoTaskList ?? DateTime(1900)
    // - Update Utils.lastTodoTaskList
    // - Concanate offline and online todotasks
    // - Write offline all todotasks
    // - Return all todotasks
    return <TodoTask>[];
  }

  Future<List<TodoTask>> _getAllTodoTasksOffline() async {
    // - List all offlineTodoTasks
    // - Return all offlineTodoTasks
    return <TodoTask>[];
  }
}