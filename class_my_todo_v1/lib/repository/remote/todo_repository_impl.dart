import 'package:class_my_todo_v1/models/dto/todo_dto.dart';
import 'package:class_my_todo_v1/models/entity/todo_entity.dart';
import 'package:class_my_todo_v1/repository/remote/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  @override
  Future<int> createTodo(TodoDto todoDto) {
    // TODO: implement createTodo
    throw UnimplementedError();
  }

  @override
  void deleteTodoById(int todoId) {
    // TODO: implement deleteTodoById
  }

  @override
  Future<TodoEntity> findByIdTodo(int todoId) {
    // TODO: implement findByIdTodo
    throw UnimplementedError();
  }

  @override
  Future<List<TodoEntity>> todoList() {
    // TODO: implement todoList
    throw UnimplementedError();
  }

  @override
  Future<int> updateTodoById(TodoDto todoDto) {
    // TODO: implement updateTodoById
    throw UnimplementedError();
  }
}