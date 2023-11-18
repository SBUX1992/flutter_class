class TodoDto {
  String title;
  bool completed;

  TodoDto(this.title, this.completed);

  // object --> http 통신 (문자열 --> json 형식)  ---> 서버(spring, php, .net)
  // object --> 문자 (dio 라이브러리) -> Map 구조 형식을 --> 문자열 변경(JSON)

  // 반드시 toJson() 메서드를 오버라이드 해주어야 한다. 필수 !!!
  Map<String, dynamic> toJson() {
    return {'title': title, 'completed': completed};
  }

  @override
  String toString() {
    return 'TodoDto{title: $title, completed: $completed}';
  }
}