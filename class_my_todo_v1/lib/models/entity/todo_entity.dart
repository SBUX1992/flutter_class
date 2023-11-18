class TodoEntity {
  int id;
  String title;
  String userId;
  bool completed;

  TodoEntity(
      {required this.id,
        required this.title,
        required this.userId,
        required this.completed});

  @override
  String toString() {
    return 'TodoEntity{id: $id, title: $title, userId: $userId, completed: $completed}';
  }
}