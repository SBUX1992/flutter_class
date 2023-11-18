import 'package:class_my_todo_v1/models/dto/todo_dto.dart';
import 'package:class_my_todo_v1/models/entity/todo_entity.dart';

abstract class TodoRepository {
  Future<List<TodoEntity>> todoList();
  Future<TodoEntity> findByIdTodo(int todoId);
  Future<int> createTodo(TodoDto todoDto); // 생성
  Future<int> updateTodoById(TodoDto todoDto); // 생성
  void deleteTodoById(int todoId);
}