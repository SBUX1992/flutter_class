import 'package:class_todo_v1/shared/theme.dart';
import 'package:class_todo_v1/view/todo_list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: initThemeData(brightness: Brightness.light),
      darkTheme: initThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,  // 앱의 설정에 따라서 변경 가능하게 처리
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Todo List"),
          ),
          body: TodoListView(),
        ),
      ),
    );
  }
}
