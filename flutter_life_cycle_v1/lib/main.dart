import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  // 1. 생성자 인스턴스가 생성
  const MyApp({super.key});

  // 2. 새로운 State 객체를 생성 합니다
  @override
  State<MyApp> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyApp> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
    print("initState() 호출 - 3");
  }

  // 호출 시점은 크게 두가지
  // 1. initState() 호출 후에 바로 한번 호출 됨
  // 2. 위젯이 사용하는 데이터가 변경이 되면 이 메서드는 자동으로 호출
  // 단, BuildContext의 종속성(Theme, Locale) 이나 부모 위젯에 연관된 데이터를 의미 합니다.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies() 호출 - 4");
  }

  // 화면을 그릴 때 호출 build()는 여러 상황에서 호출될 수 있습니다.
  // 상태가 변경되어 화면을 다시 그릴때, 부모 위젯이 변경 되었을 때, 테마나, 디바이스에 화면 방향이 변경 되었을 때
  @override
  Widget build(BuildContext context) {
    print("build() 호출 - 5");
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _count++;
                print("호출 됨");
              });
            },
            child: Text(
              "반가워 ${_count}",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // 상태가 변경 될 때 마다 호출 또는 setState(호출 시)
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print("setState() 호출 - 6");
  }

  // 부모 위젯이 변경되어 현재 위젯의 설정이 변경 되어야 될 때 호출 됩니다.
  @override
  void didUpdateWidget(covariant MyApp oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget() 호출 - 7");
  }

  // State 객체가 위젯 트리에서 제거될 때 호출 됩니다.
  // 여기서는 보통 리소스 해제와 같은 작업을 추가 합니다.
  @override
  void dispose() {
    super.dispose();
  }
}
