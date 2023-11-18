import 'package:constraint_v1/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            // 주의!! SingleChildScrollView는 단 하나의 자식만을 가질 수 있다.
            child: Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.redAccent,
                ),
                Container(
                  height: 200,
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 300,
                  color: Colors.blueAccent,
                ),
                Container(
                  height: 400,
                  color: Colors.amber,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
