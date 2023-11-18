import 'package:flutter/material.dart';

// 상태 관리로 페이지 이동 철 - IndexedStack, ButtomNavigationBar 활용
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int _index;

  @override
  void initState() {
    // 이 함수는 객체 생성시에 단 한번 호출 되는 함수
    super.initState();
    _index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("page move 1"),
          ),
          body: IndexedStack(
            index: _index,
            children: [
              PageA(),
              PageB(),
              PageC(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            // 주위!!
            // 1. 화면을 이동시킬 갯수가 맞아야 한다.
            // 2. 2 ~ 5 까지만 넣을 수 있다
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "search"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "person"),
            ],
            // 버튼 클릭 했을때 아이콘 색 바뀜
            currentIndex: _index,
            onTap: (newIndex) {
              print("newIndex : ${newIndex}");
              setState(() {
                _index = newIndex;
              });
            },
          ),
        ),
      ),
    );
  }
}

// Page A
class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[500],
      child: Center(child: Text("Page A")),
    );
  }
}

// Page B
class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[500],
      child: Center(child: Text("Page B")),
    );
  }
}

// Page C
class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent[500],
      child: Center(child: Text("Page C")),
    );
  }
}
