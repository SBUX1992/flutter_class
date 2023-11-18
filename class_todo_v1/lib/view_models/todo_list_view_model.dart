import '../models/todo_item.dart';

class TodoListViewModel {
  List<TodoItem> _items = [TodoItem(title: "view 만들기", isDone: true)];

  // getter
  List<TodoItem> get items => _items;

  void addItem(String title) {
    _items.add(
      TodoItem(title: title, isDone: false),
    );
  }

  // 넘겨 받은 Todo 아이템 객체에 isDone 변수 값 변경하기
  void toggleItem(TodoItem todo){
    todo.isDone = !todo.isDone;
  }

}
