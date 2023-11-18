import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ConstrainedBox 최소 초대 값을 명시할 때 사용하는 위젯이다.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: 70, minHeight: 70, maxWidth: 150, maxHeight: 150),
              child: Container(
                color: Colors.red,
                width: 150,
                height: 150,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
