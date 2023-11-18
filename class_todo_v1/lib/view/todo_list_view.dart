import 'package:flutter/material.dart';

import '../view_models/todo_list_view_model.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  // view는 viewModel만 바라보면 된다.
  final TodoListViewModel listViewModel = TodoListViewModel();

  // 사용자의 입력을 관리하기 위한 텍스트 컨트롤러
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _textEditingController,
          decoration: InputDecoration(
            hintText: "Enter todo item...",
            suffixIcon: IconButton(
              onPressed: () {
                // 추후 로직 추가
                setState(() {
                  listViewModel.addItem(_textEditingController.text);
                });
                _textEditingController.clear();
              },
              icon: Icon(Icons.add),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: listViewModel.items.length,
            itemBuilder: (context, index) {
              var item = listViewModel.items[index];
              return ListTile(
                title: Text(item.title),
                trailing: Checkbox(
                  value: item.isDone,
                  onChanged: (value) {
                    setState(() {
                      listViewModel.toggleItem(item);
                    });
                    // 추후 로직 추가
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
